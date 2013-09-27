class RLanguagesController < ApplicationController
  before_action :set_r_language, only: [:show, :edit, :update, :destroy]

  # GET /r_languages
  # GET /r_languages.json
  def index
    @r_languages = RLanguage.all
  end

  # GET /r_languages/1
  # GET /r_languages/1.json
  def show
  end

  # GET /r_languages/new
  def new
    @r_language = RLanguage.new
  end

  # GET /r_languages/1/edit
  def edit
  end

  # POST /r_languages
  # POST /r_languages.json
  def create
    @r_language = RLanguage.new(r_language_params)

    respond_to do |format|
      if @r_language.save
        format.html { redirect_to @r_language, notice: 'R language was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_language }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_languages/1
  # PATCH/PUT /r_languages/1.json
  def update
    respond_to do |format|
      if @r_language.update(r_language_params)
        format.html { redirect_to @r_language, notice: 'R language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_languages/1
  # DELETE /r_languages/1.json
  def destroy
    @r_language.destroy
    respond_to do |format|
      format.html { redirect_to r_languages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_language
      @r_language = RLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_language_params
      params.require(:r_language).permit(:language, :properties)
    end
end
