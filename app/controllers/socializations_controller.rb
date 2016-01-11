class SocializationsController < ApplicationController

  before_filter :load_socializable

  def follow
    current_user.follow!(@socializable)
    redirect_to :back
  end

  def unfollow
    current_user.unfollow!(@socializable)
    render json: { follow: false }
  end

  def like
  	current_user.like!(@socializable)
  	redirect_to :back
  end

  def unlike
  	current_user.unlike!(@socializable)
  end

private
  def load_socializable
    @socializable =
      case
      when id = params[:user_id]
        User.find(id)
      when id = params[:photo_id]
        Photo.find(id)
      else
        raise ArgumentError, "Unsupported socializable model, params: " +
                             params.keys.inspect
      end
    raise ActiveRecord::RecordNotFound unless @socializable
  end  
end
