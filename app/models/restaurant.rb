class Restaurant < ActiveRecord::Base
    has_many :dishes

    def self.mcdonalds
        Restaurant.find do |restaurant|
            restaurant[:name].downcase == "mcdonalds"
        end
    end

    def self.tenth
        Restaurant.find do |restaurant|
            restaurant[:id] == 10
        end
    end 

    def self.with_long_names
        Restaurant.where("LENGTH(name) > 12")
        #Client.where("orders_count = ?", params[:orders])
    end

    def self.max_dishes
        dish_counts = self.dish_count
        sorted_dish_counts = dish_counts.sort_by{|key, value| value}
        return Restaurant.find do |restaurant|
            restaurant[:id] == sorted_dish_counts[sorted_dish_counts.count - 1][0]
        end
    end

    def self.focused
        dish_counts = self.dish_count
        dish_counts.select do |key, value|
            value < 5
        end
    end

    def self.dish_count
        Dish.group(:restaurant_id).count
    end

    def self.large_menu
        dish_counts = self.dish_count
        dish_counts.select do |key, value|
            value < 20
        end
    end

    def self.vegetarian
        Tag.where("name = 'Vegetarian'")
    end

    def self.name_like(n)
        Restaurant.where("name = '#{n}'")
    end

    def self.name_not_like(n)
        Restaurant.where("name != '#{n}'")
    end

    # def dishes
    #     Dish.all.select do |dish|
    #         dish[:restaurant_id] == self[:id]
    #     end
    # end
end