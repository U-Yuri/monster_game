total_money = 0
while true
    puts "■何をする？"
    puts "1: たたかう"
    puts "2: アイテムを見る"
    puts "3: ポケモンを見る"
    puts "4: ショップへ行く"
    puts = "1 or 2 or 3 or 4"
    want = gets
    case want
    when "1\n"
        while true
            pokemon = "リンリン"
            monster = "ピ チュウ"
            puts "#{monster}が出た！"

            monster_total_hp = 100
            pokemon_total_hp = 100
            while true
                puts "■何をする？"
                puts "1: たたかう！"
                puts "2: アイテムを使う"
                puts = "1 or 2 ?"
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
                        puts "#{monster}は#{pokemon}に#{monster_damaged}のダメージを与えた"
                        puts "#{pokemon}のHPは#{pokemon_total_hp}になった"
                        puts "#{pokemon}は#{monster}に#{pokemon_damaged}のダメージを与えた"
                        puts "#{monster}のHPは#{ monster_total_hp}になった"
                    elsif pokemon_total_hp < 0
                        puts "#{monster}は#{pokemon}に#{monster_damaged}のダメージを与えた"
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
        when "2\n"
            puts "「アイテムを見る」は準備中だよ！　楽しみに待っててね！"
        end
    end
end
