class CreateMobileFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :mobile_foods do |t|
      t.string :Applicant
      t.text :FacilityType
    end
  end
end
