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
    end

    # def dishes
    #     Dish.all.select do |dish|
    #         dish[:restaurant_id] == self[:id]
    #     end
    # end
end