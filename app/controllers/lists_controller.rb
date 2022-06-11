class ListsController < ApplicationController
  def new
    @list=List.new
  end
  # 投稿を保存するためのcreatアクションの作成
  def creat
    # フォームに記述された文字やデータを受け取る（データを受け取り新規登録するためのインスタンス作成）
    list=List.new(list_params)
    # データをDBに保存するためのsaveメソッド実行
    list.save
    # トップ画面へリダイレクト
    redirect_to'/top'
  end

  def index
    @lists=List.all
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
