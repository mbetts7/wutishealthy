# == Schema Information
#
# Table name: entries
#
#  id                     :integer          not null, primary key
#  image_url              :text
#  link_url               :text
#  readability_title      :string(255)
#  readability_author     :string(255)
#  readability_domain     :string(255)
#  readability_word_count :integer
#  readability_excerpt    :text
#  readability_content    :text
#  question               :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  user_id                :integer
#

class Entry < ActiveRecord::Base
  belongs_to :user

  # validates_presence_of :question 
end
