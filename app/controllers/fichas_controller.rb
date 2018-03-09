class FichasController < ApplicationController
  before_action :set_ficha, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /fichas
  # GET /fichas.json
  def index
    @fichas = Ficha.all
    respond_to do |f|
      f.html
      f.pdf{ render template: 'fichas/consentimiento.pdf', pdf:'Consentimiento' }
      f.csv{ send_data @fichas.to_csv}
      f.xls
    end
  end

  # GET /fichas/1
  # GET /fichas/1.json
  def show
    respond_to do |f|
      f.js
      f.pdf{ render template: 'fichas/ficha_propietario', pdf:"Propietario"}
    end
  end

  def consentimiento
    @ficha = Ficha.find(params[:ficha_id])
    respond_to do |f|
      #f.pdf{ render template: 'fichas/ficha_propietario', pdf:"Propietario"}
      f.pdf{ render template: 'fichas/consentimiento.pdf', pdf:"Consentimiento" }
    end
  end

  # GET /fichas/new
  def new
    @ficha = Ficha.new
    1.times{@ficha.perros.build}
    1.times{@ficha.gatos.build}
  end

  # GET /fichas/1/edit
  def edit
  end

  # POST /fichas
  # POST /fichas.json
  def create
    @ficha = Ficha.new(ficha_params)

    respond_to do |format|
      if @ficha.save
        format.html { redirect_to fichas_url, notice: 'Ficha was successfully created.' }
        format.json { render :show, status: :created, location: @ficha }
      else
        format.html { render :new }
        format.json { render json: @ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fichas/1
  # PATCH/PUT /fichas/1.json
  def update
    respond_to do |format|
      if @ficha.update(ficha_params)
        format.html { redirect_to fichas_url, notice: 'Ficha was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha }
      else
        format.html { render :edit }
        format.json { render json: @ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fichas/1
  # DELETE /fichas/1.json
  def destroy
    @ficha.destroy
    respond_to do |format|
      format.html { redirect_to fichas_url, notice: 'Ficha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha
      @ficha = Ficha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_params
      params.require(:ficha).permit(:nombre, :rut, :edad, :sexo, :tipo, :telefono, :direccion, :comuna, :email, :medio_encuentro, :medio_encuentro_text, perros_attributes:[:id,:nombre,:edad,:sexo,:raza,:tipo,:peso,:porte,:chip,:numero_chip,:agresividad,:color,:senas,:comentario,:_destroy,vacunas_attributes:[:id,:nombre,:_destroy], enfermedades_attributes:[:id,:nombre,:_destroy]],gatos_attributes:[:id,:nombre,:edad,:sexo,:raza,:tipo,:peso,:porte,:chip,:numero_chip,:agresividad,:color,:senas,:comentario,:_destroy,vacunas_attributes:[:id,:nombre,:_destroy], enfermedades_attributes:[:id,:nombre,:_destroy]])
    end
end
