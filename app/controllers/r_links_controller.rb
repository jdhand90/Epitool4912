class RLinksController < ApplicationController
  before_action :set_r_link, only: [:show, :edit, :update, :destroy]

  # GET /r_links
  # GET /r_links.json
  def index
    @r_links = RLink.all
  end

  # GET /r_links/1
  # GET /r_links/1.json
  def show
  end

  # GET /r_links/new
  def new
    @r_link = RLink.new
  end

  # GET /r_links/1/edit
  def edit
  end

  # POST /r_links
  # POST /r_links.json
  def create
    @r_link = RLink.new(r_link_params)

    respond_to do |format|
      if @r_link.save
        format.html { redirect_to @r_link, notice: 'R link was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_link }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_links/1
  # PATCH/PUT /r_links/1.json
  def update
    respond_to do |format|
      if @r_link.update(r_link_params)
        format.html { redirect_to @r_link, notice: 'R link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_links/1
  # DELETE /r_links/1.json
  def destroy
    @r_link.destroy
    respond_to do |format|
      format.html { redirect_to r_links_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_link
      @r_link = RLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_link_params
      params.require(:r_link).permit(:link, :properties)
    end
end
