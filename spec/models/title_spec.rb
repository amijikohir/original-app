require 'rails_helper'

RSpec.describe Title, type: :model do
  before do
    @title = FactoryBot.build(:title)
  end

  describe 'タイトル投稿' do
    context 'タイトルが投稿できる場合' do
      it 'contentとamountが存在していれば保存できる' do
        expect(@title).to be_valid
      end
      it 'memoが空でも保存できる' do
        @title.memo = ''
        expect(@title).to be_valid
      end
    end

    context 'タイトルが投稿できない場合' do
      it 'contentとamountが空では保存できない' do
        @title.content = ''
        @title.amount = ''
        @title.valid?
        expect(@title.errors.full_messages).to include("Content can't be blank")
      end
      it 'roomが紐付いていないと保存できない' do
        @title.room = nil
        @title.valid?
        expect(@title.errors.full_messages).to include('Room must exist')
      end
      it 'userが紐付いていないと保存できない' do
        @title.user = nil
        @title.valid?
        expect(@title.errors.full_messages).to include('User must exist')
      end
    end
  end
end
