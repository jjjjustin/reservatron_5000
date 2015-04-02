Room.create(name: "Yellow Room",
            location: "K Building",
            description: "Great little room - perfect for intimate meetings or work sessions",
            image: File.open(Rails.root + "app/assets/images/yellow.jpg"))

Room.create(name: "Blue Room",
            location: "K Building",
            description: "Large, open room - great for classes or presentations",
            image: File.open(Rails.root + "app/assets/images/blue.jpg"))

Room.create(name: "The Design Room",
            location: "C Building",
            description: "Cozy room for congerences or small classes",
            image: File.open(Rails.root + "app/assets/images/design.jpg"))

Room.create(name: "The Garage",
            location: "K Building",
            description: "The largest space - will accomodate 50+ for a variety of needs",
            image: File.open(Rails.root + "app/assets/images/garage.jpg"))

Room.create(name: "The Kitchen",
            location: "C Building",
            description: "Small space seating up to 8",
            image: File.open(Rails.root + "app/assets/images/kitchen.jpg"))

Room.create(name: "The Lounge",
            location: "C Building",
            description: "Large open space with couches and desk seating - perfect for talks or lectures",
            image: File.open(Rails.root + "app/assets/images/lounge.jpg"))

Room.create(name: "The Rails Room",
            location: "C Building",
            description: "Great little room - perfect for intimate meetings or work sessions",
            image: File.open(Rails.root + "app/assets/images/rails.jpg"))

Room.create(name: "The Fish Room",
            location: "K Building",
            description: "Cozy couch seating for intimate meetings and brainstorm sessions",
            image: File.open(Rails.root + "app/assets/images/fish.jpg"))

User.create(first_name: "Justin",
            last_name: "Sitarz",
            dob: "1925-4-4",
            favorite_color: "Blue",
            email: "justin@gmail.com",
            password: "password",)


