class BooksController < ApplicationController

  before_action :set_book, only: [:show, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
    @book
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
    if @book.save
      format.html { redirect_to book_url(@book) }
      format.json { render :show, status: :created, location: @book }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @book.errors, status: :unprocessable_entity }
    end
  end
  end

  def update
    respond_to do |format|
      if @book.save(book_params)
        format.html { redirect_to book_url(@book) }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private 

    def set_book
      @book = Book.find(params(:id))
    end

    def book_params
      params.require(:book).permit(:name, :description, :author, :genre_id)
    end

end
