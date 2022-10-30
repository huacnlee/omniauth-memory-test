class WelcomeController < ApplicationController
  def index
    item = { name: "hello world", title: 100, request_id: Current.request_id }

    render json: item
  end
end
