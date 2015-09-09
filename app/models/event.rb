class Event < ActiveRecord::Base
    serialize :tabs
    serialize :entertaiment
    has_many :sponsorships
    has_many :sponsors, through: :sponsorships
end
