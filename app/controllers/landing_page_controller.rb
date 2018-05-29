# frozen_string_literal: true

class LandingPageController < ApplicationController
  layout "landing_page"
  
  def index
    @images = {
      instagram: path_to_asset('server-instagram.png'),
      twitter: path_to_asset('server-twitter.png'),
      medium: path_to_asset('server-medium.png')
    }
  end
  
  private
  
  def path_to_asset(asset)
    ApplicationController.helpers.asset_path(asset)
  end
end