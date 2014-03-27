class EntriesController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :delete]

  def index
    entries = Entry.all.order(created_at: :desc)
    
    render json: entries.to_json(include: :user)
  end

  def create
    entry_params = params[:entry].permit(:image_url, :link_url, :readability_title, :readability_author, :readability_domain, :readability_word_count, :readability_excerpt, :readability_content, :readability_short_url, :question)
    entry = current_user.entries.create(entry_params)

    render json: entry.to_json
  end

  def update
    # entry_params = params[:entry].permit(:image_url, :link_url, :readability_title, :readability_author, :readability_domain, :readability_word_count, :readability_excerpt, :readability_content, :readability_short_url, :question)
    # entry = current_user.entries.create(entry_params)

    render json: entry.to_json
  end

  def delete
  end

end