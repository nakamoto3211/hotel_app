HOTEL_NAMES = [
  "H.I.S.ホテルホールディングス",
  "伊東園ホテルズ",
  "大江戸温泉物語",
  "亀の井ホテル",
  "休暇村グループ",
  "ＪＲ西日本ホテルズ",
  "ジュラクチェーン",
  "東急ステイ",
  "東横イン",
  "ニューオータニホテルズ",
  "阪急阪神第一ホテルグループ",
  "ホテルニューガイア",
  "都ホテルズ & リゾーツ",
  "湯快リゾート",
  "リッチモンドホテルズ",
  "ルートインホテルズ",
  "リブマックスホテルズ",
  "ヒルトングループ",
  "プリンスホテル",
  "センチュリオンホテル",
]

ROOM_PRICES = [
  7500,
  9000,
  12000,
  16000,
  18000,
  22000,
  25000,
  28000,
  30000,
  40000,
]

ROOM_ADDRESSES = [
  "東京都渋谷区",
  "東京都新宿区",
  "東京都八王子市",
  "大阪府大阪市",
  "大阪市東大阪市",
  "京都府京都市",
  "北海道札幌市",
  "京都府宇治市",
  "大阪府大阪市東住吉区",
  "東京都東村山市",
  "京都府舞鶴市"
]

ROOM_INTRODUSCTIONS = [
  "フロント・ロビー・売店・レストラン等、各施設を備えており、ファミリーでのご利用におすすめのお部屋です。ごゆっくりおくつろぎくださいませ。",
  "添い寝用のお布団やおまる、ベビーチェア、お子様ハンガー、コンセントキャップ、離乳食などを備えた赤ちゃん専用ルームです。ご家族でごゆっくりお過ごしください。",
  "シンプルなお部屋に、実用的な設備を備えて心地よく安らげるご宿泊をご提供します。全プランに無料の朝ごはん（パンとコーヒー）が付いてたいへんお得です。お泊りの際にはぜひ焼きたてパンをご賞味ください。",
  "お部屋ごとに温度設定可能なエアコンなど、実用的な設備を備えて心地よくやすらげるご宿泊を提供します。ビジネス、観光の拠点として便利にご活用ください。",
  "VOD（ビデオ・オン・デマンド）1日見放題プランです。最新のVODで、洋画・邦画・アニメなどの多彩なコンテンツをお楽しみいただけます。お好きな映画・ドラマでくつろぎのひとときをお過ごしください。"
]

user = User.create!(
  name: "ポテパン",
  email: "murakami@potepan.jp",
  password: "test1234",
  password_confirmation: "test1234"
)

50.times do
  room = Room.new(
    user: user,
    name: HOTEL_NAMES.sample,
    content: ROOM_INTRODUSCTIONS.sample,
    address: ROOM_ADDRESSES.sample,
    price: ROOM_PRICES.sample
  )

  room.save!(validate: false)
end