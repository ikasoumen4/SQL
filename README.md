# データベースについて

# スケールアウトの方法

テーブルＡとテーブルＢを別サーバーにおく

# MYSQL Clusterとは
- MYSQLのストレージエンジン
　トランザクショ対応
- 並列分散型のデータベース
  複数のノードで分散処理が可能（スケールアウト）
　シェアードナッシング
　High Availability
- 元々はインメモリデータベース
　後からディスクテーブルが追加
　ハイパフォーマンス
- デュアルライセンス
- データは水平パーティ初認具され　行ごとにノードグループに振り分けられる（レプリケーション対応）

DDL,DMLなど主なＳＱＬ文 DCL??
http://www.bnote.net/mysql/appendix_sql.shtml

Data Define Language
Data Manipulation Language (Manipulation 取り扱い)
Data Control Language
→ GRANT　（権限の付加）
→ REVOKE　（権限の剥奪）
→ COMMIT　（変更の確定）
→ ROLLBACK　（変更の取り消し）
→ SAVEPOINT　（トランザクション中のポインタ）　など
