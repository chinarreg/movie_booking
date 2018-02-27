class Film < ApplicationRecord
  has_many :showings
  before_create :set_slug

  private

  def set_slug
    loop do
      self.slug = self.name.parameterize + '-' + rand(11 .. 99).to_s
      break unless Film.where(slug: slug).exists?
    end
  end
end
