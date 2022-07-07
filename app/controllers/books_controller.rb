class BooksController < ApplicationController


    def index
        books = Book.all
        raise StandardException if books.nil?
        render json: books
    end

    def create
        permitted = [:name, :author_id, :published]
        book_attribute = params.permit(permitted)
        books = Book.new(book_attribute)
        books.save!
        render json: book_attribute
    end
end
