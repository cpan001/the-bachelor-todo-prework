def get_season(data, season)
  data.fetch(season)
end


def get_first_name_of_season_winner(data, season)
  # code here
  curr_season = get_season(data, season)
  curr_season.each { |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  }
end

def get_contestant_name(data, occupation)
  # code here
  data.each { |season, contestants|
    contestants.each { |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each { |season, contestants|
    contestants.each { |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    }
  }
  count
end

def get_occupation(data, hometown)
  # code here
  data.each { |season, contestants|
    contestants.each { |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  curr_season = get_season(data, season)
  ages = curr_season.collect { |contestant|
    contestant["age"].to_f
  }
  (ages.inject {|sum, n| sum + n} / ages.length).round
end
