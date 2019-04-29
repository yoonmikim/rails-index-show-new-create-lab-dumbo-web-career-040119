class CouponsController < ActionController::Base
  before_action :get_coupon, only [:show, :edit, :update]
  
  def index 
    @coupons = Coupon.all 
  end 

  def new 
    @coupon = Coupon.new 
  end
  
  
  def create 
    @coupon = Coupon.create(coupon_params)
  end
  
  def edit 
    
  end
  
  private 
  
  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
  
  def get_coupon
    @coupon = Coupon.find(params[:id])
  end
  
end
