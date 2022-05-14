namespace :dev do
  desc "Deleta, criar, migra e povoa o banco de dados"
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end
