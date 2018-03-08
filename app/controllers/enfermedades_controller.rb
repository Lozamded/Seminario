class EnfermedadesController < ApplicationController
  before_action :set_enfermedade, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /enfermedades
  # GET /enfermedades.json
  def index
    @enfermedades = Enfermedade.all
  end

  # GET /enfermedades/1
  # GET /enfermedades/1.json
  def show
  end

  # GET /enfermedades/new
  def new
    @enfermedade = Enfermedade.new
  end

  # GET /enfermedades/1/edit
  def edit
  end

  # POST /enfermedades
  # POST /enfermedades.json
  def create
    @enfermedade = Enfermedade.new(enfermedade_params)

    respond_to do |format|
      if @enfermedade.save
        format.html { redirect_to @enfermedade, notice: 'Enfermedade was successfully created.' }
        format.json { render :show, status: :created, location: @enfermedade }
      else
        format.html { render :new }
        format.json { render json: @enfermedade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfermedades/1
  # PATCH/PUT /enfermedades/1.json
  def update
    respond_to do |format|
      if @enfermedade.update(enfermedade_params)
        format.html { redirect_to @enfermedade, notice: 'Enfermedade was successfully updated.' }
        format.json { render :show, status: :ok, location: @enfermedade }
      else
        format.html { render :edit }
        format.json { render json: @enfermedade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermedades/1
  # DELETE /enfermedades/1.json
  def destroy
    @enfermedade.destroy
    respond_to do |format|
      format.html { redirect_to enfermedades_url, notice: 'Enfermedade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfermedade
      @enfermedade = Enfermedade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfermedade_params
      params.require(:enfermedade).permit(:nombre)
    end
end
