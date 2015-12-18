class Seed

  def initialize
    execute_seed
  end

  def execute_seed
    clear_database

    Patient.create(
      name: "Kelly Weaver",
      bottles: [
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 45.days, 
          battery_level: 100.0,
          pills: [] 
          ),
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 20.days, 
          battery_level: 100.0,
          pills: [] 
          ),
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 60.days, 
          battery_level: 100.0, 
          pills: [] 
          ),
    ])

    Patient.create(
      name: "Michael Scott",
      bottles: [
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 25.days, 
          battery_level: 100.0, 
          pills: []
          ),
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 30.days, 
          battery_level: 100.0, 
          pills: []
          ),
    ])

    Patient.create(
      name: "John Ford",
      bottles: [
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 45.days, 
          battery_level: 100.0, 
          pills: []
          ),
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 30.days, 
          battery_level: 100.0,
          pills: [] 
          ),
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 60.days, 
          battery_level: 100.0, 
          pills: []
          ),
    ])

    Patient.create(
      name: "Sara Tengowski",
      bottles: [
        Bottle.new(filled_date: Time.now, 
          refill_date: Time.now + 30.days, 
          battery_level: 100.0, 
          pills: []
          ),
    ])

    prescription_drugs = ['Lipitor', 'Nexium', 'Plavix', 'Amoxicillin']

    sara = Patient.find_by_name('Sara Tengowski')
    sara.bottles.each_with_index do |bottle, i|
      25.times {|i| bottle.pills << Pill.new(name: prescription_drugs[i], mass: 500)}
    end
    sara.save
    
    john = Patient.find_by_name('John Ford')
    john.bottles.each_with_index do |bottle, i|
      25.times {|i| bottle.pills << Pill.new(name: prescription_drugs[i], mass: 500)}
    end
    john.save

    michael = Patient.find_by_name('Michael Scott')
    michael.bottles.each_with_index do |bottle, i|
      25.times {|i| bottle.pills << Pill.new(name: prescription_drugs[i], mass: 500)}
    end
    michael.save

    kelly = Patient.find_by_name('Kelly Weaver')
    kelly.bottles.each_with_index do |bottle, drug_index|
      25.times {bottle.pills << Pill.new(name: prescription_drugs[drug_index], mass: 500)}
    end
    kelly.save
  end

  def clear_database
    Patient.destroy_all
  end
end

Seed.new