# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Coin.create!(
    description: "Bitcoin",
    acronym: "BTC"
    url_image: "https://styles.redditmedia.com/t5_2x4rw/styles/communityIcon_l2st2oji3am11.png"
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH"
    url_image: "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Ethereum-ETH-icon.png"
)