class CreateSummaryVotes < ActiveRecord::Migration
  def self.up
    create_table :summary_votes do |t|
      t.integer :summary_id
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :summary_votes
  end
end
