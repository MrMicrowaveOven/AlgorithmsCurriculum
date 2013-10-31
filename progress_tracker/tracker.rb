require 'addressable/uri'
require 'rest-client'
require 'podio'

CLIENT_ID = "progress-reports"
CLIENT_SECRET = "tLpjOVJJmlRXMxSEGdgUz4fWG6l0bDJDErojUKWMyXiyLpXV3MALtN8WA3pwbWh6"
PROGRESS_REPORT_APP_ID = "4886826"
PROGRESS_REPORTS_APP_TOKEN = "b1e6b5b7330b4f159dc2e0725313c29a"

twenty_four_hours_ago = Time.now - 24 * 3600

students = %w(
  Jenny Chou
  Flarnie Marchan
  John Wahba
  Jeff Bellucci
  Adam Bucholz
  Matthew Purdy
  William Li
  Rashi King Abramson
  Samuel Balinghasay
  Shraddha Bagrodia
  Katarina Blagojevic
  Michael San Soucie
  Nathan Tate
  Trevor Ford
  Adler Santos
  Marcelo Guindon
  Tam Tran
  Harris Gani
  Razvan Ciuca
  Joseph Feeney
  Ben Seligman
  Nicholas Wrenn
  Sean Gee
  Rob Zyskowski
  Kevin Colten
  Sally Carter
  Joseph Cairone
  Evan Sforza
  Joseph Averbukh
  Ted Cheng
  Ed Solis
  Matthew Hilty
  Ruth Thompson
  Brian Cook
  David Ilizarov
  Korey Kassir
  Victor Alvarez
  Adam Smialek
  Joshua Evans
  Praveen Chekuri
  Gabrielle Bellamy
)

Podio.setup(
  :api_key    => CLIENT_ID,
  :api_secret => CLIENT_SECRET
)

begin
  Podio.client.authenticate_with_app(PROGRESS_REPORT_APP_ID, PROGRESS_REPORTS_APP_TOKEN)
  recent_reports = Podio::Item.find_all(4886826, limit: 50, sort_by: "created_on")
  today_reports = recent_reports[0].select { |report| report.title.to_time > twenty_four_hours_ago }
  
  today_reports.each do |report|
    puts report.fields[1]["values"][0]["value"]["title"]
  end
  
rescue Podio::PodioError => ex
  puts ex
end




# endpoint = "https://podio.com/oauth/token"
# 
# params = {
#   
# }
# 
# 
# 
# uri = Addressable::URI.new(
#   scheme: "http",
#   host: "podio.com",
#   path: "oauth/token",
#   query_values: { grant }
# )
