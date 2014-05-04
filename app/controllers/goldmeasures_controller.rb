class GoldmeasuresController < ApplicationController
  before_action :set_goldmeasure, only: [:show, :edit, :update, :destroy]

  def import
    Goldmeasure.import(params[:file])
    redirect_to goldmeasures_path, notice: "Products imported."
  end

  # GET /goldmeasures
  # GET /goldmeasures.json
  def index
    @goldmeasures = Goldmeasure.all

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @goldmeasures.to_csv }

    end
  end

  # GET /goldmeasures/1
  # GET /goldmeasures/1.json
  def show
  end

  # GET /goldmeasures/new
  def new
    @goldmeasure = Goldmeasure.new
  end

  # GET /goldmeasures/1/edit
  def edit
  end

  # POST /goldmeasures
  # POST /goldmeasures.json
  def create
    @goldmeasure = Goldmeasure.new(goldmeasure_params)

    respond_to do |format|
      if @goldmeasure.save
        format.html { redirect_to @goldmeasure, notice: 'Goldmeasure was successfully created.' }
        format.json { render :show, status: :created, location: @goldmeasure }
      else
        format.html { render :new }
        format.json { render json: @goldmeasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goldmeasures/1
  # PATCH/PUT /goldmeasures/1.json
  def update
    respond_to do |format|
      if @goldmeasure.update(goldmeasure_params)
        format.html { redirect_to @goldmeasure, notice: 'Goldmeasure was successfully updated.' }
        format.json { render :show, status: :ok, location: @goldmeasure }
      else
        format.html { render :edit }
        format.json { render json: @goldmeasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goldmeasures/1
  # DELETE /goldmeasures/1.json
  def destroy
    @goldmeasure.destroy
    respond_to do |format|
      format.html { redirect_to goldmeasures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goldmeasure
      @goldmeasure = Goldmeasure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goldmeasure_params
      params.require(:goldmeasure).permit(:time, :total_shtd)
    end
end
