class Gossip < ApplicationRecord
    belongs_to :user
    has_many :link_tags
    has_many :tags, through: :link_tags
    validates :content, presence: true
    validates :title, presence: true, 
    length: { in: 3..50 }



end

