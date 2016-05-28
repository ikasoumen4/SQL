
-- HieidiSQLで実行すると10selectしかデフォルトで表示されないのでオプションを変更すること。

-- where に結合条件を書くのは意味的に気持ち悪い
-- whereでも結合できるがon もしくは using で結合しよう。

-- on 句
-- on users.id = companies.id のように結合する
-- using 句
-- 結合する２つのテーブルが「同名のカラム」で紐づいている場合、on の条件を以下のように省略することができる
-- using(id)

-- right join is same right outer join
-- select all right
select * from users right join companies on users.company_id = companies.id;
select * from users right outer join companies on users.company_id = companies.id;

-- left join is same left outer join
-- 右のテーブルにあって左のテーブルにない場合結果に含まない
-- 左のテーブルは全て表示する
select * from users left join companies on users.company_id = companies.id;
select * from users left outer join companies on users.company_id = companies.id;

-- join is same ...
-- 両方含まれる結果しか表示しない
select * from users join companies on users.company_id  = companies.id;
select * from users inner join companies on users.company_id = companies.id;
select * from users, companies where users.company_id = companies.id;

-- cross join is same ...
-- 直積集合（デカルト積）になる
-- https://ja.wikipedia.org/wiki/%E7%9B%B4%E7%A9%8D%E9%9B%86%E5%90%88
select * from users cross join companies;
select * from users, companies;

-- using句 互いの同名のカラムを連結する。
-- 同名カラムで設計した場合のみ利用可能。
-- このテストデータはusers.id = companies.id として紐づいているので正しくない
select * from users cross join companies using(id);
select * from users inner join companies using(id);
select * from users cross join companies where users.id = companies.id;

-- union
-- 複数のテーブルを結果にまとめる
-- カラムの位置を合わさなければいけない
-- distinctはデフォルトの動作
-- 重複を取得したい場合はallを指定します。
select users.name,users.address from users union select companies.name, companies.address from companies;
select users.name,users.address from users union distinct select companies.name, companies.address from companies;
select users.name,users.address from users union all select companies.name, companies.address from companies;


-- 間違いケース
-- 会社情報を結合して、TOKYOのみを抽出したい
-- １番目はouter join なので 結合に失敗したレコードは省かれず、NULLで返ってきている
select * from users left join companies on users.company_id = companies.id and companies.address = 'TOKYO';
select * from users left join companies on users.company_id = companies.id where companies.address = 'TOKYO';

-- 固定値
-- 列名を指定すれば１回のselectで大丈夫だが、*に追加するスマートな方法はないか？
select * from users join (select users.id, 'test' as a from users) as tmp USING(id)
