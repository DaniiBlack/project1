class Admin < ApplicationRecord
  has_many :resources
  has_secure_password
end