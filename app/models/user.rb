class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories, dependent: :destroy, foreign_key: 'author_id'
  has_many :payments, dependent: :destroy, foreign_key: 'author_id'

  validates :name, presence: true, length: { maximum: 250 }

  def admin?(request)
    role == request.to_s
  end
end
