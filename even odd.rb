Last login: Mon Aug 18 19:30:50 on ttys000
chases-air:~ chasedonohue$ irb
irb(main):001:0> def even_or_odd(val)
irb(main):002:1> if val % 2 == 0
irb(main):003:2> return "#{val} is even"
irb(main):004:2> end
irb(main):005:1> if val % 2 == 1
irb(main):006:2> return "#{val} is odd"
irb(main):007:2> end
irb(main):008:1> end
=> nil
irb(main):009:0> 4
=> 4
irb(main):010:0> even or odd('2')
NameError: undefined local variable or method `even' for main:Object
	from (irb):10
	from /usr/bin/irb:12:in `<main>'
irb(main):011:0> even_or_odd('2')
=> nil
irb(main):012:0> even_or odd(2)
NoMethodError: undefined method `odd' for main:Object
	from (irb):12
	from /usr/bin/irb:12:in `<main>'
irb(main):013:0> even_or_odd(2)
=> "2 is even"
irb(main):014:0> even_or_odd(3)
=> "3 is odd"
irb(main):015:0> 3
=> 3
irb(main):016:0> 

























