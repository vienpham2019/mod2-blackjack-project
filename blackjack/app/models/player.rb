class Player < ApplicationRecord
    has_secure_password
    has_many :player_hands
    has_many :games, through: :player_hands
    has_many :player_hand_cards, through: :player_hands

    validates :username, presence: true, uniqueness: true
    validates :age, presence: true, numericality: { only_integer: true , greater_than: 18}
    validates :security_answer, presence: true 

    def total_hand_count
        self.player_hands.count
    end

    def outcomes
        self.player_hands.map{|hand| hand.outcome}
    end

    def outcome_counts
        outcome_hash = {"Blackjack" => 0, "Win" => 0, "Push" => 0, "Bust" => 0, "Loss" => 0, "Dealer Blackjack" => 0}
        self.player_hands.each do |hand|
            outcome_hash[hand.outcome] += 1
        end
        outcome_hash
    end

end
