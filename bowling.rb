class Bowling
  def initialize
    @scores = []
    @rolls = []
    @bonus = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  end

  def roll(pins_down)
    if pins_down == 10
      @rolls << pins_down
      @rolls << 0
    else
      @rolls << pins_down
    end
  end

  def score()
    sliced_array = @rolls.each_slice(2).to_a

    sliced_array.each_with_index do |element, index|
      if index != 9
        standard_case(element, index)
      else
        last_roll_case(element, index)
      end
    end
    final_score = 0
    @scores.each_with_index do |value, index|
      final_score += value*@bonus[index]
    end
  final_score
  end

  private

  def standard_case(element, index)
    if element.include? 0
      @scores << element.sum
      @bonus[index + 1] += 1
      @bonus[index + 2] += 1
    elsif element.sum == 10
      @scores << element.sum
      @bonus[index + 1] += 1
    else
      @scores << element.sum
    end
  end

  def last_roll_case(element, index)
    if element.include? 0
      @scores << element.sum
      @scores << 10
      @scores << 10
    elsif element.sum == 10
      @scores << element.sum
      @scores << 5
    else
      @scores << element.sum
    end
  end
end
