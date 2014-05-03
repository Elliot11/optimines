class Opt1sController < ApplicationController
  before_action :set_opt1, only: [:show, :edit, :update, :destroy]

  def import
    Opt1.import(params[:file])
    redirect_to opt1s_path, notice: "Products imported."
  end

  # GET /opt1s
  # GET /opt1s.json
  def index
    @opt1s = Opt1.all

    respond_to do |format|
      format.html 
      format.json
      format.csv { send_data @opt1s.to_csv }

    end
  end

  # GET /opt1s/1
  # GET /opt1s/1.json
  def show
  end

  # GET /opt1s/new
  def new
    @opt1 = Opt1.new
  end

  # GET /opt1s/1/edit
  def edit
  end

  # POST /opt1s
  # POST /opt1s.json
  def create
    @opt1 = Opt1.new(opt1_params)

    respond_to do |format|
      if @opt1.save
        format.html { redirect_to @opt1, notice: 'Opt1 was successfully created.' }
        format.json { render :show, status: :created, location: @opt1 }
      else
        format.html { render :new }
        format.json { render json: @opt1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt1s/1
  # PATCH/PUT /opt1s/1.json
  def update
    respond_to do |format|
      if @opt1.update(opt1_params)
        format.html { redirect_to @opt1, notice: 'Opt1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt1 }
      else
        format.html { render :edit }
        format.json { render json: @opt1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt1s/1
  # DELETE /opt1s/1.json
  def destroy
    @opt1.destroy
    respond_to do |format|
      format.html { redirect_to opt1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt1
      @opt1 = Opt1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt1_params
      params.require(:opt1).permit(:truck, :time, :percentage, :color, :hidden)
    end
end
