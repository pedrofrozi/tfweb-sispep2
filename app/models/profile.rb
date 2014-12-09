class Profile < ActiveRecord::Base
  belongs_to :user  
  has_many :basic_publications
end
