class Clock
  def self.at(hr, min=0)
    Clock.new(hr, min)
  end

  def initialize(hr, min=0)
    @hr = hr
    @min = min
  end

  def +(arg)
    tot_min = (@hr * 60) + @min
    new_time = (tot_min + arg) % 1440
    hr, min = new_time.divmod(60)
    Clock.new(hr, min)
  end

  def -(arg)
    tot_min = (@hr * 60) + @min
    new_time = (tot_min - arg) % 1440
    hr, min = new_time.divmod(60)
    Clock.new(hr, min)
  end

  def to_s
    "#{format('%.2d', @hr)}:#{format('%.2d', @min)}"
  end

  def ==(other_clock)
    self.to_s == other_clock.to_s
  end
end
