# Sinatra Modular

A skeleton Sinatra project, supporting modular applications (Django-style) and automated ruby/sass reloading.

## Installation and running

```
$ git clone git@github.com:alexedwards/sinatra-modular.git
$ cd sinatra-modular
$ sudo bundle install
$ shotgun config.ru
$ firefox http://localhost:9393/example
```

## Creating a new application

This skeleton supports self-contained modular 'applications', each containing a Controller and Model. This approach to code layout is copied from Python framework [Django](https://www.djangoproject.com/).

Foe example, to add a 'mailing list' application to your project run the following rake command.

```
$ rake app:new[mailing_list]
```

This creates a new folder and two new files: `mailing_list/controller.rb` and `mailing_list/model.rb`. Use the Controller file to define your routes and application logic, and the Model file for any database / IO code.

A basic example of this, showing the display of a random quote from an external API can be found in the `example` application folder.

## Mounting a application

Once you're application is complete, you can mount it via the `config.ru` file. If we wanted to mount our mailing list application at `/mailing-list`, for example, we would add the following lines:

```ruby
map "/mailing-list" do
	run Mailing_list::Controller
end
```

## Project-wide settings

Any project-wide settings you have, like database connections or session management should be defined in the `settings.rb` file in the project root. This settings are available to all applications in the project.

## Code reloading

For convenience while developing, automated server restarting on code changes is supported thanks to the [Shotgun](https://github.com/rtomayko/shotgun) gem. Sass is also supported out of the box. Any `.sass` files contained in the `stylesheets/sass` folder are automatically compiled into plain CSS on the fly and saved to the `stylesheets` folder.
