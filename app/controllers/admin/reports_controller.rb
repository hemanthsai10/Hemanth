require 'csv'

class Admin::ReportsController < ApplicationController
	def update
	end

	def show
		render :json => 'fail'
	end

	def upload
		file_data = CSV.read(params['file'].tempfile,:headers=>true)
		hash = Hash[file_data.headers.map.with_index.to_a]    # => {"a"=>0, "b"=>1, "c"=>2}
		file_data.each { |studnet_info|
			std = Student.where(:PIN_NO => studnet_info[hash['PIN NO']]).first_or_create
			file_data.headers.each do |header|
				std.update_attributes(header.gsub(' ', '_') => studnet_info[hash[header]]) if Student.column_names.include? header
			end
		 	std.save
		 }
    end

	def index
  	end
end
