class VeterinariosController < ApplicationController
  before_action :set_veterinario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /veterinarios
  # GET /veterinarios.json
  def index
    @veterinarios = Veterinario.all
    respond_to do |f|
      f.html
      f.pdf{ render template: 'veterinarios/ficha', pdf:'Ficha Veterinario' }
      f.csv{ send_data @veterinarios.to_csv}
      f.xls
    end
  end

  # GET /veterinarios/1
  # GET /veterinarios/1.json
  def show
    respond_to do |f|
      f.js
      f.pdf{ render template: 'veterinarios/ficha', pdf:'Ficha Veterinario' }
    end
  end

  # GET /veterinarios/new
  def new
    @veterinario = Veterinario.new
  end

  # GET /veterinarios/1/edit
  def edit
  end

  # POST /veterinarios
  # POST /veterinarios.json
  def create
    @veterinario = Veterinario.new(veterinario_params)

    respond_to do |format|
      if @veterinario.save
        format.html { redirect_to veterinarios_url, notice: 'Veterinario was successfully created.' }
        format.json { render :show, status: :created, location: @veterinario }
      else
        format.html { render :new }
        format.json { render json: @veterinario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veterinarios/1
  # PATCH/PUT /veterinarios/1.json
  def update
    respond_to do |format|
      if @veterinario.update(veterinario_params)
        format.html { redirect_to veterinarios_url, notice: 'Veterinario was successfully updated.' }
        format.json { render :show, status: :ok, location: @veterinario }
      else
        format.html { render :edit }
        format.json { render json: @veterinario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veterinarios/1
  # DELETE /veterinarios/1.json
  def destroy
    @veterinario.destroy
    respond_to do |format|
      format.html { redirect_to veterinarios_url, notice: 'Veterinario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinario
      @veterinario = Veterinario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veterinario_params
      params.require(:veterinario).permit(:nombre, :sexo, :fecha_nacimiento, :email , :telefono, :casa_estudios, :tipo_estudios, :rut, :tipo, :especialidad)
    end
end
