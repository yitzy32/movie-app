class Api::ActorController < ApplicationController
  def one_actor
    @name = params["name"]
    render "an_actor.json.jb"
  end

  def last_bunch
    @last_actors = Actor.last(5)
    render "last_actors.json.jb"
  end
end
