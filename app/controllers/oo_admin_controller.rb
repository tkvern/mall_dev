class OoAdminController < ApplicationController
  layout 'managementSystem'
  def index
  end
  def login
  	render layout: false
  end
end
