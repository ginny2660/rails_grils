class Idea < ActiveRecord::Base
	validates_presence_of :name
	mount_uploader :picture, PictureUploader
	validates_presence_of :picture
	validates_presence_of :description

	validates_length_of :name, :minimum => 2
	validates_length_of :description, :minimum => 10
end
