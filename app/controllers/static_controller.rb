class StaticController < ApplicationController
  def index
    @welcome_message = { "Hello": "World" }
  end
end
