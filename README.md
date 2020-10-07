<h1> Post_it </h1>

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0425e186-0e35-4c9d-9365-226c665c8ee8/post_it_demo_long.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0425e186-0e35-4c9d-9365-226c665c8ee8/post_it_demo_long.gif)

**Post-it** is a toy Reddit application. It allows users to submit posts in different categories and interact with other users using comments and voting features. It was built using Rails 6 and Bootstrap 3.

## Setup

1. Make sure you have Rails 6.

```bash
$ rails -v
Rails 6.0.x.x
```

2. Clone this repository

```bash
$ git clone https://github.com/asungur/post_it
$ cd post_it
```

3. Install dependencies with bundle install

```bash
$ bundle install 
```

3. Make sure you have the database set

```bash
$ rails db:create db:migrate
```

4. Create seed data for testing the app:

```bash
$ rails db:seed
```

5. Start the rails server:

```bash
$ rails server
```

6. Navigate to `[localhost:3000](http://localhost:3000)` at your browser to load the app.

You can register your own user or use one of the example users defined in `db/seeds.rb` .

## Further development

I've built this app to solidify the concepts of Rails following [Michael Hartl's Rails-Tutorial](https://www.railstutorial.org/) and [Launch School's Demystifying Rails book](https://launchschool.com/books/demystifying_rails). Don't skip these if you are new to Rails.

For a more comprehensive app that showcases other Rails features, check out this [micro-blogging app that I've built](https://github.com/asungur/micro-twitter-rails).

## Contact

Always open to a conversation. DM me on [Twitter](https://twitter.com/asungur_) or [write me an e-mail](mailto:sunguralican@gmail.com)
