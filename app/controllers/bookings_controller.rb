class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(current_user.bookings)
    @booking = Booking.new
    @categories = Category.where(user: @current_user)
  end

  def new
    @booking = Booking.new
    authorize @booking
    @category = set_category
  end

  def show
    set_booking
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @category = set_category
    @booking.user = current_user
    @booking.category = @category
    if @booking.save
      redirect_to category_bookings_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    # if @booking.update(booking_params)
    #   redirect_to category_booking_path
    # else
    #   render :edit
    # end
  end

  private
  # strong params!
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_category
    Category.find(params[:category_id])
  end
end
