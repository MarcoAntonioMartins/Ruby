def stock_picker(prices)

    i = 0
    j = 0
    buy = 0
    sell = 0
    variacao = 0

    while i < prices.length 
        while j < prices.length  

            if prices[j] - prices[i] > 0
                if variacao < prices[j] - prices[i]
                    variacao = prices[j] - prices[i]
                    buy = i
                    sell = j
                end
            end

            if prices[i] > prices[j]
                break
            end

            j += 1

        end

        i += 1
        j = i

    end

    return puts [buy,sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])