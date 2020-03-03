class Game < ApplicationRecord
    has_many :player_hands
    has_many :players, through: :player_hands
    has_one :dealer_hand
    has_one :dealer, through: :dealer_hand

    def 
end
