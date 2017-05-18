3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body:  "Come down, O Love divine, seek thou this soul of mine, 
      and visit it with thine own ardor glowing; O Comforter, draw near, 
      within my heart appear, and kindle it, thy holy flame bestowing.
      Come down, O Love divine, seek thou this soul of mine, 
      and visit it with thine own ardor glowing; O Comforter, draw near, 
      within my heart appear, and kindle it, thy holy flame bestowing.
      Come down, O Love divine, seek thou this soul of mine, 
      and visit it with thine own ardor glowing; O Comforter, draw near, 
      within my heart appear, and kindle it, thy holy flame bestowing.", 
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "FH #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Fountain Hills",
    body: "O let it freely burn, till earthly passions turn to dust and ashes in its heat consuming; 
      and let thy glorious light shine ever on my sight, and clothe me round, the while my path illuming.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Scottsdale",
    body: "O let it freely burn, till earthly passions turn to dust and ashes in its heat consuming; 
      and let thy glorious light shine ever on my sight, and clothe me round, the while my path illuming.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end


puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}", 
    )
end

puts "3 technologies items created"