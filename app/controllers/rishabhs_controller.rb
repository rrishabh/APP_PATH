class RishabhsController < ApplicationController
  before_action :set_rishabh, only: [:show, :edit, :update, :destroy]

  # GET /rishabhs
  # GET /rishabhs.json
  def index
    @rishabhs = Rishabh.all
  end

  # GET /rishabhs/1
  # GET /rishabhs/1.json
  def show
  end

  # GET /rishabhs/new
  def new
    @rishabh = Rishabh.new
  end

  # GET /rishabhs/1/edit
  def edit
  end

  # POST /rishabhs
  # POST /rishabhs.json
  def create
    @rishabh = Rishabh.new(rishabh_params)

    respond_to do |format|
      if @rishabh.save
        format.html { redirect_to @rishabh, notice: 'Rishabh was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rishabh }
      else
        format.html { render action: 'new' }
        format.json { render json: @rishabh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rishabhs/1
  # PATCH/PUT /rishabhs/1.json
  def update
    respond_to do |format|
      if @rishabh.update(rishabh_params)
        format.html { redirect_to @rishabh, notice: 'Rishabh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rishabh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rishabhs/1
  # DELETE /rishabhs/1.json
  def destroy
    @rishabh.destroy
    respond_to do |format|
      format.html { redirect_to rishabhs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rishabh
      @rishabh = Rishabh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rishabh_params
      params.require(:rishabh).permit(:name, :designation, :phone_no)
    end
end
