require 'gosu'
require_relative 'watermelon.rb'
require_relative 'dog.rb'

class BounceBox < Gosu::Window

  WIDTH = 800
  HEIGHT = 600

  def initialize
    super(WIDTH, HEIGHT)
    # caption is an inherited setter method
    self.caption = "Bounce Box"
    # Go to openclipart.org to find
    # free images: PNG, JPEG
    @watermelon = Watermelon.new(300, 300, self)
    @images = []
  end

  # Gosu runs an infinite loop, alternating
  # between draw and update

  # Going to override the draw method
  # Draw - put any code that draws images 
    # on the screen
  def draw
    # the draw below is different from the one above
    draw_images
    # @watermelon.draw
  end

  # Going to override update method
  # Update - Any code that changes the state
    # of any object
  def update
    move_images
    # @watermelon.move
  end
  
  def create_image(x, y)
    Watermelon.new(x, y, self)
  end

  def create_different_image(x, y)
    Dog.new(x, y, self)
  end

  def draw_images
    @images.each {|image| image.draw}
  end

  def move_images
    @images.each {|image| image.move}
  end

  def button_down(id)
    if id == Gosu::KbSpace
      add_image
    elsif id == Gosu::KbQ
      close
    elsif id == Gosu::KbC
      change_image
    end
  end

  def add_image
    @images << create_image(100, 100)
  end

  def change_image
    @images << create_different_image(100, 100)
  end

  # rand(100..400)

end

# array =[]

# Driver Code
# 1.times {array << BounceBox.new}
# array.each {|bounce_box_object| bounce_box_object.show}

window = BounceBox.new
window.show

# What is happening with the show method
    # def show
    #   while true
    #     draw
    #     update
    #   end
    # end