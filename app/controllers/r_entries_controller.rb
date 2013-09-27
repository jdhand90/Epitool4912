class REntriesController < ApplicationController
  before_action :set_r_entry, only: [:show, :edit, :update, :destroy]

  # GET /r_entries
  # GET /r_entries.json
  def index
    @r_entries = REntry.all
  end

  # GET /r_entries/1
  # GET /r_entries/1.json
  def show
  end

  # GET /r_entries/new
  def new
    @r_entry = REntry.new
  end

  # GET /r_entries/1/edit
  def edit
  end

  # POST /r_entries
  # POST /r_entries.json
  def create
    @r_entry = REntry.new(r_entry_params)

    respond_to do |format|
      if @r_entry.save
        format.html { redirect_to @r_entry, notice: 'R entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_entries/1
  # PATCH/PUT /r_entries/1.json
  def update
    respond_to do |format|
      if @r_entry.update(r_entry_params)
        format.html { redirect_to @r_entry, notice: 'R entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_entries/1
  # DELETE /r_entries/1.json
  def destroy
    @r_entry.destroy
    respond_to do |format|
      format.html { redirect_to r_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_entry
      @r_entry = REntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_entry_params
      params.require(:r_entry).permit(:r_language_id, :title, :entry, :order, :properties)
    end
end
