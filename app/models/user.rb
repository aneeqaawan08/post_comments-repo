class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :posts
has_many :comments, dependent: :destroy
has_one_attached :image

enum role: [:user, :admin]
enum status: [:active, :pending, :inactive]

  def comment_attribures=(comment_attributes)
   comment_attribures.each do |i, comment_attributes|
   self.comment.build(comment_attributes) 
   end
  end

after_initialize do 
  if self.new_record?
     self.role ||= :user
 end
end

after_initialize do 
  if self.new_record?
     self.status ||= :inactive
 end
end







end
