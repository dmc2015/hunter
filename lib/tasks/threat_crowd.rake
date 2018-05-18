namespace :threat_crowd do

  desc 'Get Threat Crowd Data'
  task email_api: :environment do
    # email/report/?email=william19770319@yahoo.com

    # ['email', 'domain', 'ip', 'antivirus', 'file'].each do |endpoint, param|
    #   pp 'endpoint', endpoint
    #   pp 'param', param
      # request = Typhoeus::Request.new(
      #   "https://www.threatcrowd.org/searchApi/v2/#{endpoint}/report/?param=#{user_data}"
      # )
    # end

    # binding.pry
    request = Typhoeus::Request.new(
      "https://www.threatcrowd.org/searchApi/v2/email/report/",
      :method => :get,
      :params => {
        :email => "william19770319@yahoo.com"
      }
    ).run

    JSON.parse(request.response_body)

    # request = Typhoeus::Request.new(
    #   "https://www.threatcrowd.org/searchApi/v2/email/report/?email=william19770319@yahoo.com").run



  end


  task domain_api:  :environment do

  end
  task ip_api:  :environment do

  end
  task antivirus_api:  :environment do

  end
  task file_api:  :environment do

  end
end
