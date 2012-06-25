class Client < ActiveRecord::Base
  attr_accessible :areas, :name

  has_many :tags

  after_save :subscribe

  def subscribe
    url_server = "http://middleware-rfid.herokuapp.com/clients"
    url_callback = "http://middleware-subscriber.herokuapp.com" + Rails.application.routes.url_helpers.client_tags_path
    options = { :query => {name: self.name, area: self.areas, url: url_callback }}
    response = HTTParty.post(url_server, options)
  end
end
