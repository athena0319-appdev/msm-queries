class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render ({:template => "actors_template/index.html.erb"})

  end

  def actor_details
    the_actor = params.fetch("an_actor")
    matching_actors = Actor.where({ :id => the_actor })
    @the_actor = matching_actors.at(0)
    render({ :template => "actors_template/show.html.erb"})
  end
end
