class EstadosDocumentosController < ApplicationController
  before_action :set_estados_documento, only: [:show, :edit, :update, :destroy]

  # GET /estados_documentos
  # GET /estados_documentos.json
  def index
    @estados_documentos = EstadosDocumento.all
  end

  # GET /estados_documentos/1
  # GET /estados_documentos/1.json
  def show
  end

  # GET /estados_documentos/new
  def new
    @estados_documento = EstadosDocumento.new
  end

  # GET /estados_documentos/1/edit
  def edit
  end

  # POST /estados_documentos
  # POST /estados_documentos.json
  def create
    @estados_documento = EstadosDocumento.new(estados_documento_params)

    respond_to do |format|
      if @estados_documento.save
        format.html { redirect_to @estados_documento, notice: 'Estados documento was successfully created.' }
        format.json { render :show, status: :created, location: @estados_documento }
      else
        format.html { render :new }
        format.json { render json: @estados_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estados_documentos/1
  # PATCH/PUT /estados_documentos/1.json
  def update
    respond_to do |format|
      if @estados_documento.update(estados_documento_params)
        format.html { redirect_to @estados_documento, notice: 'Estados documento was successfully updated.' }
        format.json { render :show, status: :ok, location: @estados_documento }
      else
        format.html { render :edit }
        format.json { render json: @estados_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estados_documentos/1
  # DELETE /estados_documentos/1.json
  def destroy
    @estados_documento.destroy
    respond_to do |format|
      format.html { redirect_to estados_documentos_url, notice: 'Estados documento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estados_documento
      @estados_documento = EstadosDocumento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estados_documento_params
      params.require(:estados_documento).permit(:descripcion)
    end
end
