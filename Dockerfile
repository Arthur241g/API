# À partir de l'image officielle Ruby
FROM ruby:3.2.2

# Installez Node.js et Yarn (nécessaires pour la compilation des assets Rails)
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn
RUN apt-get update -qq && apt-get install -y ruby

# Définissez le répertoire de travail
WORKDIR /API

# Ajoutez le Gemfile et le Gemfile.lock à l'image
COPY Gemfile /API/Gemfile
COPY Gemfile.lock /API/Gemfile.lock
COPY import.rb /API/import.rb

# Installez les gems
RUN bundle install

# Exécutez les migrations
RUN bundle exec rails db:migrate

# import data from csv
#RUN bundle exec ruby import.rb

# Copiez le reste de l'application dans l'image
COPY . /API

# Exposez le port sur lequel le serveur Rails s'exécutera
EXPOSE 3000

# Définissez la commande pour démarrer le serveur
CMD ["rails", "server", "-b", "0.0.0.0"]