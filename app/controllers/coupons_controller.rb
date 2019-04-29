class CouponsController < ActionController::Base
  before_action :get_coupon, only [:show, :edit, :update]
  
  def index 
    @coupons = Coupon.all 
  end 
  
  def create 
  end
  
end
