class SummaryVote < ActiveRecord::Base

  belongs_to :summary
  
  after_create :set_summary_counter_caches
  
  def set_summary_counter_caches
    self.summary.set_vote_caches
    self.summary.save
  end
  

end
