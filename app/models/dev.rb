class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one? item
        Freebie.all.find_by(item_name: item) ? true : false
    end

    def give_away(dev, freebie)
        if freebie.dev_id == self.id
            freebie.dev_id = dev.id
        "#{freebie.item_name} now belongs to #{freebie.dev.name}!"
        end
    end
end
