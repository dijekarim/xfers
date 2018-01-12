class WelcomeController < ApplicationController
  def index
    begin
      @user = Xfers::User.retrieve
    rescue => exception
      
    end
  end
end
