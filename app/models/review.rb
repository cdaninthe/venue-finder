class Review < ApplicationRecord
    validates :title, presence: true
    validates :comment, presence:true, length: { minimum: 10, message: "should be at least 10 characters" }

    belongs_to :user
    belongs_to :venue
end
