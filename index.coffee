fs           = require( 'fs' )
path         = require( 'path' )
CoffeeScript = require( 'coffee-script' )

module.exports = ( builder )->

  builder.hook 'before scripts', ( pkg )->

    coffee = pkg.conf.coffee

    return  unless coffee

    coffee.forEach ( option )->

      srcPath  = pkg.path( option.src )
      destPath = pkg.path( option.dest )
      
      unless fs.existsSync( destPath )
        
        dirname = path.dirname( destPath )
        fs.mkdirSync( dirname )  unless fs.existsSync( dirname )

      str      = fs.readFileSync( srcPath, 'utf8' )
      compiled = CoffeeScript.compile( str, bare: yes )
      
      fs.writeFileSync( destPath, compiled, 'utf-8' )
