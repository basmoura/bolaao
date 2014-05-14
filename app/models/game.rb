class Game < ActiveRecord::Base
  has_many :bets

  def dt_game
    read_attribute(:dt_game).strftime('%d/%m/%Y') unless read_attribute(:dt_game).nil?
  end

  def hr_game
    read_attribute(:hr_game).strftime('%H:%M') unless read_attribute(:hr_game).nil?
  end
end
