class GoldtrucksController < ApplicationController
  before_action :set_goldtruck, only: [:show, :edit, :update, :destroy]


  def import
    Goldtruck.import(params[:file])
    redirect_to goldtrucks_path, notice: "Products imported."
  end

  # GET /goldtrucks
  # GET /goldtrucks.json
  def index
    @goldtrucks = Goldtruck.all

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @goldtrucks.to_csv }

    end
  end

  # GET /goldtrucks/1
  # GET /goldtrucks/1.json
  def show
  end

  # GET /goldtrucks/new
  def new
    @goldtruck = Goldtruck.new
  end

  # GET /goldtrucks/1/edit
  def edit
  end

  # POST /goldtrucks
  # POST /goldtrucks.json
  def create
    @goldtruck = Goldtruck.new(goldtruck_params)

    respond_to do |format|
      if @goldtruck.save
        format.html { redirect_to @goldtruck, notice: 'Goldtruck was successfully created.' }
        format.json { render :show, status: :created, location: @goldtruck }
      else
        format.html { render :new }
        format.json { render json: @goldtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goldtrucks/1
  # PATCH/PUT /goldtrucks/1.json
  def update
    respond_to do |format|
      if @goldtruck.update(goldtruck_params)
        format.html { redirect_to @goldtruck, notice: 'Goldtruck was successfully updated.' }
        format.json { render :show, status: :ok, location: @goldtruck }
      else
        format.html { render :edit }
        format.json { render json: @goldtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goldtrucks/1
  # DELETE /goldtrucks/1.json
  def destroy
    @goldtruck.destroy
    respond_to do |format|
      format.html { redirect_to goldtrucks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goldtruck
      @goldtruck = Goldtruck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goldtruck_params
      params.require(:goldtruck).permit(:time, :t1, :t2, :t3, :t4, :t5, :t6, :t7, :t8, :t9, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24, :t25)
    end
end
