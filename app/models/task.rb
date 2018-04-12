class Task < ApplicationRecord
	validates :estimated_hour, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :title, presence: true, uniqueness: { case_sensitive: false }, format: {with:  /\A[a-zA-Z]+\z/,
    message: "Only letters allowed"}
end
