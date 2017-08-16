class AssitancesController < ApplicationController
  before_action :set_assitance, only: [:show, :edit, :update, :destroy]

  # GET /assitances
  # GET /assitances.json
  def index
    @assitances = Assitance.all
  end

  # GET /assitances/1
  # GET /assitances/1.json
  def show
  end

  # GET /assitances/new
  def new
    @assitance = Assitance.new
  end

  # GET /assitances/1/edit
  def edit
  end

  # POST /assitances
  # POST /assitances.json
  def create
    @assitance = Assitance.new(assitance_params)

    respond_to do |format|
      if @assitance.save
        format.html { redirect_to @assitance, notice: 'Assitance was successfully created.' }
        format.json { render :show, status: :created, location: @assitance }
      else
        format.html { render :new }
        format.json { render json: @assitance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assitances/1
  # PATCH/PUT /assitances/1.json
  def update
    respond_to do |format|
      if @assitance.update(assitance_params)
        format.html { redirect_to @assitance, notice: 'Assitance was successfully updated.' }
        format.json { render :show, status: :ok, location: @assitance }
      else
        format.html { render :edit }
        format.json { render json: @assitance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assitances/1
  # DELETE /assitances/1.json
  def destroy
    @assitance.destroy
    respond_to do |format|
      format.html { redirect_to assitances_url, notice: 'Assitance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assitance
      @assitance = Assitance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assitance_params
      params.require(:assitance).permit(:assitance_present, :student_id)
    end
end
