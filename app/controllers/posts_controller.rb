class PostsController < ApplicationController
  def index # indexアクションを定義
    # @post = Post.find(1)  #1番目のレコードを@postに代入
    @posts = Post.all  #全てのレコードを@postsに代入
  end

  def new #新規投稿ページで入力フォームを表示のみのため
    #処理の記述、データの表示不要
  end

  def create
    Post.create(content: params[:content])
    #.createは,.newと.saveの両方を兼ね備えている。
    #Post.new(content: params[:content])とした場合
    #Post.saveが必要
  end


end
