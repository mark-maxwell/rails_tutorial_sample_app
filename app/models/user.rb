class User < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :email, presence: true, length: {minimum: 10, maximum: 255}
end
