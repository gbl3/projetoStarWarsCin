class CriaController < ApplicationController
  before_action :set_crium, only: [:show, :edit, :update, :destroy]

  # GET /cria
  # GET /cria.json
  def index
    @cria = Crium.all
  end

  # GET /cria/1
  # GET /cria/1.json
  def show
  end

  # GET /cria/new
  def new
    @crium = Crium.new
  end

  # GET /cria/1/edit
  def edit
  end

  # POST /cria
  # POST /cria.json
  def create
    @crium = Crium.new(crium_params)

    respond_to do |format|
      if @crium.save
        format.html { redirect_to @crium, notice: 'Crium was successfully created.' }
        format.json { render :show, status: :created, location: @crium }
      else
        format.html { render :new }
        format.json { render json: @crium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cria/1
  # PATCH/PUT /cria/1.json
  def update
    respond_to do |format|
      if @crium.update(crium_params)
        format.html { redirect_to @crium, notice: 'Crium was successfully updated.' }
        format.json { render :show, status: :ok, location: @crium }
      else
        format.html { render :edit }
        format.json { render json: @crium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cria/1
  # DELETE /cria/1.json
  def destroy
    @crium.destroy
    respond_to do |format|
      format.html { redirect_to cria_url, notice: 'Crium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crium
      @crium = Crium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crium_params
      params.require(:crium).permit(:id_usuario, :id_sabre)
    end
end
