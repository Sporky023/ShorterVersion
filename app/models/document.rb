class Document < ActiveRecord::Base

  has_many :summaries
  
  validates_presence_of :name, :original_url

end
