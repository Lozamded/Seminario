class GatosController < ApplicationController
  before_action :set_gato, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /gatos
  # GET /gatos.json
  def index
    @gatos = Gato.all
  end

  # GET /gatos/1
  # GET /gatos/1.json
  def show
    respond_to do |f|
      f.js
    end
  end

  # GET /gatos/new
  def new
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
        format.html { redirect_to gatos_url, notice: 'Gato was successfully created.' }
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
        format.html { redirect_to gatos_url, notice: 'Gato was successfully updated.' }
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
      format.html { redirect_to gatos_url, notice: 'Gato was successfully destroyed.' }
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
      params.require(:gato).permit(:nombre, :edad, :sexo, :raza, :tipo, :peso, :porte, :chip, :numero_chip, :agresividad, :color, :senas, :comentario, :ficha_id)
    end
end
