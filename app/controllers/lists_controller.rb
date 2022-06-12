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
    redirect_to list_path(list.id)
  end

  def index
    @lists=List.all
  end

  def show
    @list=List.find(params[:id])
    List.find(1)
    List.find(2)
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
