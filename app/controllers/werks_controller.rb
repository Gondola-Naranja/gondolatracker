class WerksController < ApplicationController
  before_action :set_werk, only: [:show, :edit, :update, :destroy]

  # GET /werks
  # GET /werks.json
  def index
    @werks = Werk.all
  end

  # GET /werks/1
  # GET /werks/1.json
  def show
  end

  # GET /werks/new
  def new
    @werk = Werk.new
  end

  # GET /werks/1/edit
  def edit
  end

  # POST /werks
  # POST /werks.json
  def create
    @werk = Werk.new(werk_params)

    respond_to do |format|
      if @werk.save
        format.html { redirect_to @werk, notice: 'Werk was successfully created.' }
        format.json { render :show, status: :created, location: @werk }
      else
        format.html { render :new }
        format.json { render json: @werk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /werks/1
  # PATCH/PUT /werks/1.json
  def update
    respond_to do |format|
      if @werk.update(werk_params)
        format.html { redirect_to @werk, notice: 'Werk was successfully updated.' }
        format.json { render :show, status: :ok, location: @werk }
      else
        format.html { render :edit }
        format.json { render json: @werk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /werks/1
  # DELETE /werks/1.json
  def destroy
    @werk.destroy
    respond_to do |format|
      format.html { redirect_to werks_url, notice: 'Werk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_werk
      @werk = Werk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def werk_params
      params.require(:werk).permit(:name)
    end
end
