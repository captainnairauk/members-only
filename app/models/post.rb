class Post < ApplicationRecord
  belongs_to :user

  validates :title, 
            presence: true, 
            uniqueness: { case_sensitive: false }, length: {maximum: 30}
  
  validates :body, presence: true, 
            uniqueness: { case_sensitive: false }
  
  validates :user_id, presence: true  
end
