# Sinatra Examples

There are two sample sinatra apps inside this repo. One is `basic` with simple get actions and the other is called `crud`.

## CRUD app

It's just a simple CRUD app. Uses `activerecord` with sqlite3.

## Why

The project was started during a introduction to web development with ruby course at FATEC Sorocaba on winter break (july/2015).

## Running

### Ruby

You can install ruby via [RVM](https://rvm.io/rvm/install)

### Sinatra

```bash
  gem install sinatra
```

### Dependencies for crud app

```bash
  gem install sinatra-contrib
  gem install sqlite3
  gem install activerecord
```

## Contributing

Bug reports and pull requests are welcome.

### Submitting a Pull Request

1. Fork it.
2. Create a branch (`git checkout -b my-branch`)
3. Commit your changes (`git commit -am "Adds my changes"`)
4. Push to the branch (`git push origin my-branch`)
5. Open a [Pull Request](https://github.com/lucasrenan/fatec-sinatra-07-2015/pulls)
