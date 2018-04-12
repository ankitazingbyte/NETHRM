class Fund < ApplicationRecord
  validates :employee_share, format: { with: /\A\d+\z/, message: "must be in numeric." }
  validates :organization_share, format: { with: /\A\d+\z/, message: "must be in numeric." }
end
