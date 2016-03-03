class HauntsController < ApplicationController
  before_action :set_haunt, only: [:show, :edit, :update, :destroy]

  # GET /haunts
  # GET /haunts.json
  def index
    @haunts = Haunt.all
    @users = User.all
    @hash = Gmaps4rails.build_markers(@haunts) do |haunt, marker|
      marker.lat haunt.latitude
      marker.lng haunt.longitude
      marker.infowindow haunt.description
      marker.picture( {
        "url" => "http://www.imagemagick.org/Usage/images/ghost.gif",
        "width" => 32,
        "height" => 32
        })
      marker.json({ title: haunt.title })
    end
  end

  # GET /haunts/1
  # GET /haunts/1.json
  def show
  end

  # GET /haunts/new
  def new
    @haunt = Haunt.new
    @haunt.user_id = current_user.id
  end

  # GET /haunts/1/edit
  def edit
  end

  # POST /haunts
  # POST /haunts.json
  def create
    @haunt = Haunt.new(haunt_params)

    respond_to do |format|
      if @haunt.save
        format.html { redirect_to @haunt, notice: 'Haunt was successfully created.' }
        format.json { render :show, status: :created, location: @haunt }
      else
        format.html { render :new }
        format.json { render json: @haunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haunts/1
  # PATCH/PUT /haunts/1.json
  def update
    respond_to do |format|
      if @haunt.update(haunt_params)
        format.html { redirect_to @haunt, notice: 'Haunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @haunt }
      else
        format.html { render :edit }
        format.json { render json: @haunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haunts/1
  # DELETE /haunts/1.json
  def destroy
    @haunt.destroy
    respond_to do |format|
      format.html { redirect_to haunts_url, notice: 'Haunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


    # Use callbacks to share common setup or constraints between actions.
    def set_haunt
      @haunt = Haunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haunt_params
      params.require(:haunt).permit(:latitude, :longitude, :address, :description, :title, :user_id, :image)
    end
end