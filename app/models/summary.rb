class Summary < ActiveRecord::Base

  belongs_to :document
  
  validates_presence_of :body, :document_id


end
