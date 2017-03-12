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
				std.update_attributes(header.downcase.gsub(' ', '_') => studnet_info[hash[header]]) if header.present? and Student.column_names.include? header.downcase.gsub(' ', '_')
			end
		 	std.save
		 }
    end

	def index

  	end

  	def get_students_list
  		puts "here -> #{params['value'].class}"
  		res = Student.where("name LIKE ?","%#{params['value'].downcase}%").pluck(:name,:pin_no)
  		res = Student.where("pin_no LIKE ?","#{params['value'].to_i}%").pluck(:name,:pin_no) if !res.present?
  		result={}
  		res.each { |e| result.store(e[1],e[0].split.map(&:capitalize).join(' ')+" ("+(e[1].to_s)+")") }
		render :json => result
  	end
end
