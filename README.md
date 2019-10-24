# FREE DOC : LIBÉRONS LES TOUBIBS !

## The Hacking Project - Bootcamp Fullstack Web\
### Semaine 5, jour 4.

> On essaie de concurrencer Doctolib. Du moins, la base de données de Doctolib. Enfin, la structure de la base de données de Doctolib. Ou plutôt, le concept de la structure de la base de données de Doctolib. Bref, on fait du Doctolib homéopatique.


L'app ne fait rien pour l'instant. Elle contient une base de données qui (normalement) répond aux critères de l'exercice.

***

## Fonctionnalités présentes

* Rien pour le moment


***

## Installation
Cloner le repository : 
~~~bash
$ git clone https://github.com/gaael/free_doc.git
~~~
Ou télécharger sa version compressée puis l'extraire.

Se placer dans le dossier `free_doc-master`. Installer les gemmes nécessaires (via *Bundler*)
~~~bash
$ cd path/to/free_doc-master
$ bundle install
~~~

Lancer la *console Rails* pour pouvoir accéder à et expérimenter avec la BDD
~~~bash
$ rails c
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
None yet.

***

## Historique des versions


* version 0.00 : repo init

***

## Credits
Les ressources de [The Hacking Project](https://www.thehackingproject.org/)\
Les [guides de Rails](https://guides.rubyonrails.org/index.html)


## Meta
Gaël Dubois - [Twitter](https://twitter.com/GalDUBOIS1) - [GitHub](https://github.com/gaael/)\
Distribué sous license GNU-GPLv3. Voir `LICENCE.txt` pour plus d'informations.