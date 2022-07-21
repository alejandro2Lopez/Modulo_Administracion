class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true
  validates :mail, presence: true, email: true, uniqueness: true

  def image_url
    @password1 = false
  end

  enum role: { administrator: 0, chef: 1 }
end
