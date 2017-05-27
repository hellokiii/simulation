
order = {"창민": 0.9, "주승": 0.7, "상균": 0.6}
prob = Hash.new
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

puts prob


# prob.each do |a, b|
#   puts prob[a].sample
# end
########################################################sample 뽑기 위한 준비#########################################
    
    
    
#     result = Array.new
#     out = 0
#     while out < 3 do
#         out_or_base = prob.sample
#         result << out_or_base
        
#         if out_or_base == "아웃"
#             out+=1
#         end
#     end



# puts result