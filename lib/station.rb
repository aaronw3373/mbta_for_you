# A subway system station
class Station
  attr_reader :name, :num

  def initialize(sname, num)
    @num = num
    @name = sname
  end
end
