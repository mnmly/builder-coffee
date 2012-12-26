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
