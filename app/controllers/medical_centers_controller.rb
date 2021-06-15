class MedicalCentersController < ApplicationController
  before_action :set_medical_center, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: :index
  load_and_authorize_resource


  # GET /medical_centers or /medical_centers.json
  def index
    @medical_centers = MedicalCenter.all
  end

  # GET /medical_centers/1 or /medical_centers/1.json
  def show
  end

  # GET /medical_centers/new
  def new
    @medical_center = MedicalCenter.new
  end

  # GET /medical_centers/1/edit
  def edit
  end

  # POST /medical_centers or /medical_centers.json
  def create
    @medical_center = MedicalCenter.new(medical_center_params)

    respond_to do |format|
      if @medical_center.save
        format.html { redirect_to @medical_center, notice: "Medical center was successfully created." }
        format.json { render :show, status: :created, location: @medical_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_centers/1 or /medical_centers/1.json
  def update
    respond_to do |format|
      if @medical_center.update(medical_center_params)
        format.html { redirect_to @medical_center, notice: "Medical center was successfully updated." }
        format.json { render :show, status: :ok, location: @medical_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_centers/1 or /medical_centers/1.json
  def destroy
    @medical_center.destroy
    respond_to do |format|
      format.html { redirect_to medical_centers_url, notice: "Medical center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_center
      @medical_center = MedicalCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_center_params
      params.require(:medical_center).permit(:name, :description, :address, :phone_number, :medical_center_type_id)
    end
end
