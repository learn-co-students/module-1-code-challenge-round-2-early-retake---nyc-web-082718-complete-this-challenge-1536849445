require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

v1= Viewer.new("YaBoi6262")
v2= Viewer.new("PrincessViewer")
v3= Viewer.new("lolwhodidthis")
v4= Viewer.new("GenericUsername")
v5= Viewer.new("hahahehehahaho")
v6= Viewer.new("HorrorLover39")

m1= Movie.new("Love Actually")
m2= Movie.new("Invasion of the Body Snatchers")
m3= Movie.new("Harry Potter pt 1")
m4= Movie.new("Generic Movie")
m5= Movie.new("The Avengers")
m6= Movie.new("Saw")

qi1= QueueItem.new(v1,m1,3)
qi2= QueueItem.new(v2,m1,5)
qi3= QueueItem.new(v3,m5,5)
qi4= QueueItem.new(v5,m5,1)
qi5= QueueItem.new(v2,m5,4)
qi6= QueueItem.new(v4,m2,2)
qi7= QueueItem.new(v5,m3,1)
qi8= QueueItem.new(v2,m4,1)
qi9= QueueItem.new(v4,m6,2)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
