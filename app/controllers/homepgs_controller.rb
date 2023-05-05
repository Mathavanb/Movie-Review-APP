class HomepgsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_homepg, only: %i[ show edit update destroy ]

  # GET /homepgs or /homepgs.json
  def index
    @homepgs = Homepg.all

      # Filter by release date
    if params[:start_date] && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @homepgs = @homepgs.where(release_date: start_date..end_date)
      @homepgs_count = @homepgs.where(release_date: start_date..end_date).count
    elsif params[:search].present?
      @homepgs = @homepgs.where("movie_name LIKE ?", "%#{params[:search]}%")
    else
      @homepgs = Homepg.all
      @homepgs_count = Homepg.count
    end

      @homepgs = @homepgs.order(rating_average: :desc)

  end

  # GET /homepgs/1 or /homepgs/1.json
  def show
  end

  # GET /homepgs/new
  def new
    @homepg = Homepg.new
  end

  # GET /homepgs/1/edit
  def edit
  end

  # POST /homepgs or /homepgs.json
  def create
    @homepg = Homepg.new(homepg_params)

    respond_to do |format|
      if @homepg.save
        format.html { redirect_to homepgs_url(@homepg), notice: "Homepg was successfully created." }
        format.json { render :show, status: :created, location: @homepg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @homepg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homepgs/1 or /homepgs/1.json
  def update
    respond_to do |format|
      if @homepg.update(homepg_params)
        format.html { redirect_to homepg_url(@homepg), notice: "Homepg was successfully updated." }
        format.json { render :show, status: :ok, location: @homepg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @homepg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepgs/1 or /homepgs/1.json
  def destroy
    @homepg.destroy

    respond_to do |format|
      format.html { redirect_to homepgs_url, notice: "Homepg was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homepg
      @homepg = Homepg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def homepg_params
      params.require(:homepg).permit(:movie_name, :release_date, :image, :video, :description)
    end
end
