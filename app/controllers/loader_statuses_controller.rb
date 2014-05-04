class LoaderStatusesController < ApplicationController
  before_action :set_loader_status, only: [:show, :edit, :update, :destroy]

  def import
    LoaderStatus.import(params[:file])
    redirect_to loader_statuses_path, notice: "Products imported."
  end


  # GET /loader_statuses
  # GET /loader_statuses.json
  def index
    @loader_statuses = LoaderStatus.all

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @loader_statuses.to_csv }

    end
  end

  # GET /loader_statuses/1
  # GET /loader_statuses/1.json
  def show
  end

  # GET /loader_statuses/new
  def new
    @loader_status = LoaderStatus.new
  end

  # GET /loader_statuses/1/edit
  def edit
  end

  # POST /loader_statuses
  # POST /loader_statuses.json
  def create
    @loader_status = LoaderStatus.new(loader_status_params)

    respond_to do |format|
      if @loader_status.save
        format.html { redirect_to @loader_status, notice: 'Loader status was successfully created.' }
        format.json { render :show, status: :created, location: @loader_status }
      else
        format.html { render :new }
        format.json { render json: @loader_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loader_statuses/1
  # PATCH/PUT /loader_statuses/1.json
  def update
    respond_to do |format|
      if @loader_status.update(loader_status_params)
        format.html { redirect_to @loader_status, notice: 'Loader status was successfully updated.' }
        format.json { render :show, status: :ok, location: @loader_status }
      else
        format.html { render :edit }
        format.json { render json: @loader_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loader_statuses/1
  # DELETE /loader_statuses/1.json
  def destroy
    @loader_status.destroy
    respond_to do |format|
      format.html { redirect_to loader_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loader_status
      @loader_status = LoaderStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loader_status_params
      params.require(:loader_status).permit(:time, :button1, :button2, :button3, :button4, :button5, :button6, :button7, :button8, :button9, :button10, :button11, :button12, :button13, :button14, :button15)
    end
end
