class EntriesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def index
    entries = Entry.all.order(:created_at)
    render json: entries.to_json
  end

  def create
  end

  def delete
  end

end
