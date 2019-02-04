class Gossip < ApplicationRecord
    belongs_to :user
    has_many :link_tags
    has_many :tags, through: :link_tags
end
