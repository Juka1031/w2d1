class Dog
    def initialize (name, breed, age, bark, food)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = food
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(new_age)
        @age = new_age
    end

    def bark 
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(fav_food)
        # @favorite_foods.each {|ele| return true if ele.downcase == fav_food.downcase}
        # false
        @favorite_foods.map(&:downcase).include?(fav_food.downcase)
    end
end
