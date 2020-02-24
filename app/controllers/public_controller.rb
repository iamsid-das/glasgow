class PublicController < ApplicationController

  def main
    @restaurant = Restaurant.latest
  end
  
end
