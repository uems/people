people
======

UEMS internal service for people data

installing
----------

Install RVM if you do not have it in 2013.

```bash
$ curl -L https://get.rvm.io | bash
```

Clone this repo and enter into it

```bash
$ git clone git@github.com:uems/people.git
$ cd people
```

If RVM is working correctly, it should install and enable a 
uby 1.9.3 for you right after you enter the directory.

```bash
people$ rvm current
ruby-1.9.3-p286@uems
```

Now that you have the right version of ruby in use, let bundle do its
magic and install all the dependencies (this might take a while the
first time around).

```bash
people$ bundle install
  Fetching gem metadata from https://rubygems.org/...........
  Fetching gem metadata from https://rubygems.org/..
    Installing rack (1.5.2)
    Installing rack-protection (1.5.0)
    Installing tilt (1.4.1)
    Installing sinatra (1.4.3)
  Using bundler (1.2.1)
    [...]
```

To add a new dependency, simply add it to the Gemfile and run a bundle
install again. This will in turn generate a Gemfile.lock file, which has
all the versions of gems locked up, giving you a clean and predictable
gemset to work with.

developing
----------


