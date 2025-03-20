class BooksController < ApplicationController
  def index
    @booklist = Book.all
    @booknew = Book.new
  end

  def new
  end

  def create
    @booknew = Book.new(book_params)
    @booknew.save
    redirect_to book_path(@booknew.id)
  end

  def show
    @book = Book.find(params[:id]) # このparamsがなんなのか理解してない
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
