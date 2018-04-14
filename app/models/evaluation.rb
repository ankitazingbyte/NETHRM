class Evaluation < ApplicationRecord
	validates :title, presence: true, uniqueness: { case_sensitive: false }, format: {with:  /\A[a-zA-Z]+\z/,
    message: "Only letters allowed"}
end
