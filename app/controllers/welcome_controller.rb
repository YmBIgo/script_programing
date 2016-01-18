class WelcomeController < ApplicationController
  def index
    @users = User.where("has_gone_with = ?", false);
  end
end
