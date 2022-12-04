class MobileFood < ApplicationRecord
  acts_as_mappable :default_units => :miles,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :Latitude,
                   :lng_column_name => :Longitude
end
