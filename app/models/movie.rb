class Movie < ActiveRecord::Base
    def self.ratings
        arr = Movie.select('rating').distinct.inject([]){|arr,mov| arr.push(mov.rating)} #uniq not working properly
        arr.sort!
    end
end
