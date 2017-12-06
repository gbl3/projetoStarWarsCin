class BattleDroidsController < ApplicationController
  before_action :set_battle_droid, only: [:show, :edit, :update, :destroy]

  # GET /battle_droids
  # GET /battle_droids.json
  def index
    @battle_droids = BattleDroid.all
  end

  # GET /battle_droids/1
  # GET /battle_droids/1.json
  def show
  end

  # GET /battle_droids/new
  def new
    @battle_droid = BattleDroid.new
  end

  # GET /battle_droids/1/edit
  def edit
  end

  # POST /battle_droids
  # POST /battle_droids.json
  def create
    @battle_droid = BattleDroid.new(battle_droid_params)

    respond_to do |format|
      if @battle_droid.save
        format.html { redirect_to @battle_droid, notice: 'Battle droid was successfully created.' }
        format.json { render :show, status: :created, location: @battle_droid }
      else
        format.html { render :new }
        format.json { render json: @battle_droid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battle_droids/1
  # PATCH/PUT /battle_droids/1.json
  def update
    respond_to do |format|
      if @battle_droid.update(battle_droid_params)
        format.html { redirect_to @battle_droid, notice: 'Battle droid was successfully updated.' }
        format.json { render :show, status: :ok, location: @battle_droid }
      else
        format.html { render :edit }
        format.json { render json: @battle_droid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battle_droids/1
  # DELETE /battle_droids/1.json
  def destroy
    @battle_droid.destroy
    respond_to do |format|
      format.html { redirect_to battle_droids_url, notice: 'Battle droid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle_droid
      @battle_droid = BattleDroid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battle_droid_params
      params.require(:battle_droid).permit(:id_fabricacao, :tipo_arma)
    end
end
