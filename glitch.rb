require 'aviglitch'

a = AviGlitch.open 'v6.avi'
d = []
a.frames.each_with_index do |f, i|
  d.push(i) if f.is_deltaframe?
end
q = a.frames[0, 5]
50.times do
  x = a.frames[d[rand(d.size)], 1]
  q.concat(x * rand(50))
end
o = AviGlitch.open q
o.output 'out6.avi'
