require 'webrick'

options = {
  Port: 4000,
  DocumentRoot: './_site',
  DirectoryIndex: ['index.html'],
  FancyIndexing: false # ディレクトリリストを無効化
}

Rack::Handler::WEBrick.run Rack::Directory.new('.', options)
