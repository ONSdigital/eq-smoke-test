Smoke test for eQ project

NOTE:
By default, my OSX install provides Ruby 2.0.0p645, and bundle 1.5.3, gem 2.0.14 out of the box.
We will use `rbenv` to manage the ruby environment and install the necessary versions of tools.


1) Install `rbenv`

```
brew update
brew install rbenv
```

2) Update your environment

If using bash as your shell, execute:

```
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
```

if using zsh as your shell, execute:

```
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
```

2) Install ruby 2.2.3

```
rbenv install 2.2.3
```

3) Set your ruby version

You can either set your ruby version globally or local to your shell.  To set the global version:

```
rbenv global 2.2.3
```

To set the version for your current shell only:

```
rbenv shell 2.2.3
```

4) Update bundler

```
gem install bundler -v 1.10.6
```

5) Update gem

```
gem update --system '2.5.2'
```

1) Download all the appropriate dependencies by using

```
bundle install
```
2) Set environment variables for Survey URL

```
export EQ_SURVEYRUNNER='preprod-surveys.eq.ons.digital'

3) Run the smoke test

```
bundle exec rspec
```
