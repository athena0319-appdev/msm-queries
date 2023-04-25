Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
   #directors
  get("/directors",{:controller=> "directors", :action=> "index" })
  get("/directors/eldest",{:controller=> "directors", :action=> "wisest" })
  get("/directors/youngest",{:controller=> "directors", :action=> "youngest" })
  get("/directors/:an_id",{:controller=> "directors", :action=> "director_details" })

  #movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:a_movie", { :controller => "movies", :action => "movie_details" })

  #actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_actor", { :controller => "actors", :action => "actor_details"})
end
