class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :send_welcome_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :avatar
  has_many :posts
  has_many :comments

  def full_name 
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  private 

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
  
end
