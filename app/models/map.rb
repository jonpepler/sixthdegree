class Map < ApplicationRecord
  validates :name, :presence => true
  validates :key, :presence => true

  before_validation :generate_key

  def generate_key
    key_check = true
    key = ""
    while key_check
      key = SecureRandom.urlsafe_base64 25
      key_check = false unless Map.find_by_key key
    end
    self.key = key
  end
end
