class EmberController < ApplicationController
  before_filter :authenticate

  def index
    @current_user = UserSerializer.new(user).to_json(root: false)
  end

  private
  def user
    @user ||= current_user || OpenStruct.new(uid: 'abcdegh', provider: '1234235123')
  end
end
