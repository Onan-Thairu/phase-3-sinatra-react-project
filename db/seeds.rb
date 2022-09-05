puts "Seeding users..."

User.create([
  { username: "Onan" },
  { username: "Ken"  },
  { username: "Mike" },
  { username: "Rachel"},
  { username: "Joy"  }
])

puts "Seeding blockers..."

Blocker.create([
  {
    username: "Onan",
    description: "How to loop though an array in ruby",
    tag: "Ruby",
    solution: "Use .map, .each, .select, .sum"
  },
  {
    username: "Mike",
    description: "How to loop though an array in ruby",
    tag: "JavaScript",
    solution: "Use .map, .reduce, .filter"
  },
  {
    username: "Rachel",
    description: "How to create a new react application.",
    tag: "React",
    solution: "Use npx create-react-app <appname>"
  }
])

puts "✅ Done seeding!"
