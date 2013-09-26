class WelcomeController < ApplicationController
  def index
    if Channel.count == 1
      return redirect_to channel_path(Channel.first)
    end
    @channels = Channel.all
    render :layout => 'welcome'
  end
end
