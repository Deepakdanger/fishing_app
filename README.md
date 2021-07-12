# Fi-Shop
A Websites to see a different kind of fishing equipment used in different types of places like River, pond, Sea, etc. Here Article can be created. You can vote for any article of your choice and it is displayed on the home page if it has a maximum vote. The article is also divided into categories. Thanks.

## Deployment
- Heroku Link: [Click here](https://limitless-sea-70591.herokuapp.com/)
- Loom Video Link: [Click here](https://www.loom.com/share/d1b4ab43812545f49da59c2bd38b162b)
- (n+1 querry Video link): [Click here](https://www.loom.com/share/e981010084de4936a94e3c8913d70add)

![Screenshot of the app](./pic2.PNG)
![Screenshot of the app](./pic1.PNG)
![Screenshot of the app](./pic3.PNG)
![Screenshot of the app](./pic4.PNG)
![Screenshot of the app](./pic5.PNG)
![Screenshot of the app](./pic6.PNG)
![Screenshot of the app](./pic7.PNG)
## Getting started

To get started with the website, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/Deepakdanger/fishing_app.git
$ cd fishing_app
```
on:
  # Triggers the workflow on push or pull request events but only for the development branch
  push:
    branches: [ development ]
  pull_request:
    branches: [ development ]

Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ bundle install
```

Next, setup webpacker configuration

```
$ rails webpacker:install
```

After that, create and migrate the database:

```
$ rails db:create
$ rails db:migrate
```

To run the project on rails local server:

```
$ rails server
```
## Deploying

you’ll need a Heroku account

To deploy this, you’ll need to create a new Heroku application, switch to the right branch, push up the source, run the migrations, and seed the database with sample users:

```
$ heroku create
$ git checkout feature
$ git push heroku feature:master
$ heroku run rails db:migrate
$ heroku run rails db:seed
```

Visiting the URL returned by the original `heroku create` should now show you the sample website running in production. 

## Branches

Simply check out the corresponding branch using `git checkout`:

```
$ git checkout <branch name>
```
## Testing

For test, In Gemfile include:

```
group :development, :test do
  gem "database_cleaner"
  gem "rspec-rails"
end
```
Then, run `bundle install` and run
```
$ run rails generate rspec:install
```

## Authors

👤 **Deepak Kumar**
- GitHub: [@githubhandle](https://github.com/Deepakdanger)


## Contributions
Design from [Gregoire Vella](https://www.behance.net/sakwadesignstudio)