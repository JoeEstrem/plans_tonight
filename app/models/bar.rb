class Bar < ApplicationRecord
  has_many :plans, dependent: :destroy
  has_one_attached :photo

  validates :name, :address, :mood, :price, :longitude, :latitude, :url, presence: true
  validates :name, length: { minimum: 3, maximum: 50 }
  validates :address, uniqueness: true
  # validates :smoking, presence: true

  private

  def set_defaults
    self.smoking_allowed ||= false
  end

  def photos_presence
    if photos.empty?
      errors.add(:image, "can't be blank.")
    end
  end
end
