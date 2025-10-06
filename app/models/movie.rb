class Movie < ApplicationRecord
  def self.all_ratings
    distinct.order(:rating).pluck(:rating)
  end

  def self.with_ratings(ratings_list)
    return all if ratings_list.blank?
    where(rating: ratings_list.map { |r| r.to_s.upcase })
  end
end
