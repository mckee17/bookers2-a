class DmMessage < ApplicationRecord
  belongs_to :user
  belongs_to :dm
end
