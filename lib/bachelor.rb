require 'pry'

=begin
two_seasons = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}
=end

def get_first_name_of_season_winner(data, season)
  arr = data[season]
  arr.each do |obj|
    if obj["status"] == "Winner"
      return obj["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |k, v|
    v.each do |obj|
      if obj["occupation"] == occupation
        return obj["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |k, v|
    v.each do |obj|
      if obj["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |k, v|
    v.each do |obj|
      if obj["hometown"] == hometown
        return obj["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  total = 0
  data[season].each do |obj|
    ages << obj["age"]
  end
  ages.each do |age|
    total += age.to_f
  end
  (total / ages.size).round
end

#get_contestant_name(two_seasons, "Entertainer")