require 'rails_helper'

RSpec.describe Information, type: :model do
  describe '釣果情報投稿機能' do
    before do
      user = FactoryBot.create(:user)
      @information = FactoryBot.build(:information, user_id: user.id)
    end

    context '登録ができる時' do
      it '必要な情報を入力すれば登録できる' do
        expect(@information).to be_valid
      end

      it 'テキストが空でも登録できる' do
        @information.text = ''
        expect(@information).to be_valid
      end

      it 'サイズが空でも登録できる' do
        @information.size = ''
        expect(@information).to be_valid
      end

      it '重さが空でも登録できる' do
        @information.weight = ''
        expect(@information).to be_valid
      end

      it '匹数が空でも登録できる' do
        @information.number = ''
        expect(@information).to be_valid
      end

      it 'エリアが空でも登録できる' do
        @information.area = ''
        expect(@information).to be_valid
      end
    end

    context '登録ができない時' do
      it '釣果画像を1枚つけることが必須であること' do
        @information.image = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("Image can't be blank")
      end

      it '釣果情報が必須であること' do
        @information.title = ''
        @information.valid?
        expect(@information.errors.full_messages).to include("Title can't be blank")
      end

      it '釣れた日が必須であること' do
        @information.date_id = ''
        @information.valid?
        expect(@information.errors.full_messages).to include("Date can't be blank")
      end

      it '魚種が必須であること' do
        @information.fish = ''
        @information.valid?
        expect(@information.errors.full_messages).to include("Fish can't be blank")
      end

      it '都道府県が必須であること' do
        @information.prefecture_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("Prefecture must be other than 1")
      end

      it 'サイズがマイナス数値ではないこと' do
        @information.size = -1
        @information.valid?
        expect(@information.errors.full_messages).to include("Size is invalid")
      end

      it '重さがマイナス数値ではないこと' do
        @information.weight = -1
        @information.valid?
        expect(@information.errors.full_messages).to include("Weight is invalid")
      end

      it '引数がマイナス数値ではないこと' do
        @information.number = -1
        @information.valid?
        expect(@information.errors.full_messages).to include("Number is invalid")
      end
    end
  end
end
