class ApplicationController < ActionController::Base
  before_action do
    Current.request_id = SecureRandom.uuid
    Current.user = {
      name: "Jason Lee"
    }
  end
end
