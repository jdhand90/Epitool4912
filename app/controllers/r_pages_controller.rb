class RPagesController < ApplicationController
  before_action :set_r_page, only: [:show, :edit, :update, :destroy]

  # GET /r_pages
  # GET /r_pages.json
  def index
    @r_pages = RPage.all
  end

  # GET /r_pages/1
  # GET /r_pages/1.json
  def show
  end

  # GET /r_pages/new
  def new
    @r_page = RPage.new
  end

  # GET /r_pages/1/edit
  def edit
  end

  # POST /r_pages
  # POST /r_pages.json
  def create
    @r_page = RPage.new(r_page_params)

    respond_to do |format|
      if @r_page.save
        format.html { redirect_to @r_page, notice: 'R page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_pages/1
  # PATCH/PUT /r_pages/1.json
  def update
    respond_to do |format|
      if @r_page.update(r_page_params)
        format.html { redirect_to @r_page, notice: 'R page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_pages/1
  # DELETE /r_pages/1.json
  def destroy
    @r_page.destroy
    respond_to do |format|
      format.html { redirect_to r_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_page
      @r_page = RPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_page_params
      params.require(:r_page).permit(:r_language_id, :name, :template, :properties)
    end
end
