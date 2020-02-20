class PublicController < ApplicationController
  def main
    @restaurants = Restaurant.latest
  end
end
