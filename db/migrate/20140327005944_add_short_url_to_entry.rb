class AddShortUrlToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :readability_short_url, :string
  end
end
