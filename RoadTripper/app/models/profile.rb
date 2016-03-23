class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :road_trips
end
