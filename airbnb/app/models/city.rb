class City < ApplicationRecord
	has_many :listings
	validates :name,
	presence: true,
	uniqueness: true
	validates :zip_code,
	presence: true,
	uniqueness: { case_sensitive: false },
	format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[abAB]))[0-9]{3}\z/, message: "please enter a valid french zip code" }

end
