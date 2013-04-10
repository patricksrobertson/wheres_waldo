OAuth / CORS / Services Proof of Concept
=============================

This is where I want to collect the information about this epic journey that I've been undertaking on building SOA on the front and the back end. Hopefully we'll be able to make great use of this.

THE VISION
----------

By having an OAuth2.0 Provider responsible for authentication and authorization we can build rich client™ applications that require little to no server side code to interact with a completly distributed SOA of all our data. We use the bearer token provided by OAuth to allow services to talk to one another and then take advantage of CORS to mashup all of our services into a coherent web application.

The Provider
------------

[https://github.com/patricksrobertson/icis_identity](https://github.com/patricksrobertson/icis_identity)

There isn't a lot fancy going on here. We have a basic devise setup that then has a [Doorkeeper](https://github.com/applicake/doorkeeper) backed OAuth setup. There are two APIs endpoints that are exposed:
api/v1/me - This provides basic information for clients authenticating.
apiv/v1/verify - This allows services to ask if a specific token/user id is legit. All services implement middleware that does this automagically.

The Client
----------

[https://github.com/patricksrobertson/omniauth-icis](https://github.com/patricksrobertson/omniauth-icis)
[https://github.com/patricksrobertson/identity_client](https://github.com/patricksrobertson/identity_client)

I mention two libraries here. I wrote an [Omniauth](https://github.com/intridea/omniauth) Client extension based upon the provider I wrote. Then I created a Rails Engine that we can mount inside applicaitons that want to authenticate with the ICIS Identity provider. It has a user object, stores things in the session, and has all the data a client app needs to inject to services later on.

The App
------

[https://github.com/patricksrobertson/wheres_waldo](https://github.com/patricksrobertson/wheres_waldo)

I chose to use [Ember.js](http://emberjs.com) for the rich client because it's been getting a lot of buzz and we're considering future applications with it. This ended up being a pretty solid choice because modifying Ember to handle talking to a bunch of different services and passing custom headers in was pretty damn simple.

The Services
------------
