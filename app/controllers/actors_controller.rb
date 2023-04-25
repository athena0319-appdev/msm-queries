class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render ({:template => "actors_template/index.html.erb"})

  end

  def actor_details
    the_actor = params.fetch("an_actor")
    @the_actor = Actor.where({ :id => the_actor }).at(0)
    @filmography = Movie.where({ :director_id => @the_actor.id })
    characters = Character.where({ :id => @the_actor.id }).at(0)
    @character_name = characters.name
    render({ :template => "actors_template/show.html.erb"})
  end
end
