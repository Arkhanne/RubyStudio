# frozen_string_literal: true

Snack = Struct.new(:name, :carbs)

#
# SnackBar
#
module SnackBar
  SNACKS = [
    Snack.new(:popcorn, 20),
    Snack.new(:candy, 15),
    Snack.new(:nachos, 40),
    Snack.new(:pretzel, 10),
    Snack.new(:soda, 5)
  ].freeze

  def self.random
    SNACKS.sample
  end
end

if $PROGRAM_NAME == __FILE__
  puts SnackBar::SNACKS
  snack = SnackBar.random
  puts "Enjoy your #{snack.name} (#{snack.carbs} carbs)"
end
