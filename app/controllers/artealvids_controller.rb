class ArtealvidsController < ApplicationController
  before_action :set_artealvid, only: [:show, :edit, :update, :destroy]

  # GET /artealvids
  # GET /artealvids.json
  def index
    @artealvids = Artealvid.all
  end

  # GET /artealvids/1
  # GET /artealvids/1.json
  def show
  end

  # GET /artealvids/new
  def new
    @artealvid = Artealvid.new
  end

  # GET /artealvids/1/edit
  def edit
  end

  # POST /artealvids
  # POST /artealvids.json
  def create
    @artealvid = Artealvid.new(artealvid_params)

    respond_to do |format|
      if @artealvid.save
        format.html { redirect_to @artealvid, notice: 'Artealvid was successfully created.' }
        format.json { render :show, status: :created, location: @artealvid }
      else
        format.html { render :new }
        format.json { render json: @artealvid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artealvids/1
  # PATCH/PUT /artealvids/1.json
  def update
    respond_to do |format|
      if @artealvid.update(artealvid_params)
        format.html { redirect_to @artealvid, notice: 'Artealvid was successfully updated.' }
        format.json { render :show, status: :ok, location: @artealvid }
      else
        format.html { render :edit }
        format.json { render json: @artealvid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artealvids/1
  # DELETE /artealvids/1.json
  def destroy
    @artealvid.destroy
    respond_to do |format|
      format.html { redirect_to artealvids_url, notice: 'Artealvid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artealvid
      @artealvid = Artealvid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artealvid_params
      params.require(:artealvid).permit(:name, :lastname, :role, :position, :fecha)
    end
end
