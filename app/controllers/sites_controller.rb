class SitesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  respond_to :json
  
  def index
    entries = Entry.all
  end
  
end
