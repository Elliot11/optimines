class ProcesstrucksController < ApplicationController
  before_action :set_processtruck, only: [:show, :edit, :update, :destroy]

  def import
    Processtruck.import(params[:file])
    redirect_to processtrucks_path, notice: "Products imported."
  end

  # GET /processtrucks
  # GET /processtrucks.json
  def index
    @processtrucks = Processtruck.all

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @processtrucks.to_csv }

    end
  end

  # GET /processtrucks/1
  # GET /processtrucks/1.json
  def show
  end

  # GET /processtrucks/new
  def new
    @processtruck = Processtruck.new
  end

  # GET /processtrucks/1/edit
  def edit
  end

  # POST /processtrucks
  # POST /processtrucks.json
  def create
    @processtruck = Processtruck.new(processtruck_params)

    respond_to do |format|
      if @processtruck.save
        format.html { redirect_to @processtruck, notice: 'Processtruck was successfully created.' }
        format.json { render :show, status: :created, location: @processtruck }
      else
        format.html { render :new }
        format.json { render json: @processtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processtrucks/1
  # PATCH/PUT /processtrucks/1.json
  def update
    respond_to do |format|
      if @processtruck.update(processtruck_params)
        format.html { redirect_to @processtruck, notice: 'Processtruck was successfully updated.' }
        format.json { render :show, status: :ok, location: @processtruck }
      else
        format.html { render :edit }
        format.json { render json: @processtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processtrucks/1
  # DELETE /processtrucks/1.json
  def destroy
    @processtruck.destroy
    respond_to do |format|
      format.html { redirect_to processtrucks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processtruck
      @processtruck = Processtruck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processtruck_params
      params.require(:processtruck).permit(:time, :truck1, :truck2, :truck3, :truck4, :truck5, :truck6, :truck7, :truck8)
    end
end
