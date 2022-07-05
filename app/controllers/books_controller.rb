class BooksController < ApplicationController


    def index
        books = Book.all
        raise StandardException if books.nil?
        render json: books
    end

    def create
        permitted = [:name, :author_id, :published]
        book_attribute = params.require(:book).permit(permitted)
        books = Book.new(book_attribute)

        render json: book_attribute if books.save
    end
end
