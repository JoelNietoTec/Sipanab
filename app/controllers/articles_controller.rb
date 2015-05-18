class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_login, except: [:index, :show]

  # GET /articles
  # GET /articles.json
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]).order(created_at: :desc)
      @title = 'Artículos etiquetados en ' + params[:tag]
    else
      @articles = Article.order(created_at: :desc)
      @title = 'Artículos'
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @title = @article.title.titleize
  end

  # GET /articles/new
  def new
    @article = Article.new
    @title = 'Nuevo Artículo'
  end

  # GET /articles/1/edit
  def edit
    @title = 'Editando ' + @article.title.titleize
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Artículo creado' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Artículo editado' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Artículo eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :content, :slug, :tag_list, :user_id, :important, :bootsy_image_gallery_id)
    end
end
