class GatosController < ApplicationController
  before_action :set_gato, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /gatos
  # GET /gatos.json
  def index
    @gatos = Gato.all
    respond_to do |f|
      f.html
      f.pdf{ render template: 'gatos/ficha', pdf:'Ficha Gato' }
      f.csv{ send_data @gatos.to_csv}
      f.xls # { send_data @gatos.to_csv(col_sep: "\t") }
    end
  end

  # GET /gatos/1
  # GET /gatos/1.json
  def show
    respond_to do |f|
      f.js
      f.pdf{ render template: 'gatos/ficha', pdf:'Ficha Gato' }
    end
  end

  def receta
    @gato = Gato.find(params[:gato_id])
    respond_to do |f|
      f.pdf{ render template: 'gatos/receta.pdf', pdf:"Receta Gato" }
    end
  end

  def certificado
    @gato = Gato.find(params[:gato_id])
    respond_to do |f|
      f.pdf{ render template: 'gatos/certificado.pdf', pdf:"Certificado Gato" }
    end
  end

  # GET /gatos/new
  def new
    #1.times{@gato.vacunas.build}
    #1.times{@gato.enfermedades.build}
    @gato = Gato.new
  end

  # GET /gatos/1/edit
  def edit
  end

  # POST /gatos
  # POST /gatos.json
  def create
    @gato = Gato.new(gato_params)

    respond_to do |format|
      if @gato.save
        format.html { redirect_to gatos_url, notice: 'Gato Creado.' }
        format.json { render :show, status: :created, location: @gato }
      else
        format.html { render :new }
        format.json { render json: @gato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gatos/1
  # PATCH/PUT /gatos/1.json
  def update
    respond_to do |format|
      if @gato.update(gato_params)
        format.html { redirect_to gatos_url, notice: 'Gato actualizado.' }
        format.json { render :show, status: :ok, location: @gato }
      else
        format.html { render :edit }
        format.json { render json: @gato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gatos/1
  # DELETE /gatos/1.json
  def destroy
    @gato.destroy
    respond_to do |format|
      format.html { redirect_to gatos_url, notice: 'Gato eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gato
      @gato = Gato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gato_params
      params.require(:gato).permit(:nombre, :edad, :formato_edad, :sexo, :raza, :tipo, :peso, :porte, :chip, :numero_chip, :agresividad, :color, :senas, :fecha_operacion, :comentario, :ficha_id, :propietario_es, :veterinario_id, :apto_cirujia, :apto_cirujia_text, :medico_tratante, :hora_ingreso, :tipo_cirujia, :hallazgos, :hora_alta, :complicaciones,vacunas_attributes:[:id,:nombre,:_destroy], enfermedades_attributes:[:id,:nombre,:_destroy],veterinario_atributes:[:id,:nombre,:_destroy],medicamentos_attributes:[:id,:nombre,:cantidad,:unidad,:cada,:durante,:durante_unidad,:_destroy])
    end
end
