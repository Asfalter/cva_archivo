class EstadosBloquesController < ApplicationController
  before_action :set_estados_bloque, only: [:show, :edit, :update, :destroy]

  # GET /estados_bloques
  # GET /estados_bloques.json
  def index
    @estados_bloques = EstadosBloque.all
  end

  # GET /estados_bloques/1
  # GET /estados_bloques/1.json
  def show
  end

  # GET /estados_bloques/new
  def new
    @estados_bloque = EstadosBloque.new
  end

  # GET /estados_bloques/1/edit
  def edit
  end

  # POST /estados_bloques
  # POST /estados_bloques.json
  def create
    @estados_bloque = EstadosBloque.new(estados_bloque_params)

    respond_to do |format|
      if @estados_bloque.save
        format.html { redirect_to @estados_bloque, notice: 'Estados bloque was successfully created.' }
        format.json { render :show, status: :created, location: @estados_bloque }
      else
        format.html { render :new }
        format.json { render json: @estados_bloque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estados_bloques/1
  # PATCH/PUT /estados_bloques/1.json
  def update
    respond_to do |format|
      if @estados_bloque.update(estados_bloque_params)
        format.html { redirect_to @estados_bloque, notice: 'Estados bloque was successfully updated.' }
        format.json { render :show, status: :ok, location: @estados_bloque }
      else
        format.html { render :edit }
        format.json { render json: @estados_bloque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estados_bloques/1
  # DELETE /estados_bloques/1.json
  def destroy
    @estados_bloque.destroy
    respond_to do |format|
      format.html { redirect_to estados_bloques_url, notice: 'Estados bloque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estados_bloque
      @estados_bloque = EstadosBloque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estados_bloque_params
      params.require(:estados_bloque).permit(:descripcion)
    end
end
