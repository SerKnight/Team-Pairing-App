Team.delete_all
Team.create([
        { name: 'Design', description: "The 'pretty' team - HTML, CSS, Javascript Gurus. We like beautiful things, and fluid user experiences.", id: 1 },
        { name: 'Rails', description: "The 'smart' team - core backend peoples. We like skinny models, and no logic in our views.", id: 2 },
        { name: 'Marketing', description: "The 'money' team - We sell all the things & find out the best way to get us all paid.", id: 3 },
        { name: 'Customer Outreach', description: "The 'philosophy' team - What is our product being used for.. and how can we make it better.", id: 4 }
])


Member.delete_all
Member.create([
        { name: 'Rick Astly', email: "rickrolled@mail.com", team_ids: 1 },
        { name: 'Derek Torr', email: "manager@mail.com", team_ids: 2 },
        { name: 'Cam Merra', email: "photos@mail.com", team_ids: 1 },
        { name: 'Devin Chee', email: "sistine@mail.com", team_ids: 1 },
        { name: 'Blair Ring', email: "music@mail.com", team_ids: 1 },
        { name: 'Sampson Night', email: "suitcase@mail.com", team_ids: [2, 1] },
        { name: 'Laurie Aught', email: "nobel@mail.com", team_ids: 2 },
        { name: 'Eley Feighnt', email: "postgresql@mail.com", team_ids: [2, 1] },
        { name: 'Chance Hellor', email: "government@mail.com", team_ids: 2 },
        { name: 'Dan Deelions', email: "flowers@mail.com", team_ids: 2 },
        { name: 'Abdul Chaudrhy', email: "abdul@mail.com", team_ids: 2 },
        { name: 'Devin Foley', email: "mboileman@mail.com", team_ids: [2, 1] },
        { name: 'Jeff Lee', email: "jlee@mail.com", team_ids: [2, 1] },
        { name: 'Kevin Ebaugh', email: "keshaluvr@mail.com", team_ids: [2, 1] },
        { name: 'Lady', email: "pooch@mail.com", team_ids: 2 },
        { name: 'Sloane Sturzenegger', email: "thecodernator@mail.com", team_ids: 1 },
        { name: 'Leor Stern', email: "lordleor@mail.com", team_ids: 1 },
        { name: 'Linden Tibbets', email: "tibetbro@mail.com", team_ids: 1 },
        { name: 'Nate Murray', email: "catluvr@mail.com", team_ids: 1 },
        { name: 'Shiva Kilaru', email: "supreme_god@mail.com", team_ids: [2, 1] },
        { name: 'Alexander Tibbets', email: "tidbits@mail.com", team_ids: 2 },
        { name: 'Christopher Knight', email: "rehpotsirhc46@gmail.com", team_ids: 2 },
        { name: 'Anthony Accomazzo', email: "A_mazzo@mail.com", team_ids: [2, 1] }
])