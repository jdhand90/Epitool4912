class RPropertyDefinitionsController < ApplicationController
  before_action :set_r_property_definition, only: [:show, :edit, :update, :destroy]

  # GET /r_property_definitions
  # GET /r_property_definitions.json
  def index
    @r_property_definitions = RPropertyDefinition.all
  end

  # GET /r_property_definitions/1
  # GET /r_property_definitions/1.json
  def show
  end

  # GET /r_property_definitions/new
  def new
    @r_property_definition = RPropertyDefinition.new
  end

  # GET /r_property_definitions/1/edit
  def edit
  end

  # POST /r_property_definitions
  # POST /r_property_definitions.json
  def create
    @r_property_definition = RPropertyDefinition.new(r_property_definition_params)

    respond_to do |format|
      if @r_property_definition.save
        format.html { redirect_to @r_property_definition, notice: 'R property definition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_property_definition }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_property_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_property_definitions/1
  # PATCH/PUT /r_property_definitions/1.json
  def update
    respond_to do |format|
      if @r_property_definition.update(r_property_definition_params)
        format.html { redirect_to @r_property_definition, notice: 'R property definition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_property_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_property_definitions/1
  # DELETE /r_property_definitions/1.json
  def destroy
    @r_property_definition.destroy
    respond_to do |format|
      format.html { redirect_to r_property_definitions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_property_definition
      @r_property_definition = RPropertyDefinition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_property_definition_params
      params.require(:r_property_definition).permit(:property, :symbol, :table, :definition, :properties)
    end
end
