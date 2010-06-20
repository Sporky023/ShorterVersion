class Document < ActiveRecord::Base

  has_many :summaries
  belongs_to :user
  
  validates_presence_of :name, :original_url

end
