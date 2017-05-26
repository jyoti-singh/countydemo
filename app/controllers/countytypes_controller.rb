class CountytypesController < ApplicationController
  before_action :set_countytype, only: [:show, :edit, :update, :destroy]

  # GET /countytypes
  # GET /countytypes.json
  def index
    @countytypes = Countytype.all
  end

  def get_categories_by_countyofiice
    @categories = Countytype.find(params[:id]).categories
  end

   def get_categories_by_reloading
    @categories = Countytype.find(params[:id]).categories
  end


  # GET /countytypes/1
  # GET /countytypes/1.json
  def show
  end

  # GET /countytypes/new
  def new
    @countytype = Countytype.new
  end

  # GET /countytypes/1/edit
  def edit
  end

  # POST /countytypes
  # POST /countytypes.json
  def create
    @countytype = Countytype.new(countytype_params)

    respond_to do |format|
      if @countytype.save
        format.html { redirect_to @countytype, notice: 'Countytype was successfully created.' }
        format.json { render :show, status: :created, location: @countytype }
      else
        format.html { render :new }
        format.json { render json: @countytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countytypes/1
  # PATCH/PUT /countytypes/1.json
  def update
    respond_to do |format|
      if @countytype.update(countytype_params)
        format.html { redirect_to @countytype, notice: 'Countytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @countytype }
      else
        format.html { render :edit }
        format.json { render json: @countytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countytypes/1
  # DELETE /countytypes/1.json
  def destroy
    @countytype.destroy
    respond_to do |format|
      format.html { redirect_to countytypes_url, notice: 'Countytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countytype
      @countytype = Countytype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def countytype_params
      params.require(:countytype).permit(:type)
    end
end
