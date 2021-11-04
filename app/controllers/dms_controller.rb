class DmsController < ApplicationController
  def show
    @dm = Dm.find(params[:id])
  end

  def create
    DmMember.where(user_id: params[:user1]).each  do |a|
      DmMember.where(user_id: params[:user2]).each do |b|
        if a.dm_id == b.dm_id
          @table = true
          @table_id = a.dm_id
        end
      end
    end

    if @table
    redirect_to dm_path(@table_id)
    else
    @dm = Dm.create
    @user1 = DmMember.create(dm_id: @dm.id, user_id: params[:user1])
    @user2 = DmMember.create(dm_id: @dm.id, user_id: params[:user2])
    redirect_to dm_path(@dm.id)
    end

  end

 private

  def dm_params
    params.require(:dm).permit(:room_id)
  end

end
