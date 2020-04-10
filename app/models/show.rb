class Show < ActiveRecord::Base
  def self.highest_rating
    # Show.maximum(:rating)
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.select('*').order(rating: :desc).first
  end

  def self.least_popular_show
    self.select('*').order(rating: :asc).first
  end
  
  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.select('*').where('rating > 5')
  end
  
  def self.shows_by_alphabetical_order
    self.select('*').order(name: :asc)
  end

  def self.lowest_rating
    # Show.maximum(:rating)
    self.minimum(:rating)
  end
end