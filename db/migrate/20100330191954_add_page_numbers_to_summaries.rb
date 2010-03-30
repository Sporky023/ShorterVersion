class AddPageNumbersToSummaries < ActiveRecord::Migration
  def self.up
    
    add_column :summaries, :type_of_subset, :string, :default => Summary::VALID_VALUES_FOR[:type_of_subset].first
    add_column :summaries, :page_begin, :integer
    add_column :summaries, :page_end, :integer
  
  end

  def self.down
    
    remove_column :summaries, :type_of_subset
    remove_column :summaries, :page_begin
    remove_column :summaries, :page_end
    
  end
end
