class FraudesController < ApplicationController
  before_action :set_fraude, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :only => [:edit, :update, :destroy]
  # GET /fraudes
  # GET /fraudes.json
  def index
    @fraudes = Fraude.all
  end

  # GET /fraudes/1
  # GET /fraudes/1.json
  def show
  end

  # GET /fraudes/new
  def new

    @fraude = Fraude.new
  end

  # GET /fraudes/1/edit
  def edit

  end

  # POST /fraudes
  # POST /fraudes.json
  def create
    @fraude = Fraude.new(fraude_params)

    respond_to do |format|
      if @fraude.save
        format.html { redirect_to @fraude, notice: 'Fraude was successfully created.' }
        format.json { render :show, status: :created, location: @fraude }
      else
        format.html { render :new }
        format.json { render json: @fraude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fraudes/1
  # PATCH/PUT /fraudes/1.json
  def update

    respond_to do |format|
      if @fraude.update(fraude_params)
        format.html { redirect_to @fraude, notice: 'Fraude was successfully updated.' }
        format.json { render :show, status: :ok, location: @fraude }
      else
        format.html { render :edit }
        format.json { render json: @fraude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fraudes/1
  # DELETE /fraudes/1.json
  def destroy

    @fraude.destroy
    respond_to do |format|
      format.html { redirect_to fraudes_url, notice: 'Fraude was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraude
      @fraude = Fraude.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fraude_params
      params.require(:fraude).permit(:titulo, :donde, :descripcion, :links)
    end
end
