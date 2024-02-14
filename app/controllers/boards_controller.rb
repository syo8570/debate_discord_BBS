class BoardsController < ApplicationController
  before_action :find_board, only: %i[edit update destroy]
  skip_before_action :require_login
  # binding.pryを使う時のコード
  # docker-compose up -d && docker attach 7c6b0a5faf2a


  def index
    @q = Board.ransack(params[:q])
    @boards = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def new
    title = params[:title]
    @subject = Subject.find_or_create_by(title: title)
    @board = Board.new(subject: @subject)
  end

  def show
    @board = Board.find(params[:id])
    @subject = Subject.find(params[:id])
  end
  
  def create
    @subject = Subject.find_or_create_by(title: params[:title])
    @board = current_user.boards.build(board_params)
    @board.subject = @subject
    if @board.save
      redirect_to boards_path, success: t('flash.board_success')

    else
      flash.now[:danger] = t('flash.board_fault')
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @subject = @board.subject
  end

  def update
    if @board.update(board_params)
      redirect_to board_path(@board), success: t('defaults.flash_message.updated', item: Board.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: Board.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @board.destroy!
    redirect_to boards_path, success: t('defaults.flash_message.deleted', item: Board.model_name.human), status: :see_other
  end

  def likes
    @q = current_user.bookmark_boards.ransack(params[:q])
    @like_boards = @q.result(distinct: true).includes(:user).page(params[:page]).order(created_at: :desc)
  end

  private

  def find_board
    @board = current_user.boards.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:conclusion, :runner_up, :subject_id)
  end
end
