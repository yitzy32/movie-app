class Api::ActorController < ApplicationController
  def one_actor
    @actor = Actor.find_by(id: 4)
    render "an_actor.json.jb"
  end
end
