class TestaETestadosController < ApplicationController
  before_action :set_testa_e_testado, only: [:show, :edit, :update, :destroy]

  # GET /testa_e_testados
  # GET /testa_e_testados.json
  def index
    @testa_e_testados = TestaETestado.all
  end

  # GET /testa_e_testados/1
  # GET /testa_e_testados/1.json
  def show
  end

  # GET /testa_e_testados/new
  def new
    @testa_e_testado = TestaETestado.new
  end

  # GET /testa_e_testados/1/edit
  def edit
  end

  # POST /testa_e_testados
  # POST /testa_e_testados.json
  def create
    @testa_e_testado = TestaETestado.new(testa_e_testado_params)

    respond_to do |format|
      if @testa_e_testado.save
        format.html { redirect_to @testa_e_testado, notice: 'Testa e testado was successfully created.' }
        format.json { render :show, status: :created, location: @testa_e_testado }
      else
        format.html { render :new }
        format.json { render json: @testa_e_testado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testa_e_testados/1
  # PATCH/PUT /testa_e_testados/1.json
  def update
    respond_to do |format|
      if @testa_e_testado.update(testa_e_testado_params)
        format.html { redirect_to @testa_e_testado, notice: 'Testa e testado was successfully updated.' }
        format.json { render :show, status: :ok, location: @testa_e_testado }
      else
        format.html { render :edit }
        format.json { render json: @testa_e_testado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testa_e_testados/1
  # DELETE /testa_e_testados/1.json
  def destroy
    @testa_e_testado.destroy
    respond_to do |format|
      format.html { redirect_to testa_e_testados_url, notice: 'Testa e testado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testa_e_testado
      @testa_e_testado = TestaETestado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testa_e_testado_params
      params.require(:testa_e_testado).permit(:id_usuario_j, :id_templo, :cod_padawan, :resultado, :data_teste)
    end
end
