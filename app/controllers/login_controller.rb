class LoginController < ApplicationController
  def do
    @User = User.find_by(id: session[:id])
  end
end
