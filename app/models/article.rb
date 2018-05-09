class Article < ApplicationRecord
validates :title, :content, presence: true
validates :title, uniqueness: true
validates :stars, inclusion: { in: 0..5 }
validates :title length: {minimum: 10, maximum: 100, too_long: "%{count} characters is the maximum allowed", too_short: "%{count} characters is the minimum allowed" }
end
