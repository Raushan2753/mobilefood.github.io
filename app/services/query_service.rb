class QueryService

  attr_accessor :name, :expired_date, :address, :lat, :long

  def initialize(name: nil , expired_date: nil, address: nil, lat:nil, long:nil)
    @name = name
    @expired_date = expired_date
    @address = address
    @lat = lat
    @long = long
  end

  def find_by_name
    MobileFood.where(Applicant: name)
  end

  def expired_users
    MobileFood.where('ExpirationDate <?', expired_date.to_date )
  end

  def by_address
    MobileFood.where(Address: address )
  end

  def near_by
    MobileFood.by_distance(:origin => [lat, long]).limit(1)
  end
end