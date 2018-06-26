class Twet < ApplicationRecord
    validates :content, length: { in: 1..140 },presence: true
    # validates :content, presence: true
end
