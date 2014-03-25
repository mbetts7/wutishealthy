class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :image_url
      t.text :link_url
      t.string :readability_title
      t.string :readability_author
      t.string :readability_domain
      t.integer :readability_word_count
      t.text :readability_excerpt
      t.text :readability_content
      t.string :question

      t.timestamps
    end
  end
end
