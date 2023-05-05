class ReviewpgsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_homepg, except: :profile
  before_action :set_reviewpg, only: %i[ show edit update ]

  # GET /reviewpgs or /reviewpgs.json
  def index
    @reviewpg = @homepg.reviewpgs.all
  end

  def profile
  end
  # GET /reviewpgs/1 or /reviewpgs/1.json
  def show
  end

  # GET /reviewpgs/new
  def new
    @reviewpg = @homepg.reviewpgs.new
  end

  # GET /reviewpgs/1/edit
  def edit
  end

  # POST /reviewpgs or /reviewpgs.json
  def create
    @reviewpg = @homepg.reviewpgs.new(reviewpg_params)
    @reviewpg.user_id = current_user.id
    respond_to do |format|
      if @reviewpg.save
        format.html { redirect_to homepg_reviewpgs_url(@homepg,@reviewpg), notice: "Reviewpg was successfully created." }
        format.json { render :show, status: :created, location: @reviewpg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reviewpg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviewpgs/1 or /reviewpgs/1.json
  def update
    respond_to do |format|
      if @reviewpg.update(reviewpg_params)
        format.html { redirect_to homepg_reviewpgs_url(@homepg,@reviewpg), notice: "Reviewpg was successfully updated." }
        format.json { render :show, status: :ok, location: @reviewpg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reviewpg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviewpgs/1 or /reviewpgs/1.json
  def destroy
    @homepg = Homepg.find(params[:homepg_id])
    @reviewpg = @homepg.reviewpgs.find(params[:id])
    @reviewpg.destroy
    redirect_to homepg_reviewpgs_path(@homepg), notice: "Review deleted successfully."
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    def set_homepg
      @homepg = Homepg.find(params[:homepg_id])
    end

    def set_reviewpg
      @reviewpg = @homepg.reviewpgs.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reviewpg_params
      params.require(:reviewpg).permit(:review, :rating, :homepg_id)
    end
end
