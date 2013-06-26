Team.delete_all
Team.create([
        { name: 'agile', description: "This is a team description, generall 1 sentence about the team's mantra", id: 1 },
        { name: 'tdd', description: "This is a team description, generall 1 sentence about the team's mantra", id: 2 }
])


Member.delete_all
Member.create([
        { name: 'Member1', email: "rehposirhc46@gmail.com", team_ids: 1 },
        { name: 'Member2', email: "rehposirhc46@gmail.com", team_ids: 1 },
        { name: 'Member3', email: "rehposirhc46@gmail.com", team_ids: 1 },
        { name: 'Member4', email: "rehposirhc46@gmail.com", team_ids: 1 }
])