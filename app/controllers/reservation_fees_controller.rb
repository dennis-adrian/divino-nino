class ReservationFeesController < ApplicationController
  before_action :set_reservation_fee, only: %i[ show edit update destroy ]

  # GET /reservation_fees or /reservation_fees.json
  def index
    @reservation_fees = ReservationFee.all
  end

  # GET /reservation_fees/1 or /reservation_fees/1.json
  def show
  end

  # GET /reservation_fees/new
  def new
    @reservation_fee = ReservationFee.new
  end

  # GET /reservation_fees/1/edit
  def edit
  end

  # POST /reservation_fees or /reservation_fees.json
  def create
    @reservation_fee = ReservationFee.new(reservation_fee_params)

    respond_to do |format|
      if @reservation_fee.save
        format.html { redirect_to reservation_fee_url(@reservation_fee), notice: "Reservation fee was successfully created." }
        format.json { render :show, status: :created, location: @reservation_fee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservation_fees/1 or /reservation_fees/1.json
  def update
    respond_to do |format|
      if @reservation_fee.update(reservation_fee_params)
        format.html { redirect_to reservation_fee_url(@reservation_fee), notice: "Reservation fee was successfully updated." }
        format.json { render :show, status: :ok, location: @reservation_fee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservation_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation_fees/1 or /reservation_fees/1.json
  def destroy
    @reservation_fee.destroy

    respond_to do |format|
      format.html { redirect_to reservation_fees_url, notice: "Reservation fee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation_fee
      @reservation_fee = ReservationFee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_fee_params
      params.require(:reservation_fee).permit(:type, :cost, :description)
    end
end
