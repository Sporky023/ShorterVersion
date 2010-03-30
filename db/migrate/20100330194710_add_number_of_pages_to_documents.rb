class AddNumberOfPagesToDocuments < ActiveRecord::Migration
  def self.up
  
    add_column :documents, :number_of_pages, :integer
  
  end

  def self.down
    
    remove_column :documents, :number_of_pages
    
  end
end
