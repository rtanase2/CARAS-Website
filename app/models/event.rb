class Event < ActiveRecord::Base
    serialize :tabs
    serialize :sponsors
    serialize :entertaiment
    has_many :vendor
    has_many :sponsor
    has_many :cook_off_participant
    has_many :entertainer
    has_many :carshow_participant
    has_many :volunteer
end
