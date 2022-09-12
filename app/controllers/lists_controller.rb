class ListsController < ApplicationController
  def new
     # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index   #indexアクションは一覧画面ようのアクションとして定義.
    @lists = List.all
    # @Listはインスタンス変数
    # allはメソッドの一種で、
    #そのモデルがやりとりしているデータベースのテーブルに保存されている、
    #全てのレコードをまとめて取得する。
# 今回の場合はListからallメソッドを呼び出しているので、
#listsテーブルに保存されている全てのデータを取得することができる。
  end

  def show
  end

  def edit
  end



#他のアクション（index,show,createなど）を巻き込まないよう、
#privateは一番下。
#privateより後に定義されたメソッドは、
#アクションとして認識されなくなり、URLと対応できなくなる。
private
# ストロングパラメータ
  def list_params   #「モデル名_params」
    params.require(:list).permit(:title, :body)
#params...formから送られてくるデータはparamsの中に入っています。
#require...送られてきたデータの中からモデル名(ここでは:list)を指定し、データを絞り込みます。
#permit...requireで絞り込んだデータの中から、保存を許可するカラムを指定します。
  end
end
