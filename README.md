# RailsModularAdmin
This plugin is designed to quickly generate views for Rails applications in need of dashboard functionality. This includes admin panels and SaaS applications. I found that over the course of my projects, I needed Dashboard pages very often, so by creating this gem, I'm at least saving my self a bunch of time.

## Usage
Easiest way is to run the install task:
```bash
$ rails g rails_modular_admin:install
```


## Installation
Add this line to your application's Gemfile:
```ruby
gem 'rails_modular_admin'
```

And then execute:
```bash
$ bundle
```

Now install through the included generator:
```bash
rails g rails_modular_admin:install
```

The install generator copies over the custom theme.scss file, which you can use to include your own color scheme. Now, add the following lines to your application.scss:
```scss
@import "custom-theme";
@import "rails_modular_admin";
```
Add bootstrap, popper, and jquery to application.js and import bootstrap
Change the variables in custom-theme.scss to change the colors in your application. Finally, add this line to your application.html.erb at the bottom (after the </body> tag and before the </html> tag). Do not add the rails_modular_admin javascripts to your application.js, because it needs to be loaded after the rest of the page for the reference block.
```ruby
<%= javascript_include_tag 'rails_modular_admin' %>
```

## Installing the Views
Rails Modular Admin includes a generator to install the commonly needed views for an administration application. To copy over the templates, run:
```bash
rails g rails_modular_admin:<user_model>:views
```
where <user_model> is the name of the model for which you want to install the authentication views, which is typicall just User.

## Development Environment
1. Prior to packaging as a gem, make sure that yarn install has been run and that it is bundled with the gem. Otherwise, there wil be file not found errors.

## Contributing
Write a pull request and I'll get to it as soon as I can.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## TODO

[*] Update install task to automatically adjust package.json and run yarn install. -> Ended up being able to do this by just bundling node_modules with the gem.
[] Theme choices.
[] Generators to install common views, namely the dashboard and login pages (devise).
[] Helper methods for commonly used assets or features.
[] Test suite because it's currently non-existent.
[] Tests for each JavaScript dependency presence.
[] Fix implementation when user has custom javascripts that depend on Bootstrap, thus loading it twice.