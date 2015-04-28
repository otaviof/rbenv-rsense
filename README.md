`rbenv-rsense`: rbenv Plugin for RSense
=======================================

A rbenv plugin to help on [RSense](http://cx4a.org/software/rsense/) configuration, making sure you have RSENSE_HOME installed and available and also `~/.rsense` configuration file generated within "rehash" hook.

## Requirements

RSense installed. Some suggestions, via Homebrew:

```
$ brew install rsense
```

Or via `gem`:

```
$ gem install rsense
```

And then, make sure you export `RSENSE_HOME` pointing to their installation directory, for example:

```
$ echo $RSENSE_HOME
/usr/local/Cellar/rsense/0.3
```

## Installation

Just clone this repo on rbenv plugin directory, which will by default be at:

```
$ cd ~/.rbenv/plugins
$ git clone https://github.com/otaviof/rbenv-rsense.git
```

## Usage

For now the only available sub-command is "config":

```
$ rbenv rsense
Available rsense commands:
    * config
```

Calling it, or just using default rbenv completion:

```    
$ rbenv rsense config
RSENSE_HOME is set to '/usr/local/Cellar/rsense/0.3'
```

Within `rehash` hook we will provide a `~/.rsense` configuration file:

```
$ rbenv rehash
```

Registered hook:

```
$ rbenv hooks rehash
/Users/otaviof/.rbenv/plugins/rbenv-rsense/etc/rbenv.d/rehash/rsense-config.bash
```