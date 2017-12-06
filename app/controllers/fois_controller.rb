class FoisController < ApplicationController
  before_action :set_foi, only: [:show, :edit, :update, :destroy]

  # GET /fois
  # GET /fois.json
  def index
    @fois = Foi.all
  end

  # GET /fois/1
  # GET /fois/1.json
  def show
  end

  # GET /fois/new
  def new
    @foi = Foi.new
  end

  # GET /fois/1/edit
  def edit
  end

  # POST /fois
  # POST /fois.json
  def create
    @foi = Foi.new(foi_params)

    respond_to do |format|
      if @foi.save
        format.html { redirect_to @foi, notice: 'Foi was successfully created.' }
        format.json { render :show, status: :created, location: @foi }
      else
        format.html { render :new }
        format.json { render json: @foi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fois/1
  # PATCH/PUT /fois/1.json
  def update
    respond_to do |format|
      if @foi.update(foi_params)
        format.html { redirect_to @foi, notice: 'Foi was successfully updated.' }
        format.json { render :show, status: :ok, location: @foi }
      else
        format.html { render :edit }
        format.json { render json: @foi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fois/1
  # DELETE /fois/1.json
  def destroy
    @foi.destroy
    respond_to do |format|
      format.html { redirect_to fois_url, notice: 'Foi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foi
      @foi = Foi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foi_params
      params.require(:foi).permit(:id_usuario_m_sith, :id_usuario_j)
    end
end
