
@lineup = {"창민": 0.8, "주승": 0.6, "상균": 0.5}
def result_of_batter(name)
    
    ran = rand(1001).to_f/1000
    if ran < @lineup[name.to_sym].to_f
        out_or_base = "출루"
    else
        out_or_base = "아웃"
    end
    puts out_or_base
end


result_of_batter("상균")