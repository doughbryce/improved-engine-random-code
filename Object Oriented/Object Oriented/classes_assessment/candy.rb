class Candy

  attr_reader :weight, :calories

  def initialize(args)
    @weight = args.fetch(:weight, 0)
    @calories = args.fetch(:calories, 0)
  end

end