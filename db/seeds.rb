Contact.create!([
  {first_name: "BYIRINGIRO", last_name: "Yves"},
  {first_name: "Rukundo", last_name: "Eric"},
  {first_name: "Twizeyimana", last_name: "Emmanuel"},
  {first_name: "Twizeyimana", last_name: "Emmanuel"}
])
Email.create!([
  {email: "ericrukundo005@gmail.com", category: "Home", contact_id: 23},
  {email: "byiringiroyves61@gmail.com", category: "Home", contact_id: 24},
  {email: "byiringiroyves45@gmail.com", category: "Work", contact_id: 24},
  {email: "ericrukundo005@gmail.com", category: "Home", contact_id: 25},
  {email: "ericrukundo065@gmail.com", category: "Work", contact_id: 25},
  {email: "ericrukundo0895@gmail.com", category: "Home", contact_id: 25},
  {email: "ericrukundo005@gmail.com", category: "Work", contact_id: 26}
])
Phone.create!([
  {phone: "0781049218", category: "Home", contact_id: 23},
  {phone: "0781049217", category: "Work", contact_id: 23},
  {phone: "0788746354", category: "Home", contact_id: 24},
  {phone: "0781049218", category: "Home", contact_id: 25},
  {phone: "0781049216", category: "Work", contact_id: 25},
  {phone: "0781049235", category: "Home", contact_id: 25},
  {phone: "0788453015", category: "Home", contact_id: 26}
])
