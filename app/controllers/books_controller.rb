class BooksController < ApplicationController
  def new
    @book=Book.new
  end

  def create
    @book = Book.new(post_image_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
  end

  def edit
    @user = current_user
    @books = Book.all
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end
end
