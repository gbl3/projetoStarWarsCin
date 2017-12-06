class UtilityDroidsController < ApplicationController
  before_action :set_utility_droid, only: [:show, :edit, :update, :destroy]

  # GET /utility_droids
  # GET /utility_droids.json
  def index
    @utility_droids = UtilityDroid.all
  end

  # GET /utility_droids/1
  # GET /utility_droids/1.json
  def show
  end

  # GET /utility_droids/new
  def new
    @utility_droid = UtilityDroid.new
  end

  # GET /utility_droids/1/edit
  def edit
  end

  # POST /utility_droids
  # POST /utility_droids.json
  def create
    @utility_droid = UtilityDroid.new(utility_droid_params)

    respond_to do |format|
      if @utility_droid.save
        format.html { redirect_to @utility_droid, notice: 'Utility droid was successfully created.' }
        format.json { render :show, status: :created, location: @utility_droid }
      else
        format.html { render :new }
        format.json { render json: @utility_droid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utility_droids/1
  # PATCH/PUT /utility_droids/1.json
  def update
    respond_to do |format|
      if @utility_droid.update(utility_droid_params)
        format.html { redirect_to @utility_droid, notice: 'Utility droid was successfully updated.' }
        format.json { render :show, status: :ok, location: @utility_droid }
      else
        format.html { render :edit }
        format.json { render json: @utility_droid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utility_droids/1
  # DELETE /utility_droids/1.json
  def destroy
    @utility_droid.destroy
    respond_to do |format|
      format.html { redirect_to utility_droids_url, notice: 'Utility droid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utility_droid
      @utility_droid = UtilityDroid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utility_droid_params
      params.require(:utility_droid).permit(:id_fabricacao, :especialidade)
    end
end
