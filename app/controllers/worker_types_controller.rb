class WorkerTypesController < ApplicationController
  before_action :set_worker_type, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  load_and_authorize_resource


  # GET /worker_types or /worker_types.json
  def index
    @worker_types = WorkerType.all
  end

  # GET /worker_types/1 or /worker_types/1.json
  def show
  end

  # GET /worker_types/new
  def new
    @worker_type = WorkerType.new
  end

  # GET /worker_types/1/edit
  def edit
  end

  # POST /worker_types or /worker_types.json
  def create
    @worker_type = WorkerType.new(worker_type_params)

    respond_to do |format|
      if @worker_type.save
        format.html { redirect_to @worker_type, notice: "Worker type was successfully created." }
        format.json { render :show, status: :created, location: @worker_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @worker_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worker_types/1 or /worker_types/1.json
  def update
    respond_to do |format|
      if @worker_type.update(worker_type_params)
        format.html { redirect_to @worker_type, notice: "Worker type was successfully updated." }
        format.json { render :show, status: :ok, location: @worker_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @worker_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worker_types/1 or /worker_types/1.json
  def destroy
    @worker_type.destroy
    respond_to do |format|
      format.html { redirect_to worker_types_url, notice: "Worker type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker_type
      @worker_type = WorkerType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worker_type_params
      params.require(:worker_type).permit(:name, :description)
    end
end
