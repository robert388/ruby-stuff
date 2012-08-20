
FactoryGirl.define do
  factory :wallpaper, :class => Refinery::Wallpapers::Wallpaper do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

