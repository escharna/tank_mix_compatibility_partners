class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiments,
           inverse_of: :requester

  validates :first_name, :last_name, :job_title, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
