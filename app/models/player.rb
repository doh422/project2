class Player < ActiveRecord::Base
	validates :name, presence: true
  # belongs_to :team
  # belongs_to :user

  has_many :rosters
  has_many :teams, through: :rosters


end
