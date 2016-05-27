class User < ActiveRecord::Base
  has_many :jobs_users
  has_many :user, through: :jobs_users
end
