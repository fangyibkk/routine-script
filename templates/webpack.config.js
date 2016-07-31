var path = require('path');

module.exports = {
  entry: path.resolve( __dirname, 'main.jsx'),
  output: {
    filename: 'bundle.js'
  },
  exclude: [ path.resolve(__dirname, 'node_modules') ],
  resolve: {
    extensions: ['', '.js', '.jsx']
  },
  module: {
    loaders: [
      { test: /\.jsx$/, exclude: /node_modules/, loader: "babel-loader" }
    ]
  }
}
