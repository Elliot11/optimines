class GoldpisController < ApplicationController
  before_action :set_goldpi, only: [:show, :edit, :update, :destroy]

  def import
    Goldpi.import(params[:file])
    redirect_to goldpis_path, notice: "Products imported."
  end

  # GET /goldpis
  # GET /goldpis.json
  def index
    @goldpis = Goldpi.all
    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @goldpis.to_csv }

    end
  end

  # GET /goldpis/1
  # GET /goldpis/1.json
  def show
  end

  # GET /goldpis/new
  def new
    @goldpi = Goldpi.new
  end

  # GET /goldpis/1/edit
  def edit
  end

  # POST /goldpis
  # POST /goldpis.json
  def create
    @goldpi = Goldpi.new(goldpi_params)

    respond_to do |format|
      if @goldpi.save
        format.html { redirect_to @goldpi, notice: 'Goldpi was successfully created.' }
        format.json { render :show, status: :created, location: @goldpi }
      else
        format.html { render :new }
        format.json { render json: @goldpi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goldpis/1
  # PATCH/PUT /goldpis/1.json
  def update
    respond_to do |format|
      if @goldpi.update(goldpi_params)
        format.html { redirect_to @goldpi, notice: 'Goldpi was successfully updated.' }
        format.json { render :show, status: :ok, location: @goldpi }
      else
        format.html { render :edit }
        format.json { render json: @goldpi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goldpis/1
  # DELETE /goldpis/1.json
  def destroy
    @goldpi.destroy
    respond_to do |format|
      format.html { redirect_to goldpis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goldpi
      @goldpi = Goldpi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goldpi_params
      params.require(:goldpi).permit(:label, :value, :time)
    end
end
