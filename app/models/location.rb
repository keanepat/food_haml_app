class Location < ActiveRecord::Base

	geocoded_by :address

	#geocoded_by :ip_address, :latitude => :lat, :longitude => :long

	reverse_geocoded_by :latitude, :longitude

	after_validation :geocode, :if => :address_changed?

	after_validation :reverse_geocode, :if => :address_changed?


end
