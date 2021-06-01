class Robot
  @@name_list = []

  attr_reader :name

  def initialize
    generate_name
  end

  def name
    return @name if @name
    generate_name
    @name
  end

  def reset
    @name = nil
  end

  private

  attr_writer :name

  def generate_name
    let = ('A'..'Z').to_a
    num = (0..9).to_a
    loop do
      @name = "#{let.sample}#{let.sample}#{num.sample}#{num.sample}#{num.sample}"
      break if !(@@name_list.include? @name)
    end
    @@name_list << @name
  end
end
