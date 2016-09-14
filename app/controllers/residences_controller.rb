class ResidencesController < ApplicationController
	before_action :set_residence, only: [:show, :edit, :update, :destroy]

  # GET /companiess
  # GET /companiess.json
  def index
    @residence = Residence.all
  end

  # GET /companiess/1
  # GET /companiess/1.json
  def show
  end

  # GET /companiess/new
  def new
    @residence = Residence.new
  end

  # GET /companiess/1/edit
  def edit
  end

  # POST /companiess
  # POST /companiess.json
  def create
    @residence = Residence.new(residence_params)

    respond_to do |format|
      if @residence.save
        format.html { redirect_to @residence, notice: 'residence was successfully created.' }
        format.json { render :show, status: :created, location: @residence }
      else
        format.html { render :new }
        format.json { render json: @residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residences/1
  # PATCH/PUT /residences/1.json
  def update
    respond_to do |format|
      if @residence.update(residence_params)
        format.html { redirect_to @residence, notice: 'residence was successfully updated.' }
        format.json { render :show, status: :ok, location: @residence }
      else
        format.html { render :edit }
        format.json { render json: @residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residences/1
  # DELETE /residences/1.json
  def destroy
    @residence.destroy
    respond_to do |format|
      format.html { redirect_to residences_url, notice: 'residence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residence
      @residence = Residence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residence_params
      params.require(:residence).permit(:description, :year, :street, :ext_numb, :int_numb, :neighborhood, :city, :zip, :commercial_cost)
    end
end
