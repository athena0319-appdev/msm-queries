class MoviesController < ApplicationController

  def index

    render ({:template => "movies_template/index.html.erb"})

  end
end
