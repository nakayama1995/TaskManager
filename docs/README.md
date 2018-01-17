テーブル名：tasks
カラム一覧
name:string
detail:text
tag:stringgit
priority:integer
status:string only(未着手、着手、完了)
deadline:datetime
user_id: foreign_key(table:users, colum:id)

テーブル名:users
カラム一覧
id:CHAR
pass:CHAR
