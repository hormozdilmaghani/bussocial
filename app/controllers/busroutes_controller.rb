class BusroutesController < ApplicationController
  before_action :set_busroute, only: [:show, :edit, :update, :destroy]

  # GET /busroutes
  # GET /busroutes.json
  def index
    @busroutes = Busroute.all
  end

  # GET /busroutes/1
  # GET /busroutes/1.json
  def show
  end

  # GET /busroutes/new
  def new
    @busroute = Busroute.new
  end

  # GET /busroutes/1/edit
  def edit
  end

  # POST /busroutes
  # POST /busroutes.json
  def create
    @busroute = Busroute.new(busroute_params)

    respond_to do |format|
      if @busroute.save
        format.html { redirect_to @busroute, notice: 'Busroute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @busroute }
      else
        format.html { render action: 'new' }
        format.json { render json: @busroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /busroutes/1
  # PATCH/PUT /busroutes/1.json
  def update
    respond_to do |format|
      if @busroute.update(busroute_params)
        format.html { redirect_to @busroute, notice: 'Busroute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @busroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /busroutes/1
  # DELETE /busroutes/1.json
  def destroy
    @busroute.destroy
    respond_to do |format|
      format.html { redirect_to busroutes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_busroute
      @busroute = Busroute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def busroute_params
      params.require(:busroute).permit(:title, :description)
    end
end
