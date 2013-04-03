class Listing < ActiveRecord::Base
  before_create :generate_secret_url
  attr_accessible :description, :title

  validates_presence_of :title, :description

  def generate_secret_url
    self.secret_url = SecureRandom.hex(6)
  end
end
