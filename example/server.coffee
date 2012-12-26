fs         = require( 'fs' )
path       = require( 'path' )
express    = require( 'express' )
coffeeHook = require( '../.' )
app        = express()


Builder    = require( 'component-builder' )

build = ( req, res, next )->
  builder = new Builder( 'public/app' )
  builder.addLookup( 'public/app/components' )
  builder.use( coffeeHook )
  builder.build ( err, res )->
    fs.writeFileSync 'build/build.js', res.require + res.js, 'utf-8'
    next()

app.use express.static( path.join( __dirname, 'build' ) )

app.get '/', build, ( req, res )->
  res.sendfile 'index.html'


app.listen( 3000 )
