class BoardsController < ApplicationController
  def index
    @boards = current_user.boards
  end

  def new
    @board = Board.new
  end

  def edit
  end

  def show
  end
end
