class GondollasController < ApplicationController
  before_action :set_gondolla, only: [:show, :edit, :update, :destroy]

  # GET /gondollas
  # GET /gondollas.json
  def index
    @gondollas = Gondolla.all
  end

  # GET /gondollas/1
  # GET /gondollas/1.json
  def show
  end

  # GET /gondollas/new
  def new
    @gondolla = Gondolla.new
  end

  # GET /gondollas/1/edit
  def edit
  end

  # POST /gondollas
  # POST /gondollas.json
  def create
    @gondolla = Gondolla.new(gondolla_params)

    respond_to do |format|
      if @gondolla.save
        format.html { redirect_to @gondolla, notice: 'Gondolla was successfully created.' }
        format.json { render :show, status: :created, location: @gondolla }
      else
        format.html { render :new }
        format.json { render json: @gondolla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gondollas/1
  # PATCH/PUT /gondollas/1.json
  def update
    respond_to do |format|
      if @gondolla.update(gondolla_params)
        format.html { redirect_to @gondolla, notice: 'Gondolla was successfully updated.' }
        format.json { render :show, status: :ok, location: @gondolla }
      else
        format.html { render :edit }
        format.json { render json: @gondolla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gondollas/1
  # DELETE /gondollas/1.json
  def destroy
    @gondolla.destroy
    respond_to do |format|
      format.html { redirect_to gondollas_url, notice: 'Gondolla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gondolla
      @gondolla = Gondolla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gondolla_params
      params.require(:gondolla).permit(:plate, :last_location, :type)
    end
end
