# coding: utf-8

def triangle_decision(numbers)
  # numbers = validation_check(argv)
  # p numbers
  if numbers.kind_of?(Array)
    reversed_numbers = numbers.sort.reverse
    # p reversed_numbers

    max_number = reversed_numbers[0]
    edge_a = reversed_numbers[1]
    edge_b = reversed_numbers[2]

    if edge_a + edge_b <= max_number
      p "三角形じゃないです＞＜"
    else
      if reversed_numbers[0] == reversed_numbers[1]
        if reversed_numbers[0] == reversed_numbers[2]
          p "正三角形ですね！"
        else
          p "二等辺三角形ですね！"
        end
      else
        p "不等辺三角形ですね！"
      end
    end
  end
end

def triangle(argv)
  unless argv.size() == 3
    p "引数は3個です"
  else
    for i in [0, 1, 2]
      if i == 2
        if argv[2].include?(",")
          out = "3番目の引数にカンマはいりません"
          break
        else
          out = nil
        end
      else
        unless argv[i].include?(",")
          out = "数値はカンマで区切ってください"
          break
        else
          if argv[i].index(",")+1 != argv[i].length
            out =  "#{i+1}番目の引数は、カンマの後ろはスペースで開けてください"
            break
          else
            out = nil
          end
        end
      end
    end
  
    if out.nil?
      argv_0 = argv[0].dup.delete!(",")
      argv_1 = argv[1].dup.delete!(",")
      argv_2 = argv[2].dup
    
      if argv_0 =~ /^[0-9]+$/ and argv_1 =~ /^[0-9]+$/ and argv_2 =~ /^[0-9]+$/
        numbers = [argv_0.to_i, argv_1.to_i, argv_2.to_i]
        triangle_decision(numbers)
      else
        p "整数を入力してください"
      end
    else
      p out
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  triangle(ARGV)
end