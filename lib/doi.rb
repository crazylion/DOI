require 'net/http'
require "doi/version"

module Doi
    class Search
        def self.by_number number
            uri=URI("http://dx.doi.org/#{number}" )
            res = Net::HTTP.get(uri)
            body = res
            match =/"(.*)"/.match(body)
            match = match[1..-1]
            if "-//W3C//DTD HTML 4.01 Transitional//EN" == match[0]
                return nil
            else
            return  match[0]
            end
            
        end
    end
end
