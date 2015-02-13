Demo: Rails::API Authentication
===============================

Demonstrate the [Simple Token Authentication][sta] usage in a Rails::API app.

  [sta]: https://github.com/gonzalo-bulnes/simple_token_authentication

Usage
-----

### Local

```bash
rackup -p 3000 # see http://localhost:3000
```

### Heroku

Click the button below to automatically set up the demo in an app running on your Heroku account. (Do not forget to seed the database `heroku run rake db:migrate db:seed` once the app has been deployed!)

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Alternatively, you can manually create a Heroku app and use Git to push and deploy.
