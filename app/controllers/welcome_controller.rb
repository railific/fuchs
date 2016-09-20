class WelcomeController < ApplicationController

def show
  render template: "welcome/#{params[:page]}"
end

end
