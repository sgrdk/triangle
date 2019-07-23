require File.expand_path(File.dirname(__FILE__) + '/../triangle.rb')

describe "Triangle" do
  specify { expect(triangle(["2,", "3,", "4"])).to eq("不等辺三角形ですね！")}
  specify { expect(triangle(["2,", "2,", "1"])).to eq("二等辺三角形ですね！")}
  specify { expect(triangle(["1,", "1,", "1"])).to eq("正三角形ですね！")}
  specify { expect(triangle(["1,", "2,", "3"])).to eq("三角形じゃないです＞＜")}
  specify { expect(triangle([])).to eq("引数は3個です")}
  specify { expect(triangle(["2,", "3,"])).to eq("引数は3個です")}
  specify { expect(triangle(["2", "3,", "4"])).to eq("数値はカンマで区切ってください")}
  specify { expect(triangle(["2,", "3", "4"])).to eq("数値はカンマで区切ってください")}
  specify { expect(triangle(["2,", "3,", "4,"])).to eq("3番目の引数にカンマはいりません")}
  specify { expect(triangle(["2,3", "3,", "4"])).to eq("1番目の引数は、カンマの後ろはスペースで開けてください")}
  specify { expect(triangle(["2,", "3,4", "4"])).to eq("2番目の引数は、カンマの後ろはスペースで開けてください")}
  specify { expect(triangle(["2,", "3,", "4,5"])).to eq("3番目の引数にカンマはいりません")}
  specify { expect(triangle(["あ,", "3,", "4"])).to eq("整数を入力してください")}
  specify { expect(triangle(["＠,", "3,", "4"])).to eq("整数を入力してください")}
  specify { expect(triangle(["2,", "あ,", "4"])).to eq("整数を入力してください")}
  specify { expect(triangle(["2,", "＠,", "4"])).to eq("整数を入力してください")}
  specify { expect(triangle(["2,", "3,", "あ"])).to eq("整数を入力してください")}
  specify { expect(triangle(["2,", "3,", "＠"])).to eq("整数を入力してください")}
end