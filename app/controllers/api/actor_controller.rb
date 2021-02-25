class Api::ActorController < ApplicationController
  def one_actor
    @actor = Actor.find_by(id: 4)
    render "an_actor.json.jb"
  end

  def last_bunch
    @last_actors = Actor.last(5)
    render "last_actors.json.jb"
  end
end
