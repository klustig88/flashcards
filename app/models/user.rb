class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  has_many :decks, through: :rounds

  def self.authenticate(username, password)
    current_user = User.find_by_username(username)
    if current_user.password == password && current_user.username == username
      current_user
    else
      nil
    end
  end
end
