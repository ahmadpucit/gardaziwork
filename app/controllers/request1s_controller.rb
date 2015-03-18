class Request1sController < ApplicationController
  before_action :set_request1, only: [:show, :edit, :update, :destroy]

  # GET /request1s
  # GET /request1s.json
  def index
    @request1s = Request1.all
  end

  def rpage
  end


  # GET /request1s/1
  # GET /request1s/1.json
  def show
  end

  # GET /request1s/new
  def new
    @request1 = Request1.new
  end

  # GET /request1s/1/edit
  def edit
  end

  # POST /request1s
  # POST /request1s.json
  def create
    @request1 = Request1.new(request1_params)
    respond_to do |format|
      if @request1.save
        format.html { redirect_to @request1, notice: 'Request1 was successfully created.' }
       format.json { render :show, status: :created, location: @request1 }
      else
        format.html { render :new }
        format.json { render json: @request1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request1s/1
  # PATCH/PUT /request1s/1.json
  def update
    respond_to do |format|
      if @request1.update(request1_params)
        format.html { redirect_to @request1, notice: 'Request1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @request1 }
      else
        format.html { render :edit }
        format.json { render json: @request1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request1s/1
  # DELETE /request1s/1.json
  def destroy
    @request1.destroy
    respond_to do |format|
      format.html { redirect_to request1s_url, notice: 'Request1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request1
      @request1 = Request1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request1_params
      params.require(:request1).permit(:when, :where, :what, :negotiable, :price)
    end
end
