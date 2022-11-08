class Post < ApplicationRecord
  
 has_one_attached :image
  
 has_many :comments, dependent: :destroy 
 belongs_to :user

 enum status: [:active, :pending, :inactive]
 
 after_initialize do 
    if self.new_record?
       self.status ||= :pending
   end
  end
  
end