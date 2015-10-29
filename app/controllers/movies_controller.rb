class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render "index.html.erb"
  end

  def show
    @current_movie = Movie.find_by({:id => params[:id]})
    render "show.html.erb"
  end

  def delete_row
    @current_movie = Movie.find_by({:id => params[:id]})
    @current_movie.destroy
    redirect_to "/movies/"
  end


  def new_form
    render "new_form.html.erb"
  end

  def create_row
    new_movie = Movie.new
    new_movie.title = params[ :title]
    new_movie.year = params[ :year]
    new_movie.duration = params[ :duration]
    new_movie.description = params[ :description]
    new_movie.image_url = params[ :image_url ]
    new_movie.save
    redirect_to "/movies/"
  end

  def edit_form
    @current_movie = Movie.find_by({:id => params[:id]})
    render "edit_form.html.erb"
  end

  def edit_row
    @current_movie = Movie.find_by( { :id => params[:id] } )
    @current_movie.title = params[ :title ]
    @current_movie.year = params[ :year]
    @current_movie.duration = params[ :duration]
    @current_movie.description = params[ :description]
    @current_movie.image_url = params[ :image_url ]
    @current_movie.save
    redirect_to "/movies/"
  end
end
