class Jobapp < ApplicationRecord
	validates :number_of_post, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
	validates :age, format: { with: /\A\d+\z/, message: "put age in numeric form." }
	validates :salary, format: { with: /\A\d+\z/, message: "must be in numeric." }
end
