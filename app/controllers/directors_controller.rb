class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render "index.html.erb"
  end

  def show
    @current_director = Director.find_by({:id => params[:id]})
    render "show.html.erb"
  end

  def delete_row
    @current_director = Director.find_by({:id => params[:id]})
    @current_director.destroy
    redirect_to "/directors/"
  end


  def new_form
    render "new_form.html.erb"
  end

  def create_row
    new_director = Director.new
    new_director.dob = params[ :dob]
    new_director.name = params[ :name]
    new_director.bio = params[ :bio]
    new_director.image_url = params[ :image_url ]
    new_director.save
    redirect_to "/directors/"
  end

  def edit_form
    @current_director = Director.find_by({:id => params[:id]})
    render "edit_form.html.erb"
  end

  def edit_row
    @current_director = Director.find_by( { :id => params[:id] } )
    @current_director.dob = params[ :dob ]
    @current_director.name = params[ :name]
    @current_director.bio = params[ :bio]
    @current_director.image_url = params[ :image_url ]
    @current_director.save
    redirect_to "/directors/"
  end
end
