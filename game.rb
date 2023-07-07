require 'debug'

total_money = 0
while true
    puts "■何をする？"
    print "\e[36m"
    puts "1: たたかう"
    puts "2: アイテムを見る"
    puts "3: ポケモンを見る"
    puts "4: ショップへ行く"
    print "\e[0m"
    want = gets
    case want
    when "1\n"
        while true
            pokemon = "\e[35mリンリン\e[0m"
            monster = "\e[33mピ□チュウ\e[0m"
            puts "#{monster}が出た！"

            monster_total_hp = 100
            pokemon_total_hp = 100
            while true
                puts "■何をする？"
                print "\e[32m"
                puts "1: たたかう！"
                puts "2: アイテムを使う"
                print "\e[0m"
                want_for_monster = gets

                monster_damage = (1..90).to_a
                pokemon_damage = (1..90).to_a
                case want_for_monster
                when "1\n"
                    monster_damaged = monster_damage.sample
                    pokemon_damaged = pokemon_damage.sample
                    pokemon_total_hp -= monster_damaged
                    monster_total_hp -= pokemon_damaged
                    if pokemon_total_hp >= 0 && monster_total_hp >= 0
                        puts "#{monster}は#{pokemon}に\e[41m#{monster_damaged}\e[0mのダメージを与えた"
                        puts "#{pokemon}のHPは#{pokemon_total_hp}になった"
                        puts "#{pokemon}は#{monster}に\e[41m#{pokemon_damaged}\e[0mのダメージを与えた"
                        puts "#{monster}のHPは#{ monster_total_hp}になった"
                    elsif pokemon_total_hp < 0
                        puts "#{monster}は#{pokemon}に\e[41m#{monster_damaged}\e[0mのダメージを与えた"
                        puts "#{pokemon}は死んだ！"
                        puts "残念！あなたの負け！"
                        break
                    elsif  monster_total_hp < 0
                        money = [*1..500].sample
                        total_money += money
                        puts "#{monster}は#{pokemon}に#{monster_damaged}のダメージを与えた"
                        puts "#{pokemon}のHPは#{pokemon_total_hp}になった"
                        puts "#{pokemon}は#{monster}に#{pokemon_damaged}のダメージを与えた"
                        puts "#{monster}は死んだ！"
                        puts "あなたの勝利！"
                        puts "#{money}コイン手に入れた。あなたの持ち金は#{total_money}コインになった。"
                        break
                    end
                end
            end
        end
    when "2\n"
        puts "「アイテムを見る」は準備中だよ！　楽しみに待っててね！"
    when "3\n"
        puts "「ポケモンを見る」は準備中だよ！　楽しみに待っててね！"
        break
    when "4\n"
        puts "いらっしゃいませ、何をしますか？"
        puts "1: アイテムを買う"
        puts "2: 自分のアイテムを見る"
        puts = "1 or 2 ?"
        want_shop = gets
        case want_shop
        when "1\n"
            puts "こちらが商品になります。何を買いますか？"
            puts "1: ポーション（HP回復）---------------------10コイン"
            puts "2: モンスターカプセル（モンスターを捕まえる）---20コイン"
            puts "3: ポケモンのおやつ（ポケモンが強くなる）-------30コイン"
            puts "4: マップ（いろんなモンスターと出会える）-------50コイン"
            puts "1 ~ 4の商品の中からお選びください（アイテム番号を入力）"
            serect_item_num = gets
            case serect_item_num
            when "1\n"
                puts "個数を入力してください。"
                number_of_item = gets
                item_total_money = number_of_item.to_i * 10
                puts "ポーション#{number_of_item}個で#{item_total_money}コインになります"
                puts "よろしいですか？"
                puts "はい　or いいえ　を入力してください"
                buy_action = gets
                if buy_action == "はい\n"
                    total_money -= item_total_money
                    if total_money < item_total_money
                        # debugger
                        puts "コインが足りません。"
                    else
                        puts "お買い上げありがとうございます。"
                        puts "あなたの残額は#{total_money}になった"
                        puts "お買い物を続けますか？"
                        puts "はい　or いいえ　を入力してください"
                        buy_final_action = gets
                        # if buy_final_action == "はい"
                    end
                end
            end
        when "2\n"
            puts "「アイテムを見る」は準備中だよ！　楽しみに待っててね！"
        end
    end
end
