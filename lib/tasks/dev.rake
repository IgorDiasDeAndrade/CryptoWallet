namespace :dev do
  desc "Deleta, criar, migra e povoa o banco de dados"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
      spinner.auto_spin # Automatic animation with default interval
      %x(rails db:drop db:create db:migrate dev:add_miningt)
      spinner.stop("Done!") # Stop animation
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

=begin
  desc "Povoa tabela Coin"
  task add_coins: :environment do
    coins = [
    {description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://styles.redditmedia.com/t5_2x4rw/styles/communityIcon_l2st2oji3am11.png"},

    {description: "Ethereum",
    acronym: "ETH",
    url_image: "https://cdn4.iconfinder.com/data/icons/cryptocoins/227/ETH-512.png"}]

    coins.each do |coin|
      Coin.find_or_create_by!(coin)
    end
  end
=end

  desc "Povoa a tabela Mining Type"
  task add_miningtypes: :environment do
    miningtypes = [
    {description: "Proof of Work",
    acronym: "PoW"},
    {description: "Proof of Stake",
    acronym: "PoS"}]

    miningtypes.each do |miningtype|
        MiningType.find_or_create_by!(miningtype)
    end
  end
end