class User < ApplicationRecord
  has_secure_password
  has_many :plots
  has_many :actions
  has_many :members
end
