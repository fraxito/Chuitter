class ChuitsController < ApplicationController
  before_action :set_chuit, only: [:show, :edit, :update, :destroy]

  # GET /chuits
  # GET /chuits.json
  def index
    @chuits = Chuit.all
  end

  # GET /chuits/1
  # GET /chuits/1.json
  def show
  end

  # GET /chuits/new
  def new
    @chuit = Chuit.new
  end

  # GET /chuits/1/edit
  def edit
    if @chuit.usuario_id != session[:usuario_id]
      flash[:notice] = "No puedes editar este Chuit"
      redirect_to(chuits_path)
    end
  end

  # POST /chuits
  # POST /chuits.json
  def create
    @chuit = Chuit.new(chuit_params)

    respond_to do |format|
      if @chuit.save
        format.html { redirect_to @chuit, notice: 'Chuit was successfully created.' }
        format.json { render :show, status: :created, location: @chuit }
      else
        format.html { render :new }
        format.json { render json: @chuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuits/1
  # PATCH/PUT /chuits/1.json
  def update
    respond_to do |format|
      if @chuit.update(chuit_params)
        format.html { redirect_to @chuit, notice: 'Chuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuit }
      else
        format.html { render :edit }
        format.json { render json: @chuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuits/1
  # DELETE /chuits/1.json
  def destroy
    @chuit.destroy
    respond_to do |format|
      format.html { redirect_to chuits_url, notice: 'Chuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuit
      @chuit = Chuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chuit_params
      params.require(:chuit).permit(:text, :usuario_id)
    end
end
