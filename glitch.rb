require 'aviglitch'

a = AviGlitch.open 'file.avi'
a.frames.each_with_index do |f, i|
  d.push(i) if f.is_deltaframe?
end
q = a.frames[0, 5]
100.times do
  x = a.frames[d[rand(d.size)], 1]
  q.concat(x * rand(50))
end
o = AviGlitch.open q
o.output 'out.avi'
