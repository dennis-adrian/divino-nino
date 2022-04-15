class ContraceptivesController < ApplicationController
  before_action :set_contraceptive, only: %i[ show edit update destroy ]

  # GET /contraceptives or /contraceptives.json
  def index
    @contraceptives = Contraceptive.all
  end

  # GET /contraceptives/1 or /contraceptives/1.json
  def show
  end

  # GET /contraceptives/new
  def new
    @contraceptive = Contraceptive.new
  end

  # GET /contraceptives/1/edit
  def edit
  end

  # POST /contraceptives or /contraceptives.json
  def create
    @contraceptive = Contraceptive.new(contraceptive_params)

    respond_to do |format|
      if @contraceptive.save
        format.html { redirect_to contraceptive_url(@contraceptive), notice: "Contraceptive was successfully created." }
        format.json { render :show, status: :created, location: @contraceptive }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contraceptive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contraceptives/1 or /contraceptives/1.json
  def update
    respond_to do |format|
      if @contraceptive.update(contraceptive_params)
        format.html { redirect_to contraceptive_url(@contraceptive), notice: "Contraceptive was successfully updated." }
        format.json { render :show, status: :ok, location: @contraceptive }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contraceptive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contraceptives/1 or /contraceptives/1.json
  def destroy
    @contraceptive.destroy

    respond_to do |format|
      format.html { redirect_to contraceptives_url, notice: "Contraceptive was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraceptive
      @contraceptive = Contraceptive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contraceptive_params
      params.require(:contraceptive).permit(:observations, :contraceptive_type_id, :patient_id)
    end
end
