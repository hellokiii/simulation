def one_inning
    order = {"창민": 0.8, "주승": 0.6, "상균": 0.5}
    prob = Hash.new
    result = Array.new
    order.each do |a, b|
        ran = rand(1000).to_f%1000
        if ran < b
            out_or_base = "출루"
        else
            out_or_base = "아웃"
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
    return point
end

sum = 0.00
1000.times do
   sum += one_inning
end

puts sum / 1000


###########################출루, 볼넷으로 계산했을 때 한 이닝 평균 점수#######################