class Post < ApplicationRecord
  has_one :spot

  enum fishing_spot_id: {
    海: 0,
    湖: 1,
    川: 2,
    その他: 3,
  }

  enum spot_type: {
    河川: 0,
    湖: 1,
    池: 2,
    港: 3,
    堤防: 4,
    海岸: 5,
    磯: 6,
    沖: 7,
    海上釣り掘: 8,
    管理釣り場: 9,
    カセ: 10,
    イカダ: 11,
    その他: 12,
  }

end
