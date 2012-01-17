Sinatra Template
================

A simple Sinatra template modeled after [Flask
Heroku](http://github.com/zachwill/flask_heroku).


Install
-------

Once you've cloned the repo, simply run:

    bundle install


Development Server
------------------

To start up the development server, run the following:

    bundle exec thin start

If, however, you would prefer to create a `screen` process to run the
development server, then you could use the following commands:

    screen -S server
    cd path/to/sinatra/template
    bundle exec thin start

You can then detach the `screen` process with `CTRL-A-D`. To reattach
the process, simply run:

    screen -R server


Heroku
------

To upload your application to Heroku, make sure you first have the
Heroku gem installed. Then run the following command (with the name of
your application substituted for `app_name`):

    heroku create app_name --stack cedar
    git push heroku master


Custom Domains
--------------

Attaching [your own custom domain to your Heroku
instance](http://devcenter.heroku.com/articles/custom-domains) is pretty
easy.

    heroku addons:add custom_domains
    heroku domains:add example.com
    heroku domains:add www.example.com

Make sure to attach the following A records using your DNS management
tool:

    75.101.163.44
    75.101.145.87
    174.129.212.2

For more information, make sure to read this [Heroku devcenter
article](http://devcenter.heroku.com/articles/custom-domains).
