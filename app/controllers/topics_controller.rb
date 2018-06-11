class TopicsController < ApplicationController
  def index
    @topics = Topic.all # modelsフォルダ内のTopicクラス 親クラスのApplicationRecordの関数?
    @newTopic =Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @newpost = Post.new(:topic_id => params[:id]) # newpostに記事idを渡す
    @posts = Post.where(topic_id: params[:id])
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to topics_index_path
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_index_path
  end
end
