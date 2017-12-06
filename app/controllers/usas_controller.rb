class UsasController < ApplicationController
  before_action :set_usa, only: [:show, :edit, :update, :destroy]

  # GET /usas
  # GET /usas.json
  def index
    @usas = Usa.all
  end

  # GET /usas/1
  # GET /usas/1.json
  def show
  end

  # GET /usas/new
  def new
    @usa = Usa.new
  end

  # GET /usas/1/edit
  def edit
  end

  # POST /usas
  # POST /usas.json
  def create
    @usa = Usa.new(usa_params)

    respond_to do |format|
      if @usa.save
        format.html { redirect_to @usa, notice: 'Usa was successfully created.' }
        format.json { render :show, status: :created, location: @usa }
      else
        format.html { render :new }
        format.json { render json: @usa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usas/1
  # PATCH/PUT /usas/1.json
  def update
    respond_to do |format|
      if @usa.update(usa_params)
        format.html { redirect_to @usa, notice: 'Usa was successfully updated.' }
        format.json { render :show, status: :ok, location: @usa }
      else
        format.html { render :edit }
        format.json { render json: @usa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usas/1
  # DELETE /usas/1.json
  def destroy
    @usa.destroy
    respond_to do |format|
      format.html { redirect_to usas_url, notice: 'Usa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usa
      @usa = Usa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usa_params
      params.require(:usa).permit(:id_usuario, :id_fabricacao)
    end
end
