class RPagesToEntriesController < ApplicationController
  before_action :set_r_pages_to_entry, only: [:show, :edit, :update, :destroy]

  # GET /r_pages_to_entries
  # GET /r_pages_to_entries.json
  def index
    @r_pages_to_entries = RPagesToEntry.all
  end

  # GET /r_pages_to_entries/1
  # GET /r_pages_to_entries/1.json
  def show
  end

  # GET /r_pages_to_entries/new
  def new
    @r_pages_to_entry = RPagesToEntry.new
  end

  # GET /r_pages_to_entries/1/edit
  def edit
  end

  # POST /r_pages_to_entries
  # POST /r_pages_to_entries.json
  def create
    @r_pages_to_entry = RPagesToEntry.new(r_pages_to_entry_params)

    respond_to do |format|
      if @r_pages_to_entry.save
        format.html { redirect_to @r_pages_to_entry, notice: 'R pages to entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_pages_to_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_pages_to_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_pages_to_entries/1
  # PATCH/PUT /r_pages_to_entries/1.json
  def update
    respond_to do |format|
      if @r_pages_to_entry.update(r_pages_to_entry_params)
        format.html { redirect_to @r_pages_to_entry, notice: 'R pages to entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_pages_to_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_pages_to_entries/1
  # DELETE /r_pages_to_entries/1.json
  def destroy
    @r_pages_to_entry.destroy
    respond_to do |format|
      format.html { redirect_to r_pages_to_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_pages_to_entry
      @r_pages_to_entry = RPagesToEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_pages_to_entry_params
      params.require(:r_pages_to_entry).permit(:r_page_id, :r_entry_id, :properties)
    end
end
