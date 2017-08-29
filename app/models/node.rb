class Node < ApplicationRecord
  has_ancestry
  validates :name, :presence => true
  validates :key, :presence => true

  before_validation :generate_key

  def generate_key
    key_check = true
    key = ""
    while key_check
      key = SecureRandom.urlsafe_base64 25
      key_check = false unless Node.find_by_key key
    end
    self.key = key
  end

  def get_url
    request.domain + '/nodes/' + self.key
  end

  def get_chain_string
    return "#{self.name} " if self.root?
    self.parent.get_chain_string + " > #{self.name}"
  end
end
