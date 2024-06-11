
class Item
    attr_reader :name, :bids, :bidding_open

    def initialize(name)
        @name = name
        @bids = {}
        @bidding_open = true
    end

    def add_bid(attendee, bid)
        if @bidding_open == true
            @bids[attendee] = bid
        else
            "Bidding is closed for this item."
        end
    end

    def current_high_bid
        @bids.values.max
    end

    def close_bidding
        @bidding_open = false        
    end
end