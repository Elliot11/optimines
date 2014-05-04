class OpttucksController < ApplicationController
  before_action :set_opttuck, only: [:show, :edit, :update, :destroy]

  # GET /opttucks
  # GET /opttucks.json
  def index
    @opttucks = Opttuck.all
  end

  # GET /opttucks/1
  # GET /opttucks/1.json
  def show
  end

  # GET /opttucks/new
  def new
    @opttuck = Opttuck.new
  end

  # GET /opttucks/1/edit
  def edit
  end

  # POST /opttucks
  # POST /opttucks.json
  def create
    @opttuck = Opttuck.new(opttuck_params)

    respond_to do |format|
      if @opttuck.save
        format.html { redirect_to @opttuck, notice: 'Opttuck was successfully created.' }
        format.json { render :show, status: :created, location: @opttuck }
      else
        format.html { render :new }
        format.json { render json: @opttuck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opttucks/1
  # PATCH/PUT /opttucks/1.json
  def update
    respond_to do |format|
      if @opttuck.update(opttuck_params)
        format.html { redirect_to @opttuck, notice: 'Opttuck was successfully updated.' }
        format.json { render :show, status: :ok, location: @opttuck }
      else
        format.html { render :edit }
        format.json { render json: @opttuck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opttucks/1
  # DELETE /opttucks/1.json
  def destroy
    @opttuck.destroy
    respond_to do |format|
      format.html { redirect_to opttucks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opttuck
      @opttuck = Opttuck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opttuck_params
      params.require(:opttuck).permit(:truck, :time, :percentage)
    end
end
