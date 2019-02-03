class BookingDetailsController < ApplicationController
  before_action :set_booking_details, only: [:show, :edit, :update, :destroy]

  # GET /booking_details
  # GET /booking_details.json
  def index
    @booking_details = BookingDetail.all
  end

  # GET /booking_details/1
  # GET /booking_details/1.json
  def show
  end

  # GET /booking_details/new
  def new
    @booking_details = BookingDetail.new
  end

  # GET /booking_details/1/edit
  def edit
  end

  # POST /booking_details
  # POST /booking_details.json
  def create
    @booking_details = BookingDetail.new(booking_details_params)

    respond_to do |format|
      if @booking_details.save
        format.html { redirect_to @booking_details, notice: 'Booking Details was successfully created.' }
        format.json { render :show, status: :created, location: @booking_details }
      else
        format.html { render :new }
        format.json { render json: @booking_details.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_details/1
  # PATCH/PUT /booking_details/1.json
  def update
    respond_to do |format|
      if @booking_details.update(booking_details_params)
        format.html { redirect_to @booking_details, notice: 'Booking Details was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking_details }
      else
        format.html { render :edit }
        format.json { render json: @booking_details.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_details/1
  # DELETE /booking_details/1.json
  def destroy
    @booking_details.destroy
    respond_to do |format|
      format.html { redirect_to booking_details_url, notice: 'Booking Details was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_details
      @booking_details = BookingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_details_params
      params.require(:booking_detail).permit(:timestamps, :date_from, :date_to, :rent_per_day)
    end
end
