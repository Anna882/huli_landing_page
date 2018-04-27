class Member < ApplicationRecord
  belongs_to :team
  has_one :project, through: :team
end
