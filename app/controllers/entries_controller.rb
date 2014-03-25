class EntriesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def create
  end

  def delete
  end

end
