# humanize-number

[![Build Status](https://travis-ci.org/shime/humanize-number.svg?branch=master)](https://travis-ci.org/shime/humanize-number)

Humanizes numbers.

## Installation

    $ gem install humanize-number

## Usage

```ruby
require "humanize-number"

HumanizeNumber.humanize(-20)             # "-20"
HumanizeNumber.humanize(123)             # "123"
HumanizeNumber.humanize(1234)            # "1.23k"
HumanizeNumber.humanize(12345)           # "12.3k"
HumanizeNumber.humanize(123456)          # "123k"
HumanizeNumber.humanize(1234567)         # "1.23m"
HumanizeNumber.humanize(12345678)        # "12.3m"
HumanizeNumber.humanize(123456789)       # "123m"
HumanizeNumber.humanize(1234567890)      # "1.23b"
HumanizeNumber.humanize(12345678901)     # "12.3b"
HumanizeNumber.humanize(123456789012)    # "123b"
HumanizeNumber.humanize(1234567890123)   # "1235b"
HumanizeNumber.humanize(12345678901234)  # "12346b"
```

## License

[MIT](/license)
