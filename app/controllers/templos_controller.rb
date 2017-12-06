class TemplosController < ApplicationController
  before_action :set_templo, only: [:show, :edit, :update, :destroy]

  # GET /templos
  # GET /templos.json
  def index
    @templos = Templo.all
  end

  # GET /templos/1
  # GET /templos/1.json
  def show
  end

  # GET /templos/new
  def new
    @templo = Templo.new
  end

  # GET /templos/1/edit
  def edit
  end

  # POST /templos
  # POST /templos.json
  def create
    @templo = Templo.new(templo_params)

    respond_to do |format|
      if @templo.save
        format.html { redirect_to @templo, notice: 'Templo was successfully created.' }
        format.json { render :show, status: :created, location: @templo }
      else
        format.html { render :new }
        format.json { render json: @templo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templos/1
  # PATCH/PUT /templos/1.json
  def update
    respond_to do |format|
      if @templo.update(templo_params)
        format.html { redirect_to @templo, notice: 'Templo was successfully updated.' }
        format.json { render :show, status: :ok, location: @templo }
      else
        format.html { render :edit }
        format.json { render json: @templo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templos/1
  # DELETE /templos/1.json
  def destroy
    @templo.destroy
    respond_to do |format|
      format.html { redirect_to templos_url, notice: 'Templo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_templo
      @templo = Templo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def templo_params
      params.require(:templo).permit(:id_templo, :nome_templo, :planeta)
    end
end
