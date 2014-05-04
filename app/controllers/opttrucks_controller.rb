class OpttrucksController < ApplicationController
  before_action :set_opttruck, only: [:show, :edit, :update, :destroy]


  def import
    Opttruck.import(params[:file])
    redirect_to opttrucks_path, notice: "Products imported."
  end

  # GET /opttrucks
  # GET /opttrucks.json
  def index
    @opttrucks = Opttruck.all

    
    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @opttrucks.to_csv }

    end
  end

  # GET /opttrucks/1
  # GET /opttrucks/1.json
  def show
  end

  # GET /opttrucks/new
  def new
    @opttruck = Opttruck.new
  end

  # GET /opttrucks/1/edit
  def edit
  end

  # POST /opttrucks
  # POST /opttrucks.json
  def create
    @opttruck = Opttruck.new(opttruck_params)

    respond_to do |format|
      if @opttruck.save
        format.html { redirect_to @opttruck, notice: 'Opttruck was successfully created.' }
        format.json { render :show, status: :created, location: @opttruck }
      else
        format.html { render :new }
        format.json { render json: @opttruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opttrucks/1
  # PATCH/PUT /opttrucks/1.json
  def update
    respond_to do |format|
      if @opttruck.update(opttruck_params)
        format.html { redirect_to @opttruck, notice: 'Opttruck was successfully updated.' }
        format.json { render :show, status: :ok, location: @opttruck }
      else
        format.html { render :edit }
        format.json { render json: @opttruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opttrucks/1
  # DELETE /opttrucks/1.json
  def destroy
    @opttruck.destroy
    respond_to do |format|
      format.html { redirect_to opttrucks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opttruck
      @opttruck = Opttruck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opttruck_params
      params.require(:opttruck).permit(:truck, :time, :percentage)
    end
end
