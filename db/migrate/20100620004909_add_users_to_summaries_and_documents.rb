class AddUsersToSummariesAndDocuments < ActiveRecord::Migration
  def self.up
    
    add_column :summaries, :user_id, :integer
    add_column :documents, :user_id, :integer
  
  end

  def self.down
    
    remove_column :summaries, :user_id
    remove_column :documents, :user_id
    
  end
end
