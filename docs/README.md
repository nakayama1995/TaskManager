テーブル名：tasks
カラム一覧
name:string
detail:text
priority:integer
status:CHAR only(未着手、着手、完了)
deadline:TIMESTAMP
tag:CHAR
user_id:CHAR foreign_key(table:users, colum:id)

テーブル名:users
カラム一覧
id:CHAR
pass:CHAR
