class ActorsController < ApplicationController

  def index

    render ({:template => "actors_template/index.html.erb"})

  end
end
