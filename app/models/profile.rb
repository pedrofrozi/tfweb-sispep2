class Profile < ActiveRecord::Base
  belongs_to :user  
  has_many :basic_publications
  
  def name
    self.first_name + " " + self.last_name 
  end
end
