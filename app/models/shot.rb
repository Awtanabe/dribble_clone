class Shot < ApplicationRecord
  has_many :comments
  belongs_to :user
  mount_uploader :user_shot, UserShotUploader
  is_impressionable
end
