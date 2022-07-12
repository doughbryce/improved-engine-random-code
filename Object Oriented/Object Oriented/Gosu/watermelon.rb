class Watermelon < Gosu::Image

  SPEED = 5

  attr_accessor :x, :y

  def initialize(x, y, window)
    super("images/watermelon.png")
    @x = x
    @y = y
    # How many pixels moving horizontally
    @velocity_x = SPEED
    # How many pixels moving vertically
    @velocity_y = SPEED
    @window = window
  end

  # Overrode the draw method from Gosu::Image
  def draw
    # Makes it so the x and y coordinates
    # refer to the middle of the image
    super(@x - half_width, @y - half_height, 1)
  end

  # Our own custom method to move the object
  def move
    move_position
    # @x += @velocity_x
    # @y += SPEED
    # @velocity_x *= -1 if x_at_boundary?
    bounce_off_walls
  end

  private

  def move_position
    @x += @velocity_x
    @y += @velocity_y
  end

  def bounce_off_walls
    change_direction(:x) if hit_wall?(:left) || hit_wall?(:right)
    change_direction(:y) if hit_wall?(:top) || hit_wall?(:bottom)
  end

  def change_direction(axis)
    if axis == :x
      @velocity_x *= -1
    elsif axis == :y
      @velocity_y *= -1
    end
  end

  def hit_wall?(wall)
    if wall == :top
      hit_top_wall?
    elsif wall == :bottom
      hit_bottom_wall?
    elsif wall == :right
      hit_right_wall?
    elsif wall == :left
      hit_left_wall?
    end
  end

  # def x_at_boundary?
    # at_right_boundary || at_left_boundary
  # end

  def hit_right_wall?
    @x + half_width >= @window.width && positive?(@velocity_x)
  end

  def hit_left_wall?
    @x - half_width <= 0 && !positive?(@velocity_x)
  end

  def hit_top_wall?
    @y - half_height <= 0 && !positive?(@velocity_y)
  end

  def hit_bottom_wall?
    @y + half_height >= @window.height && positive?(@velocity_y)
  end


# General helper methods ----------------------------------------
  def half_height
    # height is an inherited method from Image
    height / 2
  end

  def half_width
    # width is an inherited method from Image
    width / 2
  end
  
  def positive?(num)
    num >= 0
  end

end