# Radiation-hardened Quine

This is a *robust* self-printing program written in Ruby.
It works even if you delete one character *anywhere* from the code.

## How to play

### Normal usage

Just run `rquine.rb` and check if the output is equal to the original code:

    $ ruby rquine.rb > rquine2.rb
    $ diff rquine.rb rquine2.rb

### Abnormal usage

Prepare a script that deletes one character randomly:

    $ cat mutate.rb
    src = ARGF.read
    src[rand(src.size), 1] = ""
    print src

Generate a broken program by deleting one character from `rquine.rb`:

    $ ruby mutate.rb rquine.rb > broken.rb

Run the broken program:

    $ ruby broken.rb > rquine2.rb

You will see the output exactly equal to the original code:

    $ diff rquine.rb rquine2.rb

## See also

  - [Perl version][1] (attributed to Shinichiro Hamaji)

[1]: http://d.hatena.ne.jp/shinichiro_h/20140220#1392834649

## License

Copyright (c) 2014 Yusuke Endoh (@mametter), @hirekoke

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
