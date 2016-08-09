module BadgesHelper
  def badge_params
    params.require(:badge).permit(:name)
  end
end
