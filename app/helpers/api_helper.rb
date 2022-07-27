require 'net/http'
require 'uri'

module ApiHelper

  def call(url: 'https://62b78ab6691dcea2733fe5d5.mockapi.io/api/v1/supplier')
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.path, {'Content-Type' => 'application/json'})

    response = http.request(request)
    JSON.parse(response.body) # e.g {answe
  end

end
