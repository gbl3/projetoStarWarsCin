class DroidsController < ApplicationController
  before_action :set_droid, only: [:show, :edit, :update, :destroy]

  # GET /droids
  # GET /droids.json
  def index
    @droids = Droid.all
  end

  # GET /droids/1
  # GET /droids/1.json
  def show
  end

  # GET /droids/new
  def new
    @droid = Droid.new
  end

  # GET /droids/1/edit
  def edit
  end

  # POST /droids
  # POST /droids.json
  def create
    @droid = Droid.new(droid_params)

    respond_to do |format|
      if @droid.save
        format.html { redirect_to @droid, notice: 'Droid was successfully created.' }
        format.json { render :show, status: :created, location: @droid }
      else
        format.html { render :new }
        format.json { render json: @droid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /droids/1
  # PATCH/PUT /droids/1.json
  def update
    respond_to do |format|
      if @droid.update(droid_params)
        format.html { redirect_to @droid, notice: 'Droid was successfully updated.' }
        format.json { render :show, status: :ok, location: @droid }
      else
        format.html { render :edit }
        format.json { render json: @droid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /droids/1
  # DELETE /droids/1.json
  def destroy
    @droid.destroy
    respond_to do |format|
      format.html { redirect_to droids_url, notice: 'Droid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_droid
      @droid = Droid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def droid_params
      params.require(:droid).permit(:id_fabricacao, :serial_name, :ano_fabricacao)
    end
end
