class GondolasController < ApplicationController
  before_action :set_gondola, only: [:show, :edit, :toggle_light, :update, :destroy]

  # GET /gondolas
  # GET /gondolas.json
  def index
    @gondolas = Gondola.all
  end

  # GET /gondolas/1
  # GET /gondolas/1.json
  def show
  end

  # GET /gondolas/new
  def new
    @gondola = Gondola.new
  end

  # GET /gondolas/1/edit
  def edit
  end

  def toggle_light
    @gondola.toggle_light
    head :no_content
  end

  # POST /gondolas
  # POST /gondolas.json
  def create
    @gondola = Gondola.new(gondola_params)

    respond_to do |format|
      if @gondola.save
        format.html { redirect_to @gondola, notice: 'Gondola was successfully created.' }
        format.json { render :show, status: :created, location: @gondola }
      else
        format.html { render :new }
        format.json { render json: @gondola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gondolas/1
  # PATCH/PUT /gondolas/1.json
  def update
    respond_to do |format|
      if @gondola.update(gondola_params)
        format.html { redirect_to @gondola, notice: 'Gondola was successfully updated.' }
        format.json { render :show, status: :ok, location: @gondola }
      else
        format.html { render :edit }
        format.json { render json: @gondola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gondolas/1
  # DELETE /gondolas/1.json
  def destroy
    @gondola.destroy
    respond_to do |format|
      format.html { redirect_to gondolas_url, notice: 'Gondola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gondola
    @gondola = Gondola.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def gondola_params
    params.require(:gondola).permit(:plate, :last_location, :type)
  end

  def beacon_params
    params.permit(:distance, :uuid, :rssi, :power)
  end
end
