class RContactsController < ApplicationController
  before_action :set_r_contact, only: [:show, :edit, :update, :destroy]

  # GET /r_contacts
  # GET /r_contacts.json
  def index
    @r_contacts = RContact.all
  end

  # GET /r_contacts/1
  # GET /r_contacts/1.json
  def show
  end

  # GET /r_contacts/new
  def new
    @r_contact = RContact.new
  end

  # GET /r_contacts/1/edit
  def edit
  end

  # POST /r_contacts
  # POST /r_contacts.json
  def create
    @r_contact = RContact.new(r_contact_params)

    respond_to do |format|
      if @r_contact.save
        format.html { redirect_to @r_contact, notice: 'R contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_contacts/1
  # PATCH/PUT /r_contacts/1.json
  def update
    respond_to do |format|
      if @r_contact.update(r_contact_params)
        format.html { redirect_to @r_contact, notice: 'R contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_contacts/1
  # DELETE /r_contacts/1.json
  def destroy
    @r_contact.destroy
    respond_to do |format|
      format.html { redirect_to r_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_contact
      @r_contact = RContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_contact_params
      params.require(:r_contact).permit(:name, :profession, :email, :properties)
    end
end
