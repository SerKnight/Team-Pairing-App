Team.delete_all
Team.create([
        { name: 'agile', description: "This is a team description, generall 1 sentence about the team's mantra", id: 1 },
        { name: 'tdd', description: "This is a team description, generall 1 sentence about the team's mantra", id: 2 }
])


Member.delete_all
Member.create([
        { name: 'Member1', email: "member1@gmail.com", team_ids: 1 },
        { name: 'Member2', email: "member2@gmail.com", team_ids: 1 },
        { name: 'Member3', email: "member3@gmail.com", team_ids: 1 },
        { name: 'Member4', email: "member4@gmail.com", team_ids: 1 },
        { name: 'Member5', email: "member5@gmail.com", team_ids: 1 },
        { name: 'Member6', email: "member6@gmail.com", team_ids: 2 },
        { name: 'Member7', email: "member7@gmail.com", team_ids: 2 },
        { name: 'Member8', email: "member8@gmail.com", team_ids: 2 },
        { name: 'Member9', email: "member9@gmail.com", team_ids: 2 },
        { name: 'Member10', email: "member10@gmail.com", team_ids: 2 },
        { name: 'Member11', email: "member11@gmail.com", team_ids: 2 },
        { name: 'Member12', email: "member12@gmail.com", team_ids: 2 },
        { name: 'Member13', email: "member13@gmail.com", team_ids: 1 },
        { name: 'Member14', email: "member14@gmail.com", team_ids: 1 },
        { name: 'Member15', email: "member15@gmail.com", team_ids: 1 }
])