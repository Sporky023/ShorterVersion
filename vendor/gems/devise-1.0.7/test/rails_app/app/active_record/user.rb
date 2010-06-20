class User < ActiveRecord::Base
  devise :authenticatable, :http_authenticatable, :confirmable, :lockable, :recoverable,
         :registerable, :rememberable, :timeoutable, :token_authenticatable,
         :trackable, :validatable

  attr_accessible :username, :email, :password, :password_confirmation
  
  validates_uniqueness_of :nickname
  validates_presence_of :nickname
  
end
