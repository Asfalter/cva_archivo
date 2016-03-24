class TiposBloquesController < ApplicationController
  before_action :set_tipos_bloque, only: [:show, :edit, :update, :destroy]

  # GET /tipos_bloques
  # GET /tipos_bloques.json
  def index
    @tipos_bloques = TiposBloque.all
  end

  # GET /tipos_bloques/1
  # GET /tipos_bloques/1.json
  def show
  end

  # GET /tipos_bloques/new
  def new
    @tipos_bloque = TiposBloque.new
  end

  # GET /tipos_bloques/1/edit
  def edit
  end

  # POST /tipos_bloques
  # POST /tipos_bloques.json
  def create
    @tipos_bloque = TiposBloque.new(tipos_bloque_params)

    respond_to do |format|
      if @tipos_bloque.save
        format.html { redirect_to @tipos_bloque, notice: 'Tipos bloque was successfully created.' }
        format.json { render :show, status: :created, location: @tipos_bloque }
      else
        format.html { render :new }
        format.json { render json: @tipos_bloque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_bloques/1
  # PATCH/PUT /tipos_bloques/1.json
  def update
    respond_to do |format|
      if @tipos_bloque.update(tipos_bloque_params)
        format.html { redirect_to @tipos_bloque, notice: 'Tipos bloque was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipos_bloque }
      else
        format.html { render :edit }
        format.json { render json: @tipos_bloque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_bloques/1
  # DELETE /tipos_bloques/1.json
  def destroy
    @tipos_bloque.destroy
    respond_to do |format|
      format.html { redirect_to tipos_bloques_url, notice: 'Tipos bloque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_bloque
      @tipos_bloque = TiposBloque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_bloque_params
      params.require(:tipos_bloque).permit(:descripcion)
    end
end
