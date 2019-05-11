# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#アレルギー成分
Allergen.create(id: 1, name: "卵"    )
Allergen.create(id: 2, name: "小麦"  )
Allergen.create(id: 3, name: "乳"    )
Allergen.create(id: 4, name: "蕎麦"  )
Allergen.create(id: 5, name: "落花生")
Allergen.create(id: 6, name: "カニ"  )
Allergen.create(id: 7, name: "エビ"  )
Allergen.create(id: 8, name: "牛肉"  )
Allergen.create(id: 9, name: "豚肉"  )
Allergen.create(id:10, name: "鶏肉"  )
Allergen.create(id:11, name: "バナナ")
Allergen.create(id:12, name: "リンゴ")

#ユーザ
User.create(id: 1,  email: "kanon537@ship.jxu.lg", first_name: "東", last_name: "花音", password: "PRD2,pvY", 
            image_path: File.open("#{Rails.root}/db/fixtures/user/shufu.png"), registration: true)
User.create(id: 2,  email: "oadachi@ltjfjhamim.xnp", first_name: "安達", last_name: "昌弘", password: "1E4WzALm", 
            image_path: File.open("#{Rails.root}/db/fixtures/user/man1.jpg"), registration: true)
User.create(id: 3,  email: "sample2@gmail.com", first_name: "sample", last_name: "two", password: "sample2", 
            image_path: File.open("#{Rails.root}/db/fixtures/user/man1.jpg"), registration: true)
            
#ユーザのアレルギー情報
AllergensUser.create(id: 1, allergen_id: 1,user_id: 1)
AllergensUser.create(id: 2, allergen_id: 2,user_id: 2)
AllergensUser.create(id: 3, allergen_id: 3,user_id: 3)
AllergensUser.create(id: 4, allergen_id: 7,user_id: 3)
AllergensUser.create(id: 5, allergen_id:12,user_id: 3)

#レシピカテゴリ
ReceipeCategory.create(id: 1, name: "麺類"        )
ReceipeCategory.create(id: 2, name: "魚料理"      )
ReceipeCategory.create(id: 3, name: "和食"        )
ReceipeCategory.create(id: 4, name: "揚げ物"      )
ReceipeCategory.create(id: 5, name: "粉モノ"      )
ReceipeCategory.create(id: 6, name: "中華"        )
ReceipeCategory.create(id: 7, name: "イタリアン"   )
ReceipeCategory.create(id: 8, name: "洋食"        )
ReceipeCategory.create(id: 9, name: "肉料理"      )
ReceipeCategory.create(id:10, name: "野菜料理"    )
ReceipeCategory.create(id:11, name: "鍋料理"      )
ReceipeCategory.create(id:12, name: "和菓子"      )
ReceipeCategory.create(id:13, name: "洋菓子"      )

#レシピ1
Receipe.create(id: 1, user_id: 1, receipe_category_id: 1, title: "かけうどん", introduction: "簡単なかけうどんの作り方をご紹介します。 1人前", 
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/udn.jpeg"))
               
CookingStep.create(id: 1, receipe_id: 1, number: 1, description: "水を沸騰させます"                                 , image_path: nil)
CookingStep.create(id: 2, receipe_id: 1, number: 2, description: "別のお鍋で出汁を沸騰させます"                      , image_path: nil)
CookingStep.create(id: 3, receipe_id: 1, number: 3, description: "熱湯にうどん玉を入れ、茹でます"                    , image_path: nil)
CookingStep.create(id: 4, receipe_id: 1, number: 4, description: "うどん玉を容器に移し、沸騰した出汁を上からかけて完成", image_path: nil)

Ingredient.create(id: 1, receipe_id: 1, name: "うどん", quantity: "1玉" )
Ingredient.create(id: 2, receipe_id: 1, name: "出汁",   quantity: "適量")

AllergensIngredient.create(id: 1, ingredient_id: 1, allergen_id: 2)

ReplacedIngredient.create(id: 1, ingredient_id: 1, name: "米粉麺", quantity: "1束")

#レシピ2
Receipe.create(id: 2, user_id: 2, receipe_category_id: 1, title: "かけそば", introduction: "簡単なかけそばの作り方をご紹介します。 1人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/soba.jpg"))
               
CookingStep.create(id: 5, receipe_id: 2, number: 1, description: "水を沸騰させます"                                 , image_path: nil)
CookingStep.create(id: 6, receipe_id: 2, number: 2, description: "別のお鍋で出汁を沸騰させます"                      , image_path: nil)
CookingStep.create(id: 7, receipe_id: 2, number: 3, description: "熱湯にうどん玉を入れ、茹でます"                    , image_path: nil)
CookingStep.create(id: 8, receipe_id: 2, number: 4, description: "うどん玉を容器に移し、沸騰した出汁を上からかけて完成", image_path: nil)

Ingredient.create(id: 3, receipe_id: 2, name: "蕎麦", quantity: "1束")
Ingredient.create(id: 4, receipe_id: 2, name: "出汁", quantity: "適量")

AllergensIngredient.create(id: 2, ingredient_id: 3, allergen_id: 4)

#レシピ3
Receipe.create(id: 3, user_id: 1, receipe_category_id: 6, title: "焼売", introduction: "美味しい焼売の作り方をご紹介します。 2人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/syumai.jpeg"))
               
CookingStep.create(id: 9, receipe_id: 3, number: 1, description: "ひき肉に調味料を合わせ、よく練る"    , image_path: nil)
CookingStep.create(id:10, receipe_id: 3, number: 2, description: "玉ねぎをみじん切りにする"            , image_path: nil)
CookingStep.create(id:11, receipe_id: 3, number: 3, description: "ひき肉、玉ねぎ、片栗粉を混ぜ合わせる" , image_path: nil)
CookingStep.create(id:12, receipe_id: 3, number: 4, description: "皮の真ん中に具をのせて円柱状に包む"   , image_path: nil)
CookingStep.create(id:13, receipe_id: 3, number: 5, description: "蒸し器にクッキングシートを敷く"       , image_path: nil)
CookingStep.create(id:14, receipe_id: 3, number: 6, description: "焼売がくっつかないように並べる"       , image_path: nil)
CookingStep.create(id:15, receipe_id: 3, number: 7, description: "10分ほど蒸して完成"                  , image_path: nil)

Ingredient.create(id: 5, receipe_id: 3, name: "豚ひき肉", quantity: "350g"  )
Ingredient.create(id: 6, receipe_id: 3, name: "玉ねぎ"  , quantity: "小1個"  )
Ingredient.create(id: 7, receipe_id: 3, name: "焼売の皮", quantity: "1袋"    )
Ingredient.create(id: 8, receipe_id: 3, name: "片栗粉"  , quantity: "大さじ2")
Ingredient.create(id: 9, receipe_id: 3, name: "醤油"    , quantity: "大さじ1")
Ingredient.create(id:10, receipe_id: 3, name: "砂糖"    , quantity: "大さじ1")
Ingredient.create(id:11, receipe_id: 3, name: "砂糖"    , quantity: "大さじ1")
Ingredient.create(id:12, receipe_id: 3, name: "ごま油"  , quantity: "大さじ1")
Ingredient.create(id:13, receipe_id: 3, name: "塩"      , quantity: "小さじ1")
Ingredient.create(id:14, receipe_id: 3, name: "生姜"    , quantity:    "少々")

AllergensIngredient.create(id: 3, ingredient_id: 5, allergen_id: 9)
AllergensIngredient.create(id: 4, ingredient_id: 7, allergen_id: 2)

ReplacedIngredient.create(id: 2, ingredient_id: 5, name: "牛ひき肉"    , quantity: "350g")
ReplacedIngredient.create(id: 3, ingredient_id: 7, name: "米粉焼売の皮", quantity:   "1袋")

#レシピ4
Receipe.create(id: 4, user_id: 2, receipe_category_id: 2, title: "サンマの塩焼き", introduction: "サンマの塩焼きを美味しくする方法 1人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/sanma.jpg"))
               
CookingStep.create(id:16, receipe_id: 4, number: 1, description: "さんまのうろこを取る"     , image_path: nil)
CookingStep.create(id:17, receipe_id: 4, number: 2, description: "さんまに切り込みを入れる" , image_path: nil)
CookingStep.create(id:18, receipe_id: 4, number: 3, description: "さんまに塩を振る"         , image_path: nil)
CookingStep.create(id:19, receipe_id: 4, number: 4, description: "オーブンで焼いて完成"     , image_path: nil)

Ingredient.create(id:15, receipe_id: 4, name: "サンマ", quantity: "1尾" )
Ingredient.create(id:16, receipe_id: 4, name: "塩"    , quantity: "適量")

#レシピ5
Receipe.create(id: 5, user_id: 2, receipe_category_id: 3, title: "豚汁", introduction: "やみつきになる豚汁の作り方 1人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/butajiru.jpeg"))
               
CookingStep.create(id:20, receipe_id: 5, number: 1, description: "鍋に水と味噌を入れ、沸騰させる"     , image_path: nil)
CookingStep.create(id:21, receipe_id: 5, number: 2, description: "豚肉を入れ、アクが出れば取る"       , image_path: nil)
CookingStep.create(id:22, receipe_id: 5, number: 3, description: "野菜セットを入れ、３分ほど待って完成", image_path: nil)

Ingredient.create(id:17, receipe_id: 5, name: "豚肉の細切れ"    , quantity: "200g" )
Ingredient.create(id:18, receipe_id: 5, name: "豚汁用野菜セット", quantity: "1袋"   )
Ingredient.create(id:19, receipe_id: 5, name: "出汁入り味噌"    , quantity: "適量"  )

AllergensIngredient.create(id: 5, ingredient_id:17, allergen_id: 9)
ReplacedIngredient.create(id: 4, ingredient_id: 17, name: "牛肉の細切れ"    , quantity: "200g")

#レシピ6
Receipe.create(id: 6, user_id: 3, receipe_category_id: 7, title: "ピザ", introduction: "美味しいピザの作り方 3人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/pizza.jpg"))
               
CookingStep.create(id:23, receipe_id: 6, number: 1, description: "ピーマンはヘタと種を取り除き、薄切りにしておきます。"     , image_path: nil)
CookingStep.create(id:24, receipe_id: 6, number: 2, description: "ボウルに塩以外の生地の材料を入れて混ぜ合わせます。"       , image_path: nil)
CookingStep.create(id:25, receipe_id: 6, number: 3, description: "まとまってきたら塩を入れて捏ね、ひとまとめにします。打ち粉をした台に移し、滑らかになるまでさらに捏ねます。", image_path: nil)
CookingStep.create(id:26, receipe_id: 6, number: 4, description: "生地を3等分にしてラップで包み、常温で15分ほど発酵させます。この間にオーブンを280℃に予熱します。", image_path: nil)
CookingStep.create(id:27, receipe_id: 6, number: 5, description: "クッキングシートにラップを外した3をのせます。みみになる縁の部分に厚みを残し、丸く伸ばします。", image_path: nil)
CookingStep.create(id:28, receipe_id: 6, number: 6, description: "ピザソースを塗り、具材を順にのせます。", image_path: nil)
CookingStep.create(id:29, receipe_id: 6, number: 7, description: "280℃のオーブンで10分ほど焼いたら完成です。", image_path: nil)

Ingredient.create(id:20, receipe_id: 6, name: "トマトソース"    , quantity: "1缶"      )
Ingredient.create(id:21, receipe_id: 6, name: "チーズ"          , quantity: "1袋"      )
Ingredient.create(id:22, receipe_id: 6, name: "サラミ"          , quantity: "6枚"      )
Ingredient.create(id:23, receipe_id: 6, name: "小麦粉"          , quantity: "200g"    )
Ingredient.create(id:24, receipe_id: 6, name: "塩"              , quantity: "小さじ1/2")
Ingredient.create(id:25, receipe_id: 6, name: "水"              , quantity: "150ml"   )
Ingredient.create(id:26, receipe_id: 6, name: "ピーマン"         , quantity: "2個"     )
Ingredient.create(id:27, receipe_id: 6, name: "ドライイースト"    , quantity: "5g"     )
Ingredient.create(id:28, receipe_id: 6, name: "サラダ油"         , quantity: "20g"     )

AllergensIngredient.create(id: 6, ingredient_id:21, allergen_id: 3)
AllergensIngredient.create(id: 7, ingredient_id:22, allergen_id: 9)
AllergensIngredient.create(id: 8, ingredient_id:23, allergen_id: 2)
ReplacedIngredient.create(id: 5, ingredient_id: 23, name: "米粉" , quantity: "200g"  )

#レシピ7
Receipe.create(id: 7, user_id: 3, receipe_category_id: 11, title: "よせ鍋", introduction: "美味しい寄せ鍋の作り方を紹介 2人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/nabe.jpg"))

CookingStep.create(id:30, receipe_id: 7, number: 1, description: "鍋に水とポーションを入れる", image_path: nil)
CookingStep.create(id:31, receipe_id: 7, number: 2, description: "具材を入れて沸騰するまで待つ", image_path: nil)
CookingStep.create(id:32, receipe_id: 7, number: 3, description: "10分ほど煮込んで完成"       , image_path: nil)

Ingredient.create(id:29, receipe_id: 7, name: "鶏肉"                   , quantity: "200g" )
Ingredient.create(id:30, receipe_id: 7, name: "プチッと鍋ポーション"    , quantity: "2個"   )
Ingredient.create(id:31, receipe_id: 7, name: "水"                     , quantity: "300ml")
Ingredient.create(id:32, receipe_id: 7, name: "白菜"                   , quantity: "1/8個")
Ingredient.create(id:33, receipe_id: 7, name: "油揚げ"                 , quantity: "1枚"   )

AllergensIngredient.create(id: 9, ingredient_id:29, allergen_id: 10)

#レシピ8
Receipe.create(id: 8, user_id: 3, receipe_category_id: 10, title: "かぼちゃの煮付け", introduction: "味が濃くて美味しいかぼちゃの煮付け 2人前",
               image_path: File.open("#{Rails.root}/db/fixtures/receipe/punpkin.jpg"))

CookingStep.create(id:33, receipe_id: 8, number: 1, description: "かぼちゃを一口サイズに切り分ける", image_path: nil)
CookingStep.create(id:34, receipe_id: 8, number: 2, description: "かぼちゃを鍋に入れ、かぼちゃがひたひたになるまで水を入れる", image_path: nil)
CookingStep.create(id:35, receipe_id: 8, number: 3, description: "各種調味料を全部入れる"       , image_path: nil)
CookingStep.create(id:36, receipe_id: 8, number: 4, description: "15分ほど中火で味を浸透させる" , image_path: nil)
CookingStep.create(id:37, receipe_id: 8, number: 5, description: "菜箸で穴を開け、やわらかくなっていれば完成" , image_path: nil)

Ingredient.create(id:34, receipe_id: 8, name: "かぼちゃ"                 , quantity: "1/4個"   )
Ingredient.create(id:35, receipe_id: 8, name: "醤油"                     , quantity: "大さじ2"  )
Ingredient.create(id:36, receipe_id: 8, name: "酒"                       , quantity: "大さじ2"  )
Ingredient.create(id:37, receipe_id: 8, name: "みりん"                   , quantity: "大さじ2"  )
Ingredient.create(id:38, receipe_id: 8, name: "砂糖"                     , quantity: "大さじ2"  )

#ユーザのお気に入りレシピ
Bookmark.create(id: 1, user_id: 1, receipe_id: 2)
Bookmark.create(id: 2, user_id: 1, receipe_id: 1)
Bookmark.create(id: 3, user_id: 1, receipe_id: 4)
Bookmark.create(id: 4, user_id: 2, receipe_id: 8)
#ユーザのレシピ評価
ReceipeEvaluation.create(id: 1, user_id: 1, receipe_id: 2, rating: 4)
ReceipeEvaluation.create(id: 2, user_id: 2, receipe_id: 1, rating: 5)
ReceipeEvaluation.create(id: 3, user_id: 1, receipe_id: 4, rating: 5)
ReceipeEvaluation.create(id: 4, user_id: 2, receipe_id: 5, rating: 2)
ReceipeEvaluation.create(id: 5, user_id: 3, receipe_id: 7, rating: 5)
ReceipeEvaluation.create(id: 6, user_id: 3, receipe_id: 6, rating: 3)