require 'open-uri'
require 'nokogiri'
class Scraper

  attr_reader(:doc)

  def initialize(url)
    @url = url
    @html_file = open(url)
    @doc = Nokogiri::HTML(@html_file)
  end
end

class ScraperHackerNews < Scraper

  def initialize
    url = "https://news.ycombinator.com"
    super(url)
  end

  def scrap
    posts = []

      @doc.search('.title > a').each do |element| #node
      title = element.inner_text
      source_url = element["href"]
      rating = element.parent.parent.next_sibling.search('.subtext > span').inner_text(/\d/)
      date = Time.now

      posts << {title: title, source_url: source_url, rating: rating, date: date }
    end
    #. représente class
    ## reprénsente id
    #@doc.search('....').each do |node|
    posts
  end

end