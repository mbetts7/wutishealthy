class EntriesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def index
    entries = Entry.all.order(:created_at)
    
    render json: entries.to_json
  end

  def create
    entry_params = params[:entry].permit(:image_url, :link_url, :readability_title, 
      :readability_author, :readability_domain, :readability_word_count, :readability_excerpt, :readability_content, :question, :user_id)
    entry = Entry.create(entry_params)

    render json: entry.to_json
  end

  def delete
  end

end