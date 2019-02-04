class Tag < ApplicationRecord
    has_many :link_tags
    has_many :gossips, through: :link_tags
end
