module RestaurantsHelper
    def restaurant_thumbnail
        img = restaurant.photo.present? ? restaurant.photo.thumb.url : "placeholder.png"
        image_tag img, class: "restaurant-thumb"
    end
end
