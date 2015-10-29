class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render "index.html.erb"
  end

  def show
    @current_actor = Actor.find_by({:id => params[:id]})
    render "show.html.erb"
  end

  def delete_row
    @current_actor = Actor.find_by({:id => params[:id]})
    @current_actor.destroy
    redirect_to "/actors/"
  end


  def new_form
    render "new_form.html.erb"
  end

  def create_row
    new_actor = Actor.new
    new_actor.image_url = params[ :image_url ]
    new_actor.dob = params[ :dob]
    new_actor.name = params[ :name]
    new_actor.bio = params[ :bio]
    new_actor.save
    redirect_to "/actors/"
  end

  def edit_form
    @current_actor = Actor.find_by({:id => params[:id]})
    render "edit_form.html.erb"
  end

  def edit_row
    @current_actor = Actor.find_by( { :id => params[:id] } )
    @current_actor.image_url = params[ :image_url ]
    @current_actor.dob = params[ :dob ]
    @current_actor.name = params[ :name]
    @current_actor.bio = params[ :bio]
    @current_actor.save
    redirect_to "/actors/"
  end
end
