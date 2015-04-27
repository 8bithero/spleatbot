class Tab < ActiveRecord::Base
  belongs_to :venue
  has_many :user_tabs
end
