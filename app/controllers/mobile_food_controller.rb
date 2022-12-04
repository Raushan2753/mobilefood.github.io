class MobileFoodController < ApplicationController

  def name
    @response = QueryService.new(name:params[:name]).find_by_name
    render(json: @response)
  end

  def expired_permits
    @response = QueryService.new(expired_date: params[:expired_date]).expired_users
    render(json: @response)
  end

  def address
    @response = QueryService.new(address: params[:address]).by_address
    render(json: @response)
  end

  def mobilefoodnew
    k =  MobileFood.new(params.permit(:Applicant))
    if k.save
      render(json: k)
    else
      {error: 'cant create'}
    end
  end

  def nearest
    @response = QueryService.new(lat: params[:latitude], long: params[:longitude]).near_by
    render(json: @response)
  end
end
