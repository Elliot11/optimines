class GoldpercsController < ApplicationController
  before_action :set_goldperc, only: [:show, :edit, :update, :destroy]

  def import
    Goldperc.import(params[:file])
    redirect_to goldpis_path, notice: "Products imported."
  end

  # GET /goldpercs
  # GET /goldpercs.json
  def index
    @goldpercs = Goldperc.all

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @goldpercs.to_csv }

    end
  end

  # GET /goldpercs/1
  # GET /goldpercs/1.json
  def show
  end

  # GET /goldpercs/new
  def new
    @goldperc = Goldperc.new
  end

  # GET /goldpercs/1/edit
  def edit
  end

  # POST /goldpercs
  # POST /goldpercs.json
  def create
    @goldperc = Goldperc.new(goldperc_params)

    respond_to do |format|
      if @goldperc.save
        format.html { redirect_to @goldperc, notice: 'Goldperc was successfully created.' }
        format.json { render :show, status: :created, location: @goldperc }
      else
        format.html { render :new }
        format.json { render json: @goldperc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goldpercs/1
  # PATCH/PUT /goldpercs/1.json
  def update
    respond_to do |format|
      if @goldperc.update(goldperc_params)
        format.html { redirect_to @goldperc, notice: 'Goldperc was successfully updated.' }
        format.json { render :show, status: :ok, location: @goldperc }
      else
        format.html { render :edit }
        format.json { render json: @goldperc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goldpercs/1
  # DELETE /goldpercs/1.json
  def destroy
    @goldperc.destroy
    respond_to do |format|
      format.html { redirect_to goldpercs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goldperc
      @goldperc = Goldperc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goldperc_params
      params.require(:goldperc).permit(:time, :under_shtd, :above_shtd)
    end
end
