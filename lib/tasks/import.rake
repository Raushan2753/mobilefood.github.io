require 'roo'
namespace :import do
  desc "Import data from spreadsheet"
  task data: :environment do
    puts 'Importing Data' # add this line
    data = Roo::Spreadsheet.open('lib/data.xlsx') # open spreadsheet
    headers = data.row(2) # get header row
    data.each_with_index do |row, idx|
      next if idx == 0 # skip header
      next if idx == 1
      # create hash from headers and cells
      user_data = Hash[[headers, row].transpose]
      # if User.exists?(email: user_data['email'])
      #   puts "User with email '#{user_data['email']}' already exists"
      #   next
      # end
      
      user = MobileFood.new(user_data)
      puts "Saving Mobile food  #{user.Applicant}"
      user.save!
    end 
  end
end
