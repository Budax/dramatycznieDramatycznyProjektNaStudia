class MovisController < ApplicationController
  before_action :set_movi, only: [:show, :edit, :update, :destroy]

  # GET /movis
  # GET /movis.json
  def index
    @movis = Movi.all
  end

  # GET /movis/1
  # GET /movis/1.json
  def show
  end

  # GET /movis/new
  def new
    @movi = Movi.new
  end

  # GET /movis/1/edit
  def edit
  end

  # POST /movis
  # POST /movis.json
  def create
    @movi = Movi.new(movi_params)

    respond_to do |format|
      if @movi.save
        format.html { redirect_to @movi, notice: 'Movi was successfully created.' }
        format.json { render :show, status: :created, location: @movi }
      else
        format.html { render :new }
        format.json { render json: @movi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movis/1
  # PATCH/PUT /movis/1.json
  def update
    respond_to do |format|
      if @movi.update(movi_params)
        format.html { redirect_to @movi, notice: 'Movi was successfully updated.' }
        format.json { render :show, status: :ok, location: @movi }
      else
        format.html { render :edit }
        format.json { render json: @movi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movis/1
  # DELETE /movis/1.json
  def destroy
    @movi.destroy
    respond_to do |format|
      format.html { redirect_to movis_url, notice: 'Movi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movi
      @movi = Movi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movi_params
      params.require(:movi).permit(:title, :year, :country, :film_genre, :director, :actors, :comments, :reports)
    end
end
