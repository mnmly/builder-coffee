builder-coffee-plugin
=====================

`CoffeeScript` plugin for [builder.js].

This plugin simply compiles `coffee` files into `js`.

To comply with [component.js spec], all of the `coffee` should be compiled down to `js` for broader use :)


### Sample `component.json`

```json
{
    "name": "coffee-hook",
    "version": "0.0.1",
    "scripts": [ "index.js", "lib/multiply.js" ],
    "coffee": [
        { "src": "index.coffee",        "dest": "index.js" },
        { "src": "src/multiply.coffee", "dest": "lib/multiply.js" }
    ]
}
```


[builder.js]: https://github.com/component/builder.js
[component.js spec]: https://github.com/component/component/wiki/Spec


## License

(The MIT License)

Copyright (c) 2012 Hiroaki Yamane &lt;i.am@mnmly.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
