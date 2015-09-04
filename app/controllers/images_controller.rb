class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @gallery = Gallery.find(params[:gallery_id])
    @images = @gallery.images.all

  end

  # GET /images/1
  # GET /images/1.json
  def show
     @galleries = Gallery.all
     @gallery = @galleries.find(params[:gallery_id])
 end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
    @galleries = Gallery.all
    @gallery = @galleries.find(params[:gallery_id])
    @image = @gallery.images.find(params[:id])
 end

  # POST /images
  # POST /images.json
  def create
     @gallery = Gallery.find(params[:gallery_id])
     @image = @gallery.images.create(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to gallery_path(@gallery), notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to gallery_url(@gallery), notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @image.destroy
    respond_to do |format|
      format.html { redirect_to gallery_url(@gallery), notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @galleries = Gallery.all
      @gallery = Gallery.find(params[:gallery_id])
      @image = @gallery.images.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:name, :filename, :description, :Gallery_id)
    end
end
