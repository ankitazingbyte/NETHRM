class Salslip < ApplicationRecord
	validates :basic_salary, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :tax, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :provident_fund, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :loan, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :Leave_deduction, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :grand_total, format: { with: /\A\d+\z/, message: "must be in numeric." }
end
