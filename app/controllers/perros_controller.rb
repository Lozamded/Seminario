class PerrosController < ApplicationController
  before_action :set_perro, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /perros
  # GET /perros.json
  def index
    @perros = Perro.all
  end

  # GET /perros/1
  # GET /perros/1.json
  def show
    respond_to do |f|
      f.js
    end
  end

  # GET /perros/new
  def new
    #1.times{@perro.vacunas.build}
    #1.times{@perro.enfermedades.build}
    @perro = Perro.new
  end

  # GET /perros/1/edit
  def edit
  end

  # POST /perros
  # POST /perros.json
  def create
    @perro = Perro.new(perro_params)

    respond_to do |format|
      if @perro.save
        format.html { redirect_to perros_url, notice: 'Perro Creado.' }
        format.json { render :show, status: :created, location: @perro }
      else
        format.html { render :new }
        format.json { render json: @perro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perros/1
  # PATCH/PUT /perros/1.json
  def update
    respond_to do |format|
      if @perro.update(perro_params)
        format.html { redirect_to perros_url, notice: 'Perro actualizado.' }
        format.json { render :show, status: :ok, location: @perro }
      else
        format.html { render :edit }
        format.json { render json: @perro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perros/1
  # DELETE /perros/1.json
  def destroy
    @perro.destroy
    respond_to do |format|
      format.html { redirect_to perros_url, notice: 'Perro eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perro
      @perro = Perro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perro_params
      params.require(:perro).permit(:nombre, :edad, :sexo, :raza, :tipo, :peso, :porte, :chip, :numero_chip, :agresividad, :color, :senas, :comentario, :ficha_id, :veterinario_id, :apto_cirujia, :apto_cirujia_text, :medico_tratante, :hora_ingreso, :tipo_cirujia, :hallazgos, :hora_alta, :complicaciones, vacunas_attributes:[:id,:nombre,:_destroy], enfermedades_attributes:[:id,:nombre,:_destroy])
    end
end
