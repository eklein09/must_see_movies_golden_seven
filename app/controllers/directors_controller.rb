class DirectorsController < ApplicationsController
  def index
    @list_of_directors = Director.all
    render("index.html.erb")
  end

  def show
    @current_director = Director.find_by({:id => params[:id]})
    render "show.html.erb"
  end
end
