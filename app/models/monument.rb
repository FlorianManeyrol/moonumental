class Monument < ApplicationRecord
  acts_as_votable
  belongs_to :user
end
