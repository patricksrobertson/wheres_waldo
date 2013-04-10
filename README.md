OAuth / CORS / Services Proof of Concept
=============================

This is where I want to collect the information about this epic journey that I've been undertaking on building SOA on the front and the back end. Hopefully we'll be able to make great use of this.

THE VISION
----------

By having an OAuth2.0 Provider responsible for authentication and authorization we can build rich client™ applications that require little to no server side code to interact with a completly distributed SOA of all our data. We use the bearer token provided by OAuth to allow services to talk to one another and then take advantage of CORS to mashup all of our services into a coherent web application.

The Provider
------------

[https://github.com/patricksrobertson/icis_identity](https://github.com/patricksrobertson/icis_identity)
There isn't a lot fancy going on here. We have a basic devise setup that then has a [https://github.com/applicake/doorkeeper](Doorkeeper)
