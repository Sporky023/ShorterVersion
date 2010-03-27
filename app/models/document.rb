class Document < ActiveRecord::Base

  has_many :summaries
  
  validates_presence_of :body, :name, :original_url

end
