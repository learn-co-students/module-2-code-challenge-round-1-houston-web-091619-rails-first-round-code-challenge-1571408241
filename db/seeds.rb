Heroine.destroy_all
Power.destroy_all


heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel", power_id: "power.id"},
  {name: "Doreen Green", super_name: "Squirrel Girl", power_id: "power.id"},
  {name:"Gwen Stacy", super_name:"Spider-Gwen", power_id: "power.id" },
  {name:"Janet Van Dyne", super_name:"The Wasp", power_id: "power.id" },
  {name:"Wanda Maximoff", super_name:"Scarlet Witch", power_id: "power.id" },
  {name:"Carol Danvers", super_name:"Captain Marvel", power_id: "power.id" },
  {name:"Jean Grey", super_name:"Dark Phoenix", power_id: "power.id" },
  {name:"Ororo Munroe", super_name:"Storm", power_id: "power.id" },
  {name:"Kitty Pryde", super_name:"Shadowcat", power_id: "power.id" },
  {name:"Elektra Natchios", super_name:"Elektra", power_id: "power.id" }
]

powers = [
  {name:"super strength", description: "gives the wielder super-human strengths"},
  {name:"flight", description: "gives the wielder the ability to fly through the skies at supersonic speed"},
  {name:"super human senses", description: "allows the wielder to user her senses at a super-human level"},
  {name:"elasticity", description: "can stretch the human body to extreme lengths"}
]

powers.each {|power| Power.create(power)}

# ---------------
# POWERFUL HEROINES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate heroine with a power!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# ---------------

heroines.each { |heroine| Heroine.create(heroine) }
