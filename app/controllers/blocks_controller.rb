class BlocksController < ApplicationController
  before_action :set_block, only: %i[ show update destroy ]

  # GET /blocks
  def index
    @blocks = Block.all

    render json: @blocks
  end

  # GET /blocks/1
  def show
    render json: @block
  end

  # POST /blocks
  def create
    @block = Block.new(block_params)

    if @block.save
      render json: @block, status: :created, location: @block
    else
      render json: @block.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blocks/1
  def update
    if @block.update(block_params)
      render json: @block
    else
      render json: @block.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blocks/1
  def destroy
    @block.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block
      @block = Block.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def block_params
      params.require(:block).permit(:zip_code, :neighborhood, :street, :number, :additional_information, :latitude, :longitude, :fee_id)
    end
end
