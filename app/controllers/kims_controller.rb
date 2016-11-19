class KimsController < ApplicationController
  before_action :set_kim, only: [:show, :edit, :update, :destroy]

  # GET /kims
  # GET /kims.json
  def index
    @kims = Kim.all
  end

  # GET /kims/1
  # GET /kims/1.json
  def show
  end

  # GET /kims/new
  def new
    @kim = Kim.new
  end

  # GET /kims/1/edit
  def edit
  end

  # POST /kims
  # POST /kims.json
  def create
    @kim = Kim.new(kim_params)

    respond_to do |format|
      if @kim.save
        format.html { redirect_to @kim, notice: 'Kim was successfully created.' }
        format.json { render :show, status: :created, location: @kim }
      else
        format.html { render :new }
        format.json { render json: @kim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kims/1
  # PATCH/PUT /kims/1.json
  def update
    respond_to do |format|
      if @kim.update(kim_params)
        format.html { redirect_to @kim, notice: 'Kim was successfully updated.' }
        format.json { render :show, status: :ok, location: @kim }
      else
        format.html { render :edit }
        format.json { render json: @kim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kims/1
  # DELETE /kims/1.json
  def destroy
    @kim.destroy
    respond_to do |format|
      format.html { redirect_to kims_url, notice: 'Kim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kim
      @kim = Kim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kim_params
      params.require(:kim).permit(:name, :description, :picture)
    end
end
