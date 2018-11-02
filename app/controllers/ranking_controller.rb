class RankingController < ApplicationController
    def index
        @people = Person.order(point: :desc)
    end
end
