class Summary < ActiveRecord::Base

  belongs_to :document
  has_many :summary_votes
  
  validates_presence_of :body, :document_id
  
  VALID_VALUES_FOR = {
    :type_of_subset => ["full document", "specific pages"]
  }
  
  def set_vote_caches
    self.up_votes = summary_votes.count(:conditions => {:score => 1})
    self.down_votes = summary_votes.count(:conditions => {:score => -1})
  end
  
  def score
    self.up_votes.to_i - self.down_votes.to_i
  end

end
