#5이닝
@lineup = {"이창민": 0.611, "오주승": 0.526, "김경용": 0.286, "박상균": 0.667,
            "김주영": 0.125, "류재원": 0.5, "김동휘": 0.333, "김성민": 0.333, "유승주": 0.600}
@inning = 1
@batter_num = 0
@juja = 0
@point = 0



def result_of_batter(name)
    ran = rand(1001).to_f/1000
    if ran < @lineup[name.to_sym].to_f
        out_or_base = "출루"
    else
        out_or_base = "아웃"
    end
    return out_or_base
end


@result = Array.new


def one_inning
    out = 0
    @result << @inning.to_s + "이닝"
    while out < 3 do
        @lineup.each do |name, prob|
           result_of_the_batter = result_of_batter(name)
           @batter_num += 1
           @batter_num = 1 if @batter_num > @lineup.length
           @result << @batter_num.to_s + "번타자: " + result_of_the_batter
           if result_of_the_batter == "출루"
              @juja += 1 
           else
              out += 1
           end
           if @juja == 4
              @point += 1
              @juja = 3
           end
           if out ==3
              @juja = 0
              @inning += 1
           end
           break if out == 3
        end
    end
end

def one_game

    6.times do
        one_inning
    end
end

sum = 0.to_f
1000.times do 
    one_game
end




# @point = @result.count {|r| r.include?("출루")} - 3
# @point = 0 if @point < 0


# puts @result
# puts "시뮬레이션 결과 4이닝에 " + @point.to_s + "점이 났습니다."

puts @point.to_f/1000