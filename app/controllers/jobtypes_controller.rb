class JobtypesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_jobtype, only: [:show, :edit, :update, :destroy]

  # GET /jobtypes
  # GET /jobtypes.json
  def index
    @jobtypes = Jobtype.all
  end

  # GET /jobtypes/1
  # GET /jobtypes/1.json
  def show
  end

  # GET /jobtypes/new
  def new
    @jobtype = Jobtype.new
  end

  # GET /jobtypes/1/edit
  def edit
  end

  # POST /jobtypes
  # POST /jobtypes.json
  def create
    @jobtype = Jobtype.new(jobtype_params)

    respond_to do |format|
      if @jobtype.save
        format.html { redirect_to @jobtype, notice: 'Jobtype was successfully created.' }
        format.json { render :show, status: :created, location: @jobtype }
      else
        format.html { render :new }
        format.json { render json: @jobtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobtypes/1
  # PATCH/PUT /jobtypes/1.json
  def update
    respond_to do |format|
      if @jobtype.update(jobtype_params)
        format.html { redirect_to @jobtype, notice: 'Jobtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobtype }
      else
        format.html { render :edit }
        format.json { render json: @jobtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobtypes/1
  # DELETE /jobtypes/1.json
  def destroy
    @jobtype.destroy
    respond_to do |format|
      format.html { redirect_to jobtypes_url, notice: 'Jobtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobtype
      @jobtype = Jobtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobtype_params
      params.require(:jobtype).permit(:name)
    end
end
