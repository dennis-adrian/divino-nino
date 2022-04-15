class ContraceptiveTypesController < ApplicationController
  before_action :set_contraceptive_type, only: %i[ show edit update destroy ]

  # GET /contraceptive_types or /contraceptive_types.json
  def index
    @contraceptive_types = ContraceptiveType.all
  end

  # GET /contraceptive_types/1 or /contraceptive_types/1.json
  def show
  end

  # GET /contraceptive_types/new
  def new
    @contraceptive_type = ContraceptiveType.new
  end

  # GET /contraceptive_types/1/edit
  def edit
  end

  # POST /contraceptive_types or /contraceptive_types.json
  def create
    @contraceptive_type = ContraceptiveType.new(contraceptive_type_params)

    respond_to do |format|
      if @contraceptive_type.save
        format.html { redirect_to contraceptive_type_url(@contraceptive_type), notice: "Contraceptive type was successfully created." }
        format.json { render :show, status: :created, location: @contraceptive_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contraceptive_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contraceptive_types/1 or /contraceptive_types/1.json
  def update
    respond_to do |format|
      if @contraceptive_type.update(contraceptive_type_params)
        format.html { redirect_to contraceptive_type_url(@contraceptive_type), notice: "Contraceptive type was successfully updated." }
        format.json { render :show, status: :ok, location: @contraceptive_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contraceptive_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contraceptive_types/1 or /contraceptive_types/1.json
  def destroy
    @contraceptive_type.destroy

    respond_to do |format|
      format.html { redirect_to contraceptive_types_url, notice: "Contraceptive type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraceptive_type
      @contraceptive_type = ContraceptiveType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contraceptive_type_params
      params.require(:contraceptive_type).permit(:name, :description)
    end
end
