class PagesController < ApplicationController
require 'net/http'

  def index
  	puts "Here it begins"
  	@quote = eval(Net::HTTP.get(URI.parse('http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1')))
  	@quote = @quote[0]
  	puts "result is #{@quote}"
  end

  def contact
  	
  end
end
