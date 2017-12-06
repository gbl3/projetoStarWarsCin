class UsuarioDaForcasController < ApplicationController
  before_action :set_usuario_da_forca, only: [:show, :edit, :update, :destroy]

  # GET /usuario_da_forcas
  # GET /usuario_da_forcas.json
  def index
    @usuario_da_forcas = UsuarioDaForca.all
  end

  # GET /usuario_da_forcas/1
  # GET /usuario_da_forcas/1.json
  def show
  end

  # GET /usuario_da_forcas/new
  def new
    @usuario_da_forca = UsuarioDaForca.new
  end

  # GET /usuario_da_forcas/1/edit
  def edit
  end

  # POST /usuario_da_forcas
  # POST /usuario_da_forcas.json
  def create
    @usuario_da_forca = UsuarioDaForca.new(usuario_da_forca_params)

    respond_to do |format|
      if @usuario_da_forca.save
        format.html { redirect_to @usuario_da_forca, notice: 'Usuario da forca was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_da_forca }
      else
        format.html { render :new }
        format.json { render json: @usuario_da_forca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_da_forcas/1
  # PATCH/PUT /usuario_da_forcas/1.json
  def update
    respond_to do |format|
      if @usuario_da_forca.update(usuario_da_forca_params)
        format.html { redirect_to @usuario_da_forca, notice: 'Usuario da forca was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_da_forca }
      else
        format.html { render :edit }
        format.json { render json: @usuario_da_forca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_da_forcas/1
  # DELETE /usuario_da_forcas/1.json
  def destroy
    @usuario_da_forca.destroy
    respond_to do |format|
      format.html { redirect_to usuario_da_forcas_url, notice: 'Usuario da forca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_da_forca
      @usuario_da_forca = UsuarioDaForca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_da_forca_params
      params.require(:usuario_da_forca).permit(:id_usuario, :id_sabre, :planeta_origem, :nome_usuario, :data_nas)
    end
end
