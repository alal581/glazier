require 'net/http'
require 'uri'

class Client < ApplicationRecord

  has_many :projects

  def self.get_suppliers(url: 'https://62b78ab6691dcea2733fe5d5.mockapi.io/api/v1/supplier')
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.path, {'Content-Type' => 'application/json'})

    response = http.request(request)
    JSON.parse(response.body) # e.g {answe
  end

  # def get_projects(url: 'https://62b78ab6691dcea2733fe5d5.mockapi.io/api/v1/supplier')
  def get_projects(url: 'https://62b78ab6691dcea2733fe5d5.mockapi.io/api/v1/projects')
      uri = URI(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(uri.path, {'Content-Type' => 'application/json'})

      response = http.request(request)
      JSON.parse(response.body) # e.g {answe
  end

end
