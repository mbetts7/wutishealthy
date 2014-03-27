class AddVotesToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :vote_yes, :integer, default: 0
    add_column :entries, :vote_no, :integer, default: 0
  end
end
