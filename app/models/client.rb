class Client < ActiveRecord::Base
  attr_accessible :areas, :name

  has_many :tags
end
