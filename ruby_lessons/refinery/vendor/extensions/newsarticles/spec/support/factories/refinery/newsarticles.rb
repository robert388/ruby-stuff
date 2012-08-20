
FactoryGirl.define do
  factory :newsarticle, :class => Refinery::Newsarticles::Newsarticle do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

