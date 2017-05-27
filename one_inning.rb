########################한이닝#############################


@lineup = {"창민": 0.8, "주승": 0.6, "상균": 0.5}

def result_of_batter(name)
    ran = rand(1001).to_f/1000
    if ran < @lineup[name.to_sym].to_f
        out_or_base = "출루"
    else
        out_or_base = "아웃"
    end
    return out_or_base
end


result = Array.new
out = 0
while out < 3 do
    @lineup.each do |name, prob|
       result_of_the_batter = result_of_batter(name)
       result << result_of_the_batter
       if result_of_the_batter == "아웃"
          out += 1 
       end
       break if out == 3
    end
end
point = result.count("출루") - 3
point = 0 if point < 0
puts result
puts "시뮬레이션 결과 한 이닝에 " + point.to_s + "점이 났습니다."
