require "open-uri"
require "nokogiri"

puts "Look up something: "
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)

html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  puts element.text.strip
  puts element.attribute("href").value
end