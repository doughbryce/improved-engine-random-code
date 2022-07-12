require_relative 'candy.rb'
require_relative 'talkable.rb'

class CandyBag < Candy

  attr_reader :owner, :candy
  attr_accessor :max_pieces, :max_weight

  def initialize(args)
    super
    @owner = args.fetch(:owner, "Unknown")
    @candy = args.fetch(:candy, [])
    @max_pieces = args.fetch(:max_pieces, 0)
    @max_weight = args.fetch(:max_weight, 0)
  end

  def current_piece_count
    @candy.length
  end

  def current_weight
    total = 0
    @candy.each do |candy|
      total += candy.weight
    end
    total
  end

  def add_candy(piece)
    if @candy.length + 1 <= @max_pieces
      @candy << piece
    elsif current_weight + piece.weight <= @max_weight
      @candy << piece
    end  
  end

end