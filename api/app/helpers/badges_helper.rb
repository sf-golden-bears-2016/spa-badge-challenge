module BadgesHelper
  def badge_params
    params.require(:badge).permit(:user_id, :content)
  end
end
