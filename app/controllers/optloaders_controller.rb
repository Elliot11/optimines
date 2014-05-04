class OptloadersController < ApplicationController
  before_action :set_optloader, only: [:show, :edit, :update, :destroy]

  def import
    Optloader.import(params[:file])
    redirect_to optloaders_path, notice: "Products imported."
  end

  # GET /optloaders
  # GET /optloaders.json
  def index
    @optloaders = Optloader.all
    @shortoptloaders = Optloader.first(100)

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @optloaders.to_csv }

    end
  end

  # GET /optloaders/1
  # GET /optloaders/1.json
  def show
  end

  # GET /optloaders/new
  def new
    @optloader = Optloader.new
  end

  # GET /optloaders/1/edit
  def edit
  end

  # POST /optloaders
  # POST /optloaders.json
  def create
    @optloader = Optloader.new(optloader_params)

    respond_to do |format|
      if @optloader.save
        format.html { redirect_to @optloader, notice: 'Optloader was successfully created.' }
        format.json { render :show, status: :created, location: @optloader }
      else
        format.html { render :new }
        format.json { render json: @optloader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optloaders/1
  # PATCH/PUT /optloaders/1.json
  def update
    respond_to do |format|
      if @optloader.update(optloader_params)
        format.html { redirect_to @optloader, notice: 'Optloader was successfully updated.' }
        format.json { render :show, status: :ok, location: @optloader }
      else
        format.html { render :edit }
        format.json { render json: @optloader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optloaders/1
  # DELETE /optloaders/1.json
  def destroy
    @optloader.destroy
    respond_to do |format|
      format.html { redirect_to optloaders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optloader
      @optloader = Optloader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optloader_params
      params.require(:optloader).permit(:time, :truck, :color)
    end
end
