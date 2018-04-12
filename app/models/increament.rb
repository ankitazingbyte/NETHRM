class Increament < ApplicationRecord
	validates :current_salary, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :increament_salary, format: { with: /\A\d+\z/, message: "must be in numeric." }
end
