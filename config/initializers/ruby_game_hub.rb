module RubyGameHub
  def self.game_title
    "#GameTitle#"
  end

  def self.hub_name
    "#{game_title} Game Hub"
  end

  def self.hub_footer
    "<a href=\"https://github.com/cyberarm/ruby-game-hub\">RubyGameHub</a> - Matchmaking and Hub for your game.".html_safe
  end
end