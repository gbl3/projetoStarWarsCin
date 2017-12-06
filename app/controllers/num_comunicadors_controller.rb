class NumComunicadorsController < ApplicationController
  before_action :set_num_comunicador, only: [:show, :edit, :update, :destroy]

  # GET /num_comunicadors
  # GET /num_comunicadors.json
  def index
    @num_comunicadors = NumComunicador.all
  end

  # GET /num_comunicadors/1
  # GET /num_comunicadors/1.json
  def show
  end

  # GET /num_comunicadors/new
  def new
    @num_comunicador = NumComunicador.new
  end

  # GET /num_comunicadors/1/edit
  def edit
  end

  # POST /num_comunicadors
  # POST /num_comunicadors.json
  def create
    @num_comunicador = NumComunicador.new(num_comunicador_params)

    respond_to do |format|
      if @num_comunicador.save
        format.html { redirect_to @num_comunicador, notice: 'Num comunicador was successfully created.' }
        format.json { render :show, status: :created, location: @num_comunicador }
      else
        format.html { render :new }
        format.json { render json: @num_comunicador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /num_comunicadors/1
  # PATCH/PUT /num_comunicadors/1.json
  def update
    respond_to do |format|
      if @num_comunicador.update(num_comunicador_params)
        format.html { redirect_to @num_comunicador, notice: 'Num comunicador was successfully updated.' }
        format.json { render :show, status: :ok, location: @num_comunicador }
      else
        format.html { render :edit }
        format.json { render json: @num_comunicador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /num_comunicadors/1
  # DELETE /num_comunicadors/1.json
  def destroy
    @num_comunicador.destroy
    respond_to do |format|
      format.html { redirect_to num_comunicadors_url, notice: 'Num comunicador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_num_comunicador
      @num_comunicador = NumComunicador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def num_comunicador_params
      params.require(:num_comunicador).permit(:n_comunicador, :id_usuario)
    end
end
