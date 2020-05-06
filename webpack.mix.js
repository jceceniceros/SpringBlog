const mix = require('laravel-mix');
require('laravel-mix-alias');

mix.setPublicPath('src/main/resources/static');
mix.setResourceRoot('../../../../');

if (mix.inProduction()) {
    mix.version();
    mix.options({
        terser: {
            extractComments: false,
        }
    });
} else {
    mix.webpackConfig({ devtool: 'inline-source-map' });
}

mix.alias({
    '@': '/resources/js',
    '~': '/resources/sass'
});

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

// ----------

mix.js('resources/js/app.js', 'src/main/resources/static/scripts')
    .extract([
        'lodash',
        'popper.js',
        'bootstrap',
        'jquery'
    ]);

// ----------

mix.sass('resources/sass/app.scss', 'src/main/resources/static/styles');

// ----------

mix.copyDirectory(
    'resources/images',
    'src/main/resources/static/images'
);
