I kept on forgetting some of the domain names I set up for development on my local machine so I created a tiny sinatra app that uses the ghost gem to list the links for me.

# Usage

    gem install sinatra ghost
    git clone git://github.com/mfilej/sinatra-local-sites.git

Open up [Passenger.prefPane](http://github.com/alloy/passengerpane/tree/master) and drop the freshly cloned folder onto it. Set the address to sites.local or something similar. Or just setup apache by yourself if you prefer.

Bonus step: bookmark the address in your browser if you have one dedicated to web development.

Load the app and click away.
