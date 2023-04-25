class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render ({:template => "actors_template/index.html.erb"})

  end

  def actor_details
    #params looks like {:an_actor=>"1"}
    the_actor = params.fetch("an_actor")
    @the_actor = Actor.where({ :id => the_actor }).at(0)
    @filmography = Movie.where({ :director_id => @the_actor.id })
    render({ :template => "actor_templates/show.html.erb"})
  end
end
