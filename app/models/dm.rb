class Dm < ApplicationRecord
    has_many :dm_members, dependent: :destroy
    has_many :users, through: :dm_members
    has_many :dm_messages, dependent: :destroy
end
