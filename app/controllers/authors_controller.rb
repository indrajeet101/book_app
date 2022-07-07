class AuthorsController < ApplicationController
    def index
        authors = Author.all
        raise StandardException if authors.nil?
        render json: authors
    end

    def create
       author_attribute = params.permit(:name)
        authors = Author.new(author_attribute)
        authors.save!
        render json: author_attribute
    end
end