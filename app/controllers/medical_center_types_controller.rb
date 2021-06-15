class MedicalCenterTypesController < ApplicationController
  before_action :set_medical_center_type, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /medical_center_types or /medical_center_types.json
  def index
    @medical_center_types = MedicalCenterType.all
  end

  # GET /medical_center_types/1 or /medical_center_types/1.json
  def show
  end

  # GET /medical_center_types/new
  def new
    @medical_center_type = MedicalCenterType.new
  end

  # GET /medical_center_types/1/edit
  def edit
  end

  # POST /medical_center_types or /medical_center_types.json
  def create
    @medical_center_type = MedicalCenterType.new(medical_center_type_params)

    respond_to do |format|
      if @medical_center_type.save
        format.html { redirect_to @medical_center_type, notice: "Medical center type was successfully created." }
        format.json { render :show, status: :created, location: @medical_center_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical_center_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_center_types/1 or /medical_center_types/1.json
  def update
    respond_to do |format|
      if @medical_center_type.update(medical_center_type_params)
        format.html { redirect_to @medical_center_type, notice: "Medical center type was successfully updated." }
        format.json { render :show, status: :ok, location: @medical_center_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical_center_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_center_types/1 or /medical_center_types/1.json
  def destroy
    @medical_center_type.destroy
    respond_to do |format|
      format.html { redirect_to medical_center_types_url, notice: "Medical center type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_center_type
      @medical_center_type = MedicalCenterType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_center_type_params
      params.require(:medical_center_type).permit(:name, :description)
    end
end
