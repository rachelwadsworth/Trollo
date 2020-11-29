class BoardsController < ApplicationController

  class BoardsController < ApplicationController
    before_action :set_board, only: [:show, :edit, :update]
    
    def index
      @boards = current_user.boards
    end
    
    def show
    end
  
    def new
      @board = Board.new
    end
  
    def create
      @board = current_user.boards.new(board_params)
  
      if @board.save
        redirect_to boards_path
      else 
        render :new
      end
    end
    
    
    private
    
    def set_board
      @board = current_user.boards.find(params[:id])
    end
  
  
    def board_params
      params.require(:board).permit(:name)
    end
  end
end
