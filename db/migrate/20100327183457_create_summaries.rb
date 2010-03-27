class CreateSummaries < ActiveRecord::Migration
  def self.up
    create_table :summaries do |t|
      t.integer :document_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :summaries
  end
end
