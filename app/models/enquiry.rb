class Enquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates :name, presence: true
  validates :email, presence: true

  def self.expensive_method
    sleep(1)
  end
    
end