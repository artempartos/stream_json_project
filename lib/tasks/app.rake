namespace :app do
  desc "TODO"
  task fill_product: :environment do
    10000.times do
      Product.create(
      name: Faker::Name.name,
      description: Faker::Lorem.paragraph,
      owner: Faker::Internet.email,
      full_name: Faker::Name.name
      )
    end
  end

end
