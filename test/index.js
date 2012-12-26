var coffeeHook = require( '../.' ),
    Builder    = require( 'component-builder' ),
    vm         = require( 'vm' );

describe( 'Builder.js: CoffeeScript hook', function(){
  
    it ( 'should compile coffee', function( done ){

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
    } );
});
