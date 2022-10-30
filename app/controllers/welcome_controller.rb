class WelcomeController < ApplicationController
  def index
    1000.times { $an_array << "A" + "B" + "C" }

    render plain: "Array is #{$an_array.size} items long"
  end

  def hello
    item = { name: "hello world", title: 100, request_id: Current.request_id }

    render json: item
  end
end
