class Summary < ActiveRecord::Base

  belongs_to :document
  has_many :summary_votes
  
  validates_presence_of :body, :document_id
  
  def set_vote_caches
    self.up_votes = summary_votes.count(:conditions => {:score => 1})
    self.down_votes = summary_votes.count(:conditions => {:score => -1})
  end


end
