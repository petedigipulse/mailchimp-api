class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # @mc = Mailchimp::API.new('e66a49d3c53f53ea3e172c278af314ae-us10')
 
  # MAILCHIMP-LIST-ID = "e66a49d3c53f53ea3e172c278af314ae-us10"
  # MAILCHIMP-LIST-ID = "0322578d69"

  # mailchimp = Mailchimp::API.new(MAILCHIMP-API-KEY)

  # mailchimp.lists.members(MAILCHIMP-LIST-ID)['data']


  require 'mailchimp'

class ApplicationController < ActionController::Base
  before_action :setup_mcapi

  def setup_mcapi
    @mc = Mailchimp::API.new('e66a49d3c53f53ea3e172c278af314ae-us10')
  end
end

end
