puts "Destroying all gardens..."
Garden.destroy_all

puts "Creating a list of gardens..."
Garden.create!(
  name: 'South Park',
  category: Garden::CATEGORIES.sample,
  picture_url: 'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80'
)
Garden.create!(
  name: 'East Park',
  category: Garden::CATEGORIES.sample,
  picture_url: 'https://images.unsplash.com/photo-1550948390-6eb7fa773072?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80'
)

puts "Done 🎉"
