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
