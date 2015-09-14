class Team < ActiveRecord::Base
  belongs_to :user
  has_any :players
end
