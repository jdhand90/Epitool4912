class REntriesToLinksController < ApplicationController
  before_action :set_r_entries_to_link, only: [:show, :edit, :update, :destroy]

  # GET /r_entries_to_links
  # GET /r_entries_to_links.json
  def index
    @r_entries_to_links = REntriesToLink.all
  end

  # GET /r_entries_to_links/1
  # GET /r_entries_to_links/1.json
  def show
  end

  # GET /r_entries_to_links/new
  def new
    @r_entries_to_link = REntriesToLink.new
  end

  # GET /r_entries_to_links/1/edit
  def edit
  end

  # POST /r_entries_to_links
  # POST /r_entries_to_links.json
  def create
    @r_entries_to_link = REntriesToLink.new(r_entries_to_link_params)

    respond_to do |format|
      if @r_entries_to_link.save
        format.html { redirect_to @r_entries_to_link, notice: 'R entries to link was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_entries_to_link }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_entries_to_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_entries_to_links/1
  # PATCH/PUT /r_entries_to_links/1.json
  def update
    respond_to do |format|
      if @r_entries_to_link.update(r_entries_to_link_params)
        format.html { redirect_to @r_entries_to_link, notice: 'R entries to link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_entries_to_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_entries_to_links/1
  # DELETE /r_entries_to_links/1.json
  def destroy
    @r_entries_to_link.destroy
    respond_to do |format|
      format.html { redirect_to r_entries_to_links_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_entries_to_link
      @r_entries_to_link = REntriesToLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_entries_to_link_params
      params.require(:r_entries_to_link).permit(:r_entry_id, :r_link_id, :properties)
    end
end
