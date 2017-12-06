class SabreDeLuzsController < ApplicationController
  before_action :set_sabre_de_luz, only: [:show, :edit, :update, :destroy]

  # GET /sabre_de_luzs
  # GET /sabre_de_luzs.json
  def index
    @sabre_de_luzs = SabreDeLuz.all
  end

  # GET /sabre_de_luzs/1
  # GET /sabre_de_luzs/1.json
  def show
  end

  # GET /sabre_de_luzs/new
  def new
    @sabre_de_luz = SabreDeLuz.new
  end

  # GET /sabre_de_luzs/1/edit
  def edit
  end

  # POST /sabre_de_luzs
  # POST /sabre_de_luzs.json
  def create
    @sabre_de_luz = SabreDeLuz.new(sabre_de_luz_params)

    respond_to do |format|
      if @sabre_de_luz.save
        format.html { redirect_to @sabre_de_luz, notice: 'Sabre de luz was successfully created.' }
        format.json { render :show, status: :created, location: @sabre_de_luz }
      else
        format.html { render :new }
        format.json { render json: @sabre_de_luz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sabre_de_luzs/1
  # PATCH/PUT /sabre_de_luzs/1.json
  def update
    respond_to do |format|
      if @sabre_de_luz.update(sabre_de_luz_params)
        format.html { redirect_to @sabre_de_luz, notice: 'Sabre de luz was successfully updated.' }
        format.json { render :show, status: :ok, location: @sabre_de_luz }
      else
        format.html { render :edit }
        format.json { render json: @sabre_de_luz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sabre_de_luzs/1
  # DELETE /sabre_de_luzs/1.json
  def destroy
    @sabre_de_luz.destroy
    respond_to do |format|
      format.html { redirect_to sabre_de_luzs_url, notice: 'Sabre de luz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sabre_de_luz
      @sabre_de_luz = SabreDeLuz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sabre_de_luz_params
      params.require(:sabre_de_luz).permit(:id_sabre, :cristal, :local_origem, :cor, :data_criacao)
    end
end
