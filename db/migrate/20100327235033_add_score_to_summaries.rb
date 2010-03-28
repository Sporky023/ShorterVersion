class AddScoreToSummaries < ActiveRecord::Migration
  def self.up
    
    add_column :summaries, :up_votes, :integer
    add_column :summaries, :down_votes, :integer
    
    begin
      Summary.all(:include => :summary_votes).each do |s|
        s.set_vote_caches
        s.save
      end
    rescue Exception => e
      puts "error: #{e.message}"
    end
    
  end

  def self.down
    
    remove_column :summaries, :up_votes
    remove_column :summaries, :down_votes
    
  end
end
