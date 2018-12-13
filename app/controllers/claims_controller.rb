class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]

  # GET /claims
  def index
    @claims = Claim.all
  end

  # GET /claims/1
  def show
  end

  # GET /claims/new
  def new
    @claim = Claim.new
  end

  # GET /claims/1/edit
  def edit
  end

  # POST /claims
  def create
    @claim = Claim.new(claim_params)

    if @claim.save
      redirect_to @claim, notice: 'Claim was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /claims/1
  def update
    if @claim.update(claim_params)
      redirect_to @claim, notice: 'Claim was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /claims/1
  def destroy
    @claim.destroy
    redirect_to claims_url, notice: 'Claim was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim
      @claim = Claim.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def claim_params
      params.require(:claim).permit(:number, :name)
    end
end
