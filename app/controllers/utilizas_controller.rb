class UtilizasController < ApplicationController
  before_action :set_utiliza, only: [:show, :edit, :update, :destroy]

  # GET /utilizas
  # GET /utilizas.json
  def index
    @utilizas = Utiliza.all
  end

  # GET /utilizas/1
  # GET /utilizas/1.json
  def show
  end

  # GET /utilizas/new
  def new
    @utiliza = Utiliza.new
  end

  # GET /utilizas/1/edit
  def edit
  end

  # POST /utilizas
  # POST /utilizas.json
  def create
    @utiliza = Utiliza.new(utiliza_params)

    respond_to do |format|
      if @utiliza.save
        format.html { redirect_to @utiliza, notice: 'Utiliza was successfully created.' }
        format.json { render :show, status: :created, location: @utiliza }
      else
        format.html { render :new }
        format.json { render json: @utiliza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utilizas/1
  # PATCH/PUT /utilizas/1.json
  def update
    respond_to do |format|
      if @utiliza.update(utiliza_params)
        format.html { redirect_to @utiliza, notice: 'Utiliza was successfully updated.' }
        format.json { render :show, status: :ok, location: @utiliza }
      else
        format.html { render :edit }
        format.json { render json: @utiliza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilizas/1
  # DELETE /utilizas/1.json
  def destroy
    @utiliza.destroy
    respond_to do |format|
      format.html { redirect_to utilizas_url, notice: 'Utiliza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utiliza
      @utiliza = Utiliza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utiliza_params
      params.require(:utiliza).permit(:id_usuario, :id_fabricacao)
    end
end
