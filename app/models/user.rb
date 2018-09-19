class User < ApplicationRecord
  validates :account, presence: true, length: { minimum: 3 }
  validates :username, presence: true
end
