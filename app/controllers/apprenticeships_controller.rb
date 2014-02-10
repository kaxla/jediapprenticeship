class ApprenticeshipsController < ApplicationController
  before_action :set_apprenticeship, only: [:show, :edit, :update, :destroy]

  # GET /apprenticeships
  # GET /apprenticeships.json
  def index
    @apprenticeships = Apprenticeship.all
  end

  # GET /apprenticeships/1
  # GET /apprenticeships/1.json
  def show
  end

  # GET /apprenticeships/new
  def new
    @apprenticeship = Apprenticeship.new
  end

  # GET /apprenticeships/1/edit
  def edit
  end

  # POST /apprenticeships
  # POST /apprenticeships.json
  def create
    @apprenticeship = Apprenticeship.new(apprenticeship_params)

    respond_to do |format|
      if @apprenticeship.save
        format.html { redirect_to @apprenticeship, notice: 'Apprenticeship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @apprenticeship }
      else
        format.html { render action: 'new' }
        format.json { render json: @apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apprenticeships/1
  # PATCH/PUT /apprenticeships/1.json
  def update
    respond_to do |format|
      if @apprenticeship.update(apprenticeship_params)
        format.html { redirect_to @apprenticeship, notice: 'Apprenticeship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprenticeships/1
  # DELETE /apprenticeships/1.json
  def destroy
    @apprenticeship.destroy
    respond_to do |format|
      format.html { redirect_to apprenticeships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprenticeship
      @apprenticeship = Apprenticeship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apprenticeship_params
      params.require(:apprenticeship).permit(:jedi_id, :padawan_id, :level)
    end
end
