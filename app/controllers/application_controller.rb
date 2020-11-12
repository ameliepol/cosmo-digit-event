class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_navbar
  before_action :active_navbar_link

  def set_navbar
    @navbar= {}
  end

  def set_active_navbar_link(index)
    @navbar["link_#{index}"]="active"
  end

  def active_navbar_link
    set_active_navbar_link(1)
  end

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
