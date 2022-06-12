const path              = require('path');
const webpack           = require('webpack');
const htmlPlugin        = require('html-webpack-plugin');

const PATHS = {
    app: path.join(__dirname, 'src'),
    build: path.join(__dirname, 'build')
};

const options = {
    host:'localhost',
    port:'1234'
};

module.exports = {
    resolve: {
	fallback: {
	    fs: false
	}
    },
    
    performance: {
	maxEntrypointSize: 5120000,
	maxAssetSize: 5120000
    },

    entry: {
        path: PATHS.app
    },
    
    mode: 'development',

    output: {
        path: PATHS.build,
        filename: 'wc.bundle.js'
    },

    module: {
        rules: [
	    {
		test: /\.m?js$/,
		exclude: /(node_modules|bower_components)/,
		use: {
		    loader: 'babel-loader',
		    options: {
			presets: ['@babel/preset-env']
		    }
		}
	    },
	    {
		test: require.resolve('jquery'),
		use: [
		    {
			loader: "expose-loader",
			options: {
			    exposes: ["$", "jQuery"]
			}
		    }
		]
	    },
	    {
		test: /\.(scss|css)$/,
		use: ['style-loader', 'css-loader', 'sass-loader'],
	    },
	    {
		test: /\.(png|jpe?g|gif)$/i,
		loader: 'file-loader',
		options: {
		    name: '[path][name].[ext]',
		}
	    }
	]
    },

    plugins: [
        new htmlPlugin({
            template:path.join(PATHS.app,'index.html'),
            inject:'body'
        }),

	// Provides jQuery for other JS bundled with Webpack
	new webpack.ProvidePlugin({
	    $: 'jquery',
	    jQuery: 'jquery'
	})
    ]
}