class User < ActiveRecord::Base
  has_many :tips
  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email
  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end

end
