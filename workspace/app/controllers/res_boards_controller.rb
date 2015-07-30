class ResBoardsController < ApplicationController
  before_action :set_res_board, only: [:show, :edit, :update, :destroy]

  # GET /res_boards
  # GET /res_boards.json
  def index
    @res_boards = ResBoard.all
  end

  # GET /res_boards/1
  # GET /res_boards/1.json
  def show
  end

  # GET /res_boards/new
  def new
    @res_board = ResBoard.new
  end

  # GET /res_boards/1/edit
  def edit
  end

  # POST /res_boards
  # POST /res_boards.json
  def create
    @res_board = ResBoard.new(res_board_params)

    respond_to do |format|
      if @res_board.save
        format.html { redirect_to @res_board, notice: 'Res board was successfully created.' }
        format.json { render :show, status: :created, location: @res_board }
      else
        format.html { render :new }
        format.json { render json: @res_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /res_boards/1
  # PATCH/PUT /res_boards/1.json
  def update
    respond_to do |format|
      if @res_board.update(res_board_params)
        format.html { redirect_to @res_board, notice: 'Res board was successfully updated.' }
        format.json { render :show, status: :ok, location: @res_board }
      else
        format.html { render :edit }
        format.json { render json: @res_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /res_boards/1
  # DELETE /res_boards/1.json
  def destroy
    @res_board.destroy
    respond_to do |format|
      format.html { redirect_to res_boards_url, notice: 'Res board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_res_board
      @res_board = ResBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def res_board_params
      params.require(:res_board).permit(:title, :address, :phoneNumber,:picture, :picture_cache, :contents)
    end
end
