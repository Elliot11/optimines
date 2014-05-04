class TruckmetricsController < ApplicationController
  before_action :set_truckmetric, only: [:show, :edit, :update, :destroy]


  def import
    Truckmetric.import(params[:file])
    redirect_to truckmetrics_path, notice: "Products imported."
  end

  # GET /truckmetrics
  # GET /truckmetrics.json
  def index
    if params[:datetimestamp].nil?
    @truckmetrics = Truckmetric.all
    else
    @truckmetrics = Truckmetric.where(date: params[:datetimestamp].to_s)
    end

    @jsontruckmetrics = Truckmetric.where(date: '1/03/2014')

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @truckmetrics.to_csv }

    end
  end

  # GET /truckmetrics/1
  # GET /truckmetrics/1.json
  def show
  end

  # GET /truckmetrics/new
  def new
    @truckmetric = Truckmetric.new
  end

  # GET /truckmetrics/1/edit
  def edit
  end

  # POST /truckmetrics
  # POST /truckmetrics.json
  def create
    @truckmetric = Truckmetric.new(truckmetric_params)

    respond_to do |format|
      if @truckmetric.save
        format.html { redirect_to @truckmetric, notice: 'Truckmetric was successfully created.' }
        format.json { render :show, status: :created, location: @truckmetric }
      else
        format.html { render :new }
        format.json { render json: @truckmetric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truckmetrics/1
  # PATCH/PUT /truckmetrics/1.json
  def update
    respond_to do |format|
      if @truckmetric.update(truckmetric_params)
        format.html { redirect_to @truckmetric, notice: 'Truckmetric was successfully updated.' }
        format.json { render :show, status: :ok, location: @truckmetric }
      else
        format.html { render :edit }
        format.json { render json: @truckmetric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truckmetrics/1
  # DELETE /truckmetrics/1.json
  def destroy
    @truckmetric.destroy
    respond_to do |format|
      format.html { redirect_to truckmetrics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truckmetric
      @truckmetric = Truckmetric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truckmetric_params
      params.require(:truckmetric).permit(:date, :equipment, :delays, :directoperating, :indirectoperating, :plannedmaintenance, :standby, :unplannedmaintenance)
    end
end
