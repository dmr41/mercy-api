class RantsController < ApplicationController
  
  skip_before_filter  :verify_authenticity_token
  def index
    if params[:searchvale].present?
      @rants= Rant.where("title like ? OR body like ?", "%#{ params[:searchvale] }%", "%#{ params[:searchvale] }%")
      @rants = @rants.order(:created_at)
      render json: @rants
    else
      render json: Rant.order(:created_at)
    end
  end

  def update
    @rant = Rant.find(params[:id])
    @rant.update(rant_params)
    render json: @rant
  end

  def show
    render json: Rant.find(params[:id])
  end

  def destroy
    puts "made it"
    @rant = Rant.find(params[:id])
    @rant.destroy
    head :no_content
end

  def rant_params
    params.require(:rant).permit(:body, :title, :user_id)
  end
end
