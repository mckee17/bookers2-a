class DmMember < ApplicationRecord
  belongs_to :user
  belongs_to :dm
end
