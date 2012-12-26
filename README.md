builder-coffee
=====================

`CoffeeScript` plugin for [builder.js].

This plugin simply compiles `coffee` files into `js`.

To comply with [component.js spec], all of the `coffee` should be compiled down to `js` for broader use :)

[builder.js]: https://github.com/component/builder.js
[component.js spec]: https://github.com/component/component/wiki/Spec


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

### Usage

```javascript

var coffeeHook = require( 'builder-coffee' ),
    Builder    = require( 'component-builder' );

var builder = new Builder( 'test/fixtures/coffee-hook' );

builder.addLookup( 'test/fixtures' );
builder.use( coffeeHook );

builder.build( function( err, res ){
    
    if ( err ) { return done( err ); }

    var js  = res.require + res.js + 'require("coffee-hook")',
        ret = vm.runInNewContext( js );

    ret( 3, 3 ).should.equal( 90 );
    done();


} );
```


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
