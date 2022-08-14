require "pry"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get '/authors' do 
    author = Author.all 
    author.to_json
  end
  get '/books' do
    books = Book.all 
    books.to_json 
  end
  post '/books' do
    books = Book.create(
      title: params[:title]
    )
    books.to_json
  end
  delete '/books/:id' do
    books = Book.find(params[:id])
    books.destroy
    books.to_json
  end
  get '/authors/:id' do
    authors = Book.find_by(author_id: params[:id])
    authors.to_json
  end
end
