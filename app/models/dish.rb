class Dish < ApplicationRecord
  has_one_attached :image
  enum enable: { No: 0, Yes: 1 }
  validates :name, presence: true
  validates :cost, numericality: true, presence: true
  validates :description, presence: true
  validates :image, presence: true
  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
