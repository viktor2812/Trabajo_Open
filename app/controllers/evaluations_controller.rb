class EvaluationsController < ApplicationController
	before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /companiess
  # GET /companiess.json
  def index
    @evaluation = Evaluation.all
  end

  # GET /companiess/1
  # GET /companiess/1.json
  def show
  end

  # GET /companiess/new
  def new
    @evaluation = Evaluation.new
  end

  # GET /companiess/1/edit
  def edit
  end

  # POST /companiess
  # POST /companiess.json
  def create
    @evaluation = Evaluation.new(evaluation_params)

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation }
      else
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation }
      else
        format.html { render :edit }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url, notice: 'evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(:description, :year, :street, :ext_numb, :int_numb, :neighborhood, :city, :zip, :commercial_cost)
    end
end
