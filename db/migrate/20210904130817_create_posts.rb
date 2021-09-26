#データベースにテーブルを生成する重要な役割
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content # t.カラムの型 :カラム名
      t.timestamps #←Rails独自の特別仕様
      #integer・数値"金額、回数等".string・文字(短文)"ユーザー名、アドレス等"
      #text・文字(長文)"投稿文、説明文等".boolean・真か偽か"Yes or No等の選択肢、フラグ等"
      #datetime・日付と時刻"制作日時、更新日時等"
    end
  end
end
#アイウエオ