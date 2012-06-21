class Tag < ActiveRecord::Base
  attr_accessible :area, :epc, :timestamp, :client
  belongs_to :client
end
