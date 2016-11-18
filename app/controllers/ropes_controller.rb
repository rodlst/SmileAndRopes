class RopesController < ApplicationController
  before_action :set_rope, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /ropes
  # GET /ropes.json
  def index
    @ropes = Rope.all
  end

  # GET /ropes/1
  # GET /ropes/1.json
  def show
  end

  # GET /ropes/new
  def new
    @rope = Rope.new
  end

  # GET /ropes/1/edit
  def edit
  end

  # POST /ropes
  # POST /ropes.json
  def create
    @rope = Rope.new(rope_params)

    respond_to do |format|
      if @rope.save
        format.html { redirect_to @rope, notice: 'Rope was successfully created.' }
        format.json { render :show, status: :created, location: @rope }
      else
        format.html { render :new }
        format.json { render json: @rope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ropes/1
  # PATCH/PUT /ropes/1.json
  def update
    respond_to do |format|
      if @rope.update(rope_params)
        format.html { redirect_to @rope, notice: 'Rope was successfully updated.' }
        format.json { render :show, status: :ok, location: @rope }
      else
        format.html { render :edit }
        format.json { render json: @rope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ropes/1
  # DELETE /ropes/1.json
  def destroy
    @rope.destroy
    respond_to do |format|
      format.html { redirect_to ropes_url, notice: 'Rope was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rope
      @rope = Rope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rope_params
      params.require(:rope).permit(:Name, :Rope)
    end
end
