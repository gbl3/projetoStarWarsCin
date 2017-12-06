class SithsController < ApplicationController
  before_action :set_sith, only: [:show, :edit, :update, :destroy]

  # GET /siths
  # GET /siths.json
  def index
    @siths = Sith.all
  end

  # GET /siths/1
  # GET /siths/1.json
  def show
  end

  # GET /siths/new
  def new
    @sith = Sith.new
  end

  # GET /siths/1/edit
  def edit
  end

  # POST /siths
  # POST /siths.json
  def create
    @sith = Sith.new(sith_params)

    respond_to do |format|
      if @sith.save
        format.html { redirect_to @sith, notice: 'Sith was successfully created.' }
        format.json { render :show, status: :created, location: @sith }
      else
        format.html { render :new }
        format.json { render json: @sith.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siths/1
  # PATCH/PUT /siths/1.json
  def update
    respond_to do |format|
      if @sith.update(sith_params)
        format.html { redirect_to @sith, notice: 'Sith was successfully updated.' }
        format.json { render :show, status: :ok, location: @sith }
      else
        format.html { render :edit }
        format.json { render json: @sith.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siths/1
  # DELETE /siths/1.json
  def destroy
    @sith.destroy
    respond_to do |format|
      format.html { redirect_to siths_url, notice: 'Sith was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sith
      @sith = Sith.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sith_params
      params.require(:sith).permit(:id_usuario, :funcao)
    end
end
