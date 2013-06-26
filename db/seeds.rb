Team.delete_all
Team.create([
        { name: 'IFTTT', description: "This is a team description, generall 1 sentence about the team's mantra", id: 1 },
        { name: 'Agile', description: "This is a team description, generall 1 sentence about the team's mantra", id: 2 },
        { name: 'TDD', description: "This is a team description, generall 1 sentence about the team's mantra", id: 3 },
        { name: 'DD', description: "This is a team description, generall 1 sentence about the team's mantra", id: 4 },
        { name: 'Bananarama', description: "This is a team description, generall 1 sentence about the team's mantra", id: 5 },
        { name: 'Alcoholics', description: "This is a team description, generall 1 sentence about the team's mantra", id: 6 }
])


Member.delete_all
Member.create([
        { name: 'Kareem Grant', email: "rehposirhc46@gmail.com", team_ids: 1 },
        { name: 'Chris Knight', email: "member@mail.com", team_ids: 1 },
        { name: 'Daniel Mee', email: "member2@mail.com", team_ids: 1 },
        { name: 'Laura Steadman', email: "member3@mail.com", team_ids: 1 },
        { name: 'Elaine Tai', email: "member4@mail.com", team_ids: 1 },
        { name: 'Chelsea Komlo', email: "member5@mail.com", team_ids: 1 },
        { name: 'Raph Weiner', email: "member6@mail.com", team_ids: 1 },
        { name: 'Paul blackwell', email: "member7@mail.com", team_ids: 1 },
        { name: 'Josh Mejia', email: "member8@mail.com", team_ids: 1 },
        { name: 'Shane Rogers', email: "member9@mail.com", team_ids: 1 },
        { name: 'Geoffrey Schorpkof', email: "member10@mail.com", team_ids: 1 },
        { name: 'Jeff Casimir', email: "member11@mail.com", team_ids: 1 },
        { name: 'Franklin Webber', email: "member12@mail.com", team_ids: 1 }
])