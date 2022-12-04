class AddNewFeilds < ActiveRecord::Migration[7.0]
  def change
    add_column :mobile_foods, :locationid, :integer
    add_column :mobile_foods, :cnn, :integer
    add_column :mobile_foods, :X, :integer
    add_column :mobile_foods, :Y, :integer
    add_column :mobile_foods, :Latitude, :integer
    add_column :mobile_foods, :Longitude, :integer
    add_column :mobile_foods, :LocationDescription, :string
    add_column :mobile_foods, :Address, :string
    add_column :mobile_foods, :blocklot, :string
    add_column :mobile_foods, :block, :string
    add_column :mobile_foods, :lot, :string
    add_column :mobile_foods, :permit, :string
    add_column :mobile_foods, :status, :string
    add_column :mobile_foods, :FoodItems, :string
    add_column :mobile_foods, :Schedule, :date
    add_column :mobile_foods, :NOISent, :date
    add_column :mobile_foods, :Approved, :date
    add_column :mobile_foods, :Received, :date
    add_column :mobile_foods, :PriorPermit, :boolean
    add_column :mobile_foods, :ExpirationDate, :date
  end
end
