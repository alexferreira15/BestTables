class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit destroy]
  skip_before_action :authenticate_user!, only: [:show]


  # def index
  #   # if params[:query].present?
  #   #   # @wigs = policy_scope(Wig).where("name ILIKE ?", "%#{params[:query]}%")
  #   #   @wigs = policy_scope(Wig).search_by_name(params[:query])
  #   # else
  #   #   @wigs = policy_scope(Wig)
  #   # end
  # end

  def show
    authorize @restaurant
  end

  # def new
  #   @wig = Wig.new
  #   authorize @wig
  # end

  # def create
  #   @wig = Wig.new(wig_params)
  #   @wig.user = current_user
  #   authorize @wig
  #   if @wig.save
  #     redirect_to wigs_path, notice: 'Wig was successfully created.'
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   authorize @wig
  #   @wig.destroy
  #   redirect_to wigs_path, status: :see_other
  # end

  # def edit
  #   authorize @wig
  # end

  # def update
  #   authorize @wig
  #   @wig = Wig.find(params[:id])
  #   @wig.update(wig_params)
  #   redirect_to wig_path(@wig)
  # end

  # private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # # Only allow a list of trusted parameters through.
  # def wig_params
  #   params.require(:wig).permit(:wig_type, :color, :name, :price, :description, :photo)
  # end
end
