mice = Tag.create(name: "Mice") 
cars = Tag.create(name: "Cars") 
pickles = Tag.create(name: "Pickles") 
friends = Tag.create(name: "Friends") 
happy = Tag.create(name: "Happy") 

post1 = Post.create(title: "Happy Fun Day", body: "We're stoked you want to try Foundation! To get going, this file (index.html) includes some basic styles you can modify, play around with, or totally destroy to get going.")
post2 = Post.create(title: "Twitter Stuff", body: "Ping us on Twitter if you have questions. If you build something with this we'd love to see it (and send you a totally boss sticker).")
post3 = Post.create(title: "Fifth Graders", body: "Remember when our class of 5th graders stopped by the office last week? We can't stop thinking about how much they grokked design thinking, showing us how it's never too early to learn those concepts. It's also never too late to learn those concepts. That's why every year we hold a 24-hour marathon to help out one lucky nonprofit over a design hump.")
post4 = Post.create(title: "Dealing With Images", body: "We've been working in the responsive realm for a while now and one of the most painful parts of the process is dealing with images. Large images can cause extremely long load times on small devices that might not have a huge data bandwidth. There have been many best practices for now movements to deal with this.")
post5 = Post.create(title: "Best Field Trip Ever", body: "We get a lot of visitors at our ZURB Command Center. Today, however, we got a special visit from Miss Phillip's 5th grade class from Sacred Heart School in nearby Saratoga. They've been designers-in-practice thanks to Miss Phillips, a good friend of ours who's been teaching them how they can use design to solve problems. So we were happy to have them drop by for a visit.")

post1.tags << [mice, cars]
post2.tags << [pickles, cars, happy]
post3.tags << [friends, happy]
post4.tags << [pickles, happy]
post5.tags << [cars, friends]
