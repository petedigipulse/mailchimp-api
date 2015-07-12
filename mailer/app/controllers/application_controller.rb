class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @mc = Mailchimp::API.new('e66a49d3c53f53ea3e172c278af314ae-us10')
end
