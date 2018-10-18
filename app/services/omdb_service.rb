class OmdbService
def initialize
  @key = Rails.application.credentials.api_key
end
    def get_plot_by_title(title)
        response = HTTP.get("http://www.omdbapi.com/?apikey=#{@key}&t=#{title}").to_s
        parsed_response = JSON.parse(response)
        parsed_response["Plot"]
    end

    def get_image_by_title(title)
        response = HTTP.get("http://www.omdbapi.com/?apikey=#{@key}&t=#{title}").to_s
        parsed_response = JSON.parse(response)
        parsed_response["Poster"]
    end
end