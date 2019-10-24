# DOG STROLLING : CHIEN CHAUD DEVANT !

## The Hacking Project - Bootcamp Fullstack Web
### Semaine 5, jour 4.

> Il faudrait sortir le chien, mais je n'ai pas envie d'assumer. Tiens, si je sortais mon téléphone pour refiler cette corvée à un·e précaire sous-payé·ée ?


L'app ne fait rien pour l'instant. Elle contient une base de données qui (normalement) répond aux critères de l'exercice.


***

## Fonctionnalités présentes

* contient les models et tables demandés (cf les fichiers de migration pour le détail des attributs)
* contient le seed permettant de remplir la BDD pour effectuer les tests


***

## Installation
Cloner le repository : 
~~~bash
$ git clone https://github.com/gaael/dog-strolling.git
~~~
Ou télécharger sa version compressée puis l'extraire.

Se placer dans le dossier `dog-strolling-master`. Installer les gemmes nécessaires (via *Bundler*)
~~~bash
$ cd path/to/dog-strolling-master
$ bundle install
~~~

Remplir la BDD à partir de `seeds.rb`
~~~bash
$ rails db:seed
~~~

Lancer la *console Rails* pour pouvoir accéder à et expérimenter avec la BDD
~~~bash
$ rails c
~~~

Une fois dans la console, penser à appeler `table_print` 
~~~ruby
> require 'table_print'
 => true
~~~


***

## Configuration requise
Version de **Rails** :
~~~bash
$ rails-v
Rails 5.2.3
~~~

Version de **Ruby** :
~~~bash
$ ruby -v
ruby 2.5.1
~~~

Version de **Bundler** :
~~~bash
$ bundle -v
Bundler version 2.0.2
~~~

Gemmes utilisées (source : *Gemfile*) :\
Gemmes ajoutées au **Gemfile** de Rails :
~~~ruby
group :added_gems do
  # Enables 'realistic' and 'effortless' seed
  gem 'faker'
  # Displays nice tables in Rails Console
  gem 'table_print'
end
~~~


***

## Testing

En chaînant des requêtes pour la BDD dans `rails console`. Par exemple :
~~~ruby
> tp Dog.first.city.dogsitters.last.city.dogs.first
# returns a dog

> Dog.first.city.dogsitters.last.city.dogs.first.weight
# returns an integer

> Dog.first.city.dogsitters.last.city.dogs.first.big_dog
# returns a boolean
~~~

***

## Historique des versions

* version 1.00 : `seeds.rb prêt`
* version 0.50 : added models, tables and relationships
* version 0.00 : repo init

***

## Credits
Les ressources de [The Hacking Project](https://www.thehackingproject.org/)\
Les [guides de Rails](https://guides.rubyonrails.org/index.html)


## Meta
Gaël Dubois - [Twitter](https://twitter.com/GalDUBOIS1) - [GitHub](https://github.com/gaael/)\
Distribué sous license GNU-GPLv3. Voir `LICENCE.txt` pour plus d'informations.