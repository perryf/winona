# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.destroy_all
Movie.destroy_all
User.destroy_all
List.destroy_all

sarah = User.create(email: "sarah@winona.com", password: "password")
user = User.create(email: "user@winona.com", password: "password")

list_watched = sarah.lists.create(name: "Watched")
list_to_watch = sarah.lists.create(name: "To Watch")

movies_watched =  Movie.create([
  {
    title: "The Grand Budapest Hotel",
    release_date: "March 7, 2014",
    director: "Wes Anderson",
    overview: "The Grand Budapest Hotel tells of a legendary concierge at a famous European hotel between the wars and his friendship with a young employee who becomes his trusted protege. The story involves the theft and recovery of a priceless Renaissance painting, the battle for an enormous family fortune and the slow and then sudden upheavals that transformed Europe during the first half of the 20th century.",
    poster_url: "https://image.tmdb.org/t/p/w640/nX5XotM9yprCKarRH4fzOq1VM1J.jpg"
  },
  {
    title: "Rushmore",
    release_date: "October 9, 1998",
    director: "Wes Anderson",
    overview: "When a beautiful first-grade teacher arrives at a prep school, she soon attracts the attention of an ambitious teenager named Max, who quickly falls in love with her. Max turns to the father of two of his schoolmates for advice on how to woo the teacher. However, the situation soon gets complicated when Max's new friend becomes involved with her, setting the two pals against one another in a war for her attention.",
    poster_url: "https://image.tmdb.org/t/p/w640/q3ov1BFTCRWoR9Q6udaRbmgfWwg.jpg"
  },
  {
    title: "The Darjeeling Limited",
    release_date: "September 29, 2007",
    director: "Wes Anderson",
    overview: "Three American brothers who have not spoken to each other in a year set off on a train voyage across India with a plan to find themselves and bond with each other -- to become brothers again like they used to be. Their 'spiritual quest', however, veers rapidly off-course (due to events involving over-the-counter pain killers, Indian cough syrup, and pepper spray).",
    poster_url: "https://image.tmdb.org/t/p/w640/47AGp0EKNMjqBBPaxRYDW0Sc5If.jpg"
  },
  {
    title: "Frances Ha",
    release_date: "September 1, 2012",
    director: "Noah Baumbach",
    overview: "An aspiring dancer moves to New York City and becomes caught up in a whirlwind of flighty fair-weather friends, diminishing fortunes and career setbacks.",
    poster_url: "https://image.tmdb.org/t/p/w640/mG8gvA3lxxzcJFIAnmMqir6DiWQ.jpg"
  },
  {
    title: "Maggie's Plan",
    release_date: " October 4, 2015",
    director: "Rebecca Miller",
    overview: "Maggie 's plan to have a baby on her own is derailed when she falls in love with John, a married man, destroying his volatile marriage to the brilliant and impossible Georgette. But one daughter and three years later, Maggie is out of love and in a quandary: what do you do when you suspect your man and his ex wife are actually perfect for each other?",
    poster_url: "https://image.tmdb.org/t/p/w640/yZO9gUIbD1jzx93Ft7jCTpm2dPs.jpg"
  },
  {
    title: "In the Mood for Love",
    release_date: "May 22, 2000",
    director: "Wong Kar-wai",
    overview: "A melancholy story about the love between a woman and a man who live in the same building and one day find out that their husband and wife had an affair with each other. More and more the two meet during their daily lives as they determine that they both don’t want to be lonely in their marriage.",
    poster_url: "https://image.tmdb.org/t/p/w640/unOW3SxFxBdd7LMWjmRONdHWKPb.jpg"
  },
  {
    title: "Chungking Express",
    release_date: "September 15, 1994",
    director: "Wong Kar-wai",
    overview: "Every day, Cop 223 buys a can of pineapple with an expiration date of May 1, symbolizing the day he'll get over his lost love. He's also got his eye on a mysterious woman in a blond wig, oblivious of the fact she's a drug dealer. Cop 663 is distraught with heartbreak over a breakup. But when his ex drops a spare set of his keys at a local cafe, a waitress lets herself into his apartment and spruces up his life.",
    poster_url: "https://image.tmdb.org/t/p/w640/yQUjZTzwgskqOJdr3jhwQ4yTkvb.jpg"
  },
  {
    title: "Close-Up",
    release_date: "May 9, 1990",
    director: "Abbas Kiarostami",
    overview: "This fiction-documentary hybrid uses a sensational real-life event—the arrest of a young man on charges that he fraudulently impersonated the well-known filmmaker Mohsen Makhmalbaf—as the basis for a stunning, multilayered investigation into movies, identity, artistic creation, and existence, in which the real people from the case play themselves.",
    poster_url: "https://image.tmdb.org/t/p/w640/2AqA9enmHq5ts8VH9jlYgVKPNf3.jpg"
  },
  {
    title: "The Green Ray",
    release_date: "August 29, 1986",
    director: "Éric Rohmer",
    overview: "A lonely Parisian woman comes to terms with her isolation and anxieties during a long summer vacation.",
    poster_url: "https://image.tmdb.org/t/p/w640/mFFqthZqOmCCktecOHia0Jn3JEH.jpg"
  },
  {
    title: "My Night at Maud's",
    release_date: "June 4, 1969",
    director: "Éric Rohmer",
    overview: "The rigid principles of a devout Catholic man are challenged during a one-night stay with Maud, a divorced woman with an outsize personality.",
    poster_url: "https://image.tmdb.org/t/p/w640/lWwr1RM4h0mb4Hr1uuOCqJPmERr.jpg"
  },
  {
    title: "Sympathy for Lady Vengeance",
    release_date: "September 30, 2005",
    director: "Park Chan-wook",
    overview: "After a 13-year imprisonment for the kidnap and murder of a 6 year old boy, beautiful Lee Guem-ja starts seeking revenge on the man that was really responsible for the boy's death. With the help of fellow inmates and reunited with her daughter, she gets closer and closer to her goal. But will her actions lead to the relief she seeks?",
    poster_url: "https://image.tmdb.org/t/p/w640/vymGV0lscCGpaLjGyQhxkjq0jeg.jpg"
  },
  {
    title: "Yi Yi",
    release_date: "September 20, 2000",
    director: "Edward Yang",
    overview: "Each member of a family in Taipei asks hard questions about life's meaning as they live through everyday quandaries.",
    poster_url: "https://image.tmdb.org/t/p/w640/hhsYCYVPy1V0eTjkGNGdvpDO2qk.jpg"
  },
  {
    title: "Force Majeure",
    release_date: "December 30, 2014",
    director: "Ruben Östlund",
    overview: "While holidaying in the French Alps, a Swedish family deals with acts of cowardliness as an avalanche breaks out.",
    poster_url: "https://image.tmdb.org/t/p/w640/rGMtc9AtZsnWSSL5VnLaGvx1PI6.jpg"
  },
  {
    title: "Ex Machina",
    release_date: "April 24, 2015",
    director: "Alex Garland",
    overview: "Caleb, a 26 year old coder at the world's largest internet company, wins a competition to spend a week at a private mountain retreat belonging to Nathan, the reclusive CEO of the company. But when Caleb arrives at the remote location he finds that he will have to participate in a strange and fascinating experiment in which he must interact with the world's first true artificial intelligence, housed in the body of a beautiful robot girl.",
    poster_url: "https://image.tmdb.org/t/p/w640/btbRB7BrD887j5NrvjxceRDmaot.jpg"
  },
  {
    title: "Arrival",
    release_date: "September 2, 2016",
    director: "Denis Villeneuve",
    overview: "Taking place after alien crafts land around the world, an expert linguist is recruited by the military to determine whether they come in peace or are a threat.",
    poster_url: "https://image.tmdb.org/t/p/w640/hLudzvGfpi6JlwUnsNhXwKKg4j.jpg"
  }
])

movies_to_watch = Movie.create([
  {
    title: "Lady Bird",
    release_date: "September 1, 2017",
    director: "Greta Gerwig",
    overview: "Christine 'Lady Bird' McPherson, a fiercely independent teenager, tries to make her own way in the world while wanting to get out of her hometown of Sacramento, California & to get away from her complicated mother & recently-unemployed father.",
    poster_url: "https://image.tmdb.org/t/p/w640/pVtoXPA2zqNTeaR8MOsrD1XvUXK.jpg"
  },
  {
    title: "After Life",
    release_date: "May 12, 1999",
    director: "Hirokazu Koreeda",
    overview: "After death, people have just one week to choose only a memory to keep for eternity.",
    poster_url: "https://image.tmdb.org/t/p/w640/5edwcfe4szCQU6Mq8rPS667Yv7g.jpg"
  },
  {
    title: "The Table",
    release_date: "October 7, 2016",
    director: "Kim Jong-kwan",
    overview: "A couple faces each other across a café table talking; he’s apparently returned from Europe and she’s not happy about him asking her to meet after such a long time. The conversation seems likely to end any second, but suddenly his true feelings touch her momentarily and a brief smile crosses her face. The Table follows a conversation between two people in a café.",
    poster_url: "https://image.tmdb.org/t/p/w640/x52XKSLJWFv5TWc70Dq7kkmw5mO.jpg"
  },
  {
    title: "Perfect Blue",
    release_date: "August 20, 1999",
    director: "Satoshi Kon",
    overview: "Mima Kirigoe is a singer who leaves her trio to become an actress, a career move that angers her fans, who prefer to see her as the pop idol. Plagued by self-doubt and tormented by humiliating compromises, she begins to be stalked, in her waking and sleeping moments, by an alter ego who claims to be 'the real Mima', until she collapses into madness as her coworkers are brutally slain around her.",
    poster_url: "https://image.tmdb.org/t/p/w640/qDLeGIVhni3bRDunByBzhgY4wKZ.jpg"
  },
  {
    title: "Pierrot le Fou",
    release_date: "August 29, 1965",
    director: "Jean-Luc Godard",
    overview: "Pierrot escapes his boring society and travels from Paris to the Mediterranean Sea with Marianne, a girl chased by hit-men from Algeria. They lead an unorthodox life, always on the run.",
    poster_url: "https://image.tmdb.org/t/p/w640/6CVgR47VyZ1MC6bbRyB0La7CzbV.jpg"
  },
  {
    title: "Still Walking",
    release_date: "June 28, 2008",
    director: "Hirokazu Koreeda",
    overview: "Twelve years after their beloved eldest son, Junpei, drowned while saving a stranger's life, Kyohei and Toshiko welcome their surviving children home for a family reunion. Younger son Ryota still feels that his parents resent that he isn't the one who died; his new wife, Yukari, is awkwardly meeting the rest of the family for the first time. Daughter Chinami strains to fill the uncomfortable pauses with forced cheer.",
    poster_url: "https://image.tmdb.org/t/p/w640/oXkPoceSa0RcsD2JkdlES5yqfN6.jpg"
  },
  {
    title: "The Shawshank Redemption",
    release_date: "September 22, 1994",
    director: "Frank Darabont",
    overview: "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
    poster_url: "https://image.tmdb.org/t/p/w640/9O7gLzmreU0nGkIB6K3BsJbzvNv.jpg"
  },
  {
    title: "Dead Poets Society",
    release_date: "June 9, 1989",
    director: "Peter Weir",
    overview: "At an elite, old-fashioned boarding school in New England, a passionate English teacher inspires his students to rebel against convention and seize the potential of every day, courting the disdain of the stern headmaster.",
    poster_url: "https://image.tmdb.org/t/p/w640/3Ri2GReavqSHqWemlP6HYn8i2P9.jpg"
  },
  {
    title: "The Silence of the Lambs",
    release_date: "January 30, 1991",
    director: "Jonathan Demme",
    overview: "FBI trainee, Clarice Starling ventures into a maximum-security asylum to pick the diseased brain of Hannibal Lecter, a psychiatrist turned homicidal cannibal. Starling needs clues to help her capture a serial killer. But her Faustian relationship with Lecter soon leads to his escape, and now two deranged killers are on the loose.",
    poster_url: "https://image.tmdb.org/t/p/w640/qjAyTj2BSth1EQ89vNfo0JYVPFN.jpg"
  },
  {
    title: "The Shining",
    release_date: "May 22, 1980",
    director: "Stanley Kubrick",
    overview: "Jack Torrance accepts a caretaker job at the Overlook Hotel, where he, along with his wife Wendy and their son Danny, must live isolated from the rest of the world for the winter. But they aren't prepared for the madness that lurks within.",
    poster_url: "https://image.tmdb.org/t/p/w640/9fgh3Ns1iRzlQNYuJyK0ARQZU7w.jpg"
  },
  {
    title: "The Pianist",
    release_date: "December 4, 2002",
    director: "Roman Polanski",
    overview: "The Pianist is a film adapted from the biography of Wladyslaw Szpilman. A Jewish-Polish pianist who during the second world war lived and hid miraculously in Warsaw after having gone through a terrible tragedy. A film from Roman Polanski.",
    poster_url: "https://image.tmdb.org/t/p/w640/iunmxWkOi7Vk17Ob3G2HwwjgHsr.jpg"
  },
  {
    title: "House",
    release_date: "September 1, 1977",
    director: "Nobuhiko Ôbayashi",
    overview: "Oshare (Gorgeous) is excited about spending summer vacation with her father, until she finds out that his beautiful, freakishly serene girlfriend Ryouko would be going as well. Oshare decides she will be going to her aunt's house in the country instead. She brings with her her friends from school - Fanta (who likes to take pictures, and daydreams a lot), KunFuu (who has very good reflexes), Gari/Prof (who is a major nerd), Sweet (who likes to clean), Mac (who eats a lot), and Melody (a musician). However, the girls are unaware that Oshare's aunt is actually dead and the house is actually haunted. When they arrive at the house, crazy events take place and the girls disappear one by one while slowly discovering the secret behind all the madness.",
    poster_url: "https://image.tmdb.org/t/p/w640/6vblWscFAbIm9V5CwHC7IImgAq9.jpg"
  },
  {
    title: "Moonlight",
    release_date: "September 2, 2016",
    director: "Barry Jenkins",
    overview: "The tender, heartbreaking story of a young man’s struggle to find himself, told across three defining chapters in his life as he experiences the ecstasy, pain, and beauty of falling in love, while grappling with his own sexuality.",
    poster_url: "https://image.tmdb.org/t/p/w640/qAwFbszz0kRyTuXmMeKQZCX3Q2O.jpg"
  },
  {
    title: "Amour",
    release_date: "December 19, 2012",
    director: "Michael Haneke",
    overview: "Georges and Anne are in their eighties. They are cultivated, retired music teachers. Their daughter, who is also a musician, lives abroad with her family. One day, Anne has a stroke, and the couple's bond of love is severely tested.",
    poster_url: "https://image.tmdb.org/t/p/w640/tvy6ogpgIDCZlxAletXNZg8xFi8.jpg"
  },
  {
    title: "Toni Erdmann",
    release_date: "December 25, 2016",
    director: "Maren Ade",
    overview: "Without warning a father comes to visit his daughter abroad. He believes that she lost her humor and therefore surprises her with a rampage of jokes.",
    poster_url: "https://image.tmdb.org/t/p/w640/gJNjVE8WGUjiSKUtMDEvNzxR5zq.jpg"
  },
  {
    title: "On Body and Soul",
    release_date: "February 10, 2017",
    director: "Ildikó Enyedi",
    overview: "Two introverted people find out by pure chance that they share the same dream every night. They are puzzled, incredulous, a bit frightened. As they hesitantly accept this strange coincidence, they try to recreate in broad daylight what happens in their dream.",
    poster_url: "https://image.tmdb.org/t/p/w640/uguWEoZelSSckxgiQctlkZ6gpfU.jpg"
  }
])

movies_watched.each do |movie|
  movie.groups.create(list: list_watched)
end

movies_to_watch.each do |movie|
  movie.groups.create(list: list_to_watch)
end
