
order = {"창민": 0.9, "주승": 0.7, "상균": 0.6}
prob = Hash.new
result = Array.new
order.each do |a, b|
    chulu = b * 10
    out = 10 - chulu
    out_or_base = Array.new
    chulu.to_i.times do 
       out_or_base << "출루" 
    end
    out.to_i.times do
       out_or_base << "아웃" 
    end
    prob[a] = out_or_base
end


out = 0
while out < 3 do
    prob.each do |a, b|
       result_of_batter = prob[a].sample
       result << result_of_batter
       if result_of_batter == "아웃"
          out += 1 
       end
       break if out == 3
    end
end
point = result.count("출루") - 3
point = 0 if point < 0
puts result
puts "시뮬레이션 결과 한 이닝에 " + point.to_s + "점이 났습니다."

#######################################출루, 밀어내기만 생각했을 때 점수 시뮬레이션############################