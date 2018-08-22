class TwetsController < ApplicationController
  before_action :set_twet, only: [:edit, :update,:destroy]
  before_action :login_confirm, only: [:new, :edit, :show,:destroy]

  def index
    @twets = Twet.all
  end

  def new
   @twet =  Twet.new
  end

  def create
    @twet = Twet.create(twet_params)
    if @twet.save
        redirect_to twets_path, notice: "ブログを作成しました！"
    else
        render 'new'
    end
  end

  def edit
  end

  def update
    if @twet.update(twet_params)
      redirect_to twets_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
      @twet.destroy
      redirect_to twets_path, notice:"ブログを削除しました！"
  end

   private
   def twet_params
      params.require(:twet).permit(:content)
   end

   def set_twet
      @twet = Twet.find(params[:id])
   end

   def login_confirm
      if current_user.nil?
        redirect_to "/sessions/new"
      end
   end
end
