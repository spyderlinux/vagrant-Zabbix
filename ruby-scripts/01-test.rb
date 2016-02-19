class Greater
  def initialize(name="world")
    @name=name
  end

  def say_hi
    puts "helo #{@name}"
  end

  def say_bye
    puts "bye #{@name}"
  end
end

g=Greater.new("pat")
g.say_hi()
g.say_bye()

a="ss"
puts a.length.to_s
