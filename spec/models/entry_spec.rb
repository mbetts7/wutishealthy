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
#

require 'spec_helper'

describe Entry do
  pending "add some examples to (or delete) #{__FILE__}"
end
