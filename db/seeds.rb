Admin.destroy_all
a1 = Admin.create(:username => 'Alan Moore', :email => 'alan.moore@gmail.com.au', :image => 'https://ihatehate.files.wordpress.com/2015/05/spider-useless-bastards.jpg', :password => "password")
a2 = Admin.create(:username => 'Spider Jerusalem', :email => 'spider.jerusalem@gmail.com.au', :image => 'https://ihatehate.files.wordpress.com/2015/05/spider-useless-bastards.jpg', :password => "password")
a3 = Admin.create(:username => 'Cat', :email => 'cat@gmail.com.au', :image => 'https://ihatehate.files.wordpress.com/2015/05/spider-useless-bastards.jpg', :password => "password")
a4 = Admin.create(:username => 'Jamie Hewlett',  :email => 'jamie.hewlett@gmail.com.au', :image => 'https://ihatehate.files.wordpress.com/2015/05/spider-useless-bastards.jpg', :password => "password")
a5 = Admin.create(:username => 'Tank Girl', :email => 'booga@gmail.com.au', :image => 'https://ihatehate.files.wordpress.com/2015/05/spider-useless-bastards.jpg', :password => "password")
 puts "#{ Admin.count } admins created"
# 
 Resource.destroy_all
r1 = Resource.create :title => 'Mask Off Masculinity Redefined'
r2 = Resource.create :title => 'Automation and the future of work'
r3 = Resource.create :title => 'The Management of Savagery'
r4 = Resource.create :title => 'Moby Dick'
r5 = Resource.create :title => 'The Master and Margarita'
r6 = Resource.create :title => 'Q'
r7 = Resource.create :title => 'The Swarm'
r8 = Resource.create :title => 'State of Fear'
r9 = Resource.create :title => 'Fully Automated Luxury Communism'
r10 = Resource.create :title => 'The Woman Rebel, No Gods, No Masters'
 puts "#{ Resource.count } resources added."

# ## ASSOCIATIONS ##
 
puts "Admins and Resources."
a1.resources << r1 << r6
a2.resources << r2 << r7
a3.resources << r3 << r8
a4.resources << r4 << r9
a5.resources << r5 << r10