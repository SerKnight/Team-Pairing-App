Team.delete_all
Team.create([
        { name: 'Design', description: "The 'pretty' team - HTML, CSS, Javascript Gurus. We like beautiful things, and fluid user experiences." },
        { name: 'Rails', description: "The 'smart' team - core backend peoples. We like skinny models, and no logic in our views." },
        { name: 'Marketing', description: "The 'money' team - We sell all the things & find out the best way to get us all paid." },
        { name: 'Customer Outreach', description: "The 'philosophy' team - What is our product being used for.. and how can we make it better." }
])

team_one = Team.find_by_name("Design")
team_two = Team.find_by_name("Rails")
team_three = Team.find_by_name("Marketing")
team_four = Team.find_by_name("Customer Outreach")



Member.delete_all
Member.create([
        { name: 'Rick Astly', email: "rickrolled@mail.com", team_ids: [team_one.id] },
        { name: 'Derek Torr', email: "manager@mail.com", team_ids: [team_one.id] },
        { name: 'Cam Merra', email: "photos@mail.com", team_ids: [team_one.id] },
        { name: 'Devin Chee', email: "sistine@mail.com", team_ids: [team_one.id] },
        { name: 'Blair Ring', email: "music@mail.com", team_ids: [team_one.id] },
        { name: 'Sampson Night', email: "suitcase@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Laurie Aught', email: "nobel@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Eley Feighnt', email: "postgresql@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Chance Hellor', email: "government@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Dan Deelions', email: "flowers@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Abdul Chaudrhy', email: "abdul@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Devin Foley', email: "mboileman@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Jeff Lee', email: "jlee@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Kevin Ebaugh', email: "keshaluvr@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Lady', email: "pooch@mail.com", team_ids: [team_one.id, team_two.id, team_three.id, team_four.id] },
        { name: 'Sloane Sturzenegger', email: "thecodernator@mail.com", team_ids: [team_one.id, team_two.id] },
        { name: 'Leor Stern', email: "lordleor@mail.com", team_ids: [team_two.id] },
        { name: 'Linden Tibbets', email: "tibetbro@mail.com", team_ids: [team_two.id]  },
        { name: 'Nate Murray', email: "catluvr@mail.com", team_ids: [team_two.id]  },
        { name: 'Shiva Kilaru', email: "supreme_god@mail.com", team_ids: [team_two.id] },
        { name: 'Alexander Tibbets', email: "tidbits@mail.com", team_ids: [team_two.id] },
        { name: 'Christopher Knight', email: "rehpotsirhc46@gmail.com", team_ids: [team_two.id] },
        { name: 'Anthony Accomazzo', email: "anthony@ifttt.com", team_ids: [team_two.id] }
])