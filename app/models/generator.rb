class Generator < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  GREEN = ["か", "さ", "た", "ま", "な", "は", "ら", "カ", "サ", "タ", "マ", "ナ", "ハ", "ラ"]
  RED = ["え", "け", "せ", "て", "ね", "め", "へ", "れ", "エ", "ケ", "セ", "テ", "ネ", "メ", "ヘ", "レ"]
  PINK = ["い", "き", "し", "ち", "み", "に", "ひ", "り", "イ", "キ", "シ", "チ", "ミ", "ニ", "ヒ", "リ"]
  BLUE = ["お", "こ", "そ", "と", "の", "も", "ほ", "ろ", "オ", "コ", "ソ", "ト", "ノ", "モ", "ホ", "ロ"]
  PURPLE = ["う", "く", "す", "つ", "ぬ", "む", "ふ", "る", "ウ", "ク", "ス", "ツ", "ヌ", "ム", "フ", "ル"]
end
