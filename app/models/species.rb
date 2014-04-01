class Species < ActiveRecord::Base
  validates :name, :presence => true
  validates :kind, :presence => true
  has_many :sightings
end
