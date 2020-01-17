class AirwaybillsController < ApplicationController

  def index
    @awbs = Awb.all
  end

  def new
    @awb = Awb.new
  end

  def create
    Awb.create(awb_params)
  end

  private
  def awb_params
    params.require(Awb).permit(:prefix, :suffix, :org, :dst, :pcs, :wgt, :vol, :description)
  end

end
