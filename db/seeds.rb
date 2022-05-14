# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

coins = [
    {description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://styles.redditmedia.com/t5_2x4rw/styles/communityIcon_l2st2oji3am11.png"},

    {description: "Ethereum",
    acronym: "ETH",
    url_image: "https://cdn4.iconfinder.com/data/icons/cryptocoins/227/ETH-512.png"}
]

#O each abaixo em confunto com o metodo find_or_create_by irá verificar a variável o array de hashes coin
#para saber se cada elemento do array já está criado pelo ACTIVE RECORD, se não estiver o método criará no BD
coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

miningtypes = [
    {description: "Proof of Work",
    acronym: "PoW"},
    {description: "Proof of Stake",
    acronym: "PoS"}
]

miningtypes.each do |miningtype|
    MiningType.find_or_create_by!(miningtype)
end