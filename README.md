# Try::Ruby::Parallel

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library
into a gem. Put your Ruby code in the file `lib/try/ruby/parallel`. To experiment with that code, run `bin/console` for
an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add try-ruby-parallel

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install try-ruby-parallel

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can
also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the
version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/try-ruby-parallel. This project is
intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct](https://github.com/[USERNAME]/try-ruby-parallel/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Try::Ruby::Parallel project's codebases, issue trackers, chat rooms and mailing lists is
expected to follow the [code of conduct](https://github.com/[USERNAME]/try-ruby-parallel/blob/main/CODE_OF_CONDUCT.md).

# メモ

## GitHub Actions までセットアップしてくれるの非常にいい。

## GitHub Actions の `ruby/setup-ruby@v1` が失敗した。

mac でプロジェクト作ると、Gemfile.lock の `PLATFORMS` が `arm64-darwin-21` になる。
このままだと GitHub Actions がプラットフォーム非対応で失敗する。
したがって以下のコマンドでプラットフォームに Linux を追記して Ubuntu 上で Rake を動かせるようにする。

```shell
bundle lock --add-platform x86_64-linux
```

## プロジェクト作成当初は Gemfile に一部の依存関係が書かれていたが、気持ち悪いので全部 gemspec に移動した。
