Bundler
Gemfileに記載されたパッケージの種類・バージョンのものをインストールするための仕組み。

Gemパッケージ
Rubyで使うライブラリやアプリケーションを、RubyGemというツールでインストールできるようにしたもの。
Gemfileに必要なGemとバージョンを記載しておく。npmとかBowerみたいなやつ。
ruby 2.x.x以上でデフォルトでgemコマンドが使えます。

database.yml
Railsのアプリケーションを作成すると自動的に「database.yml」ファイルが作成されデフォルトの設定が記述されます。特に指定しない場合はSQLiteを使う前提で作成されるため、他のデータベースを使用する場合はRailsのアプリケーションを作成する時にオプションでデータベースを指定します。
  rails new アプリケーション名 -d データベース
指定可能なデータベースは「mysql / oracle / postgresql / sqlite3 / frontbase / ibm_db / sqlserver / jdbcmysql / jdbcsqlite3 / jdbcpostgresql / jdbc」です。

PaaS（Platform as a Service の略、パースまたはパーズ）とは、インターネットを利用したコンピュータの新しい利用形態の1つである。 PaaSでは、ソフトウェアを構築および稼動させるための土台となるプラットフォームを、インターネット経由のサービスとして提供する。

herokuを使えば、開発したWEBアプリケーションを面倒な手続きなく簡単に公開することができます。

https://git.heroku.com/peaceful-inlet-72767.git

Gemfileを変更したら $ bundle install で変更を反映する

Ruby on Rails で、日付・時刻のバリデーションをするなら ValidatesTimeliness という gem がおすすめです。
