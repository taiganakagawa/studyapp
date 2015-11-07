require 'sinatra'

get '/' do
  erb :index
end

get '/math' do
  @q1 = "条件pが条件qを含んでいる集合であるとき、少なくともpはqの必要条件である。"
  @q2 = "条件pが条件qを含んでいる集合であるときはpはqの必要十分条件という。"
  @q3 = "条件pと条件qが重なりあった部分を、pかつqであるという。"

  erb :math

end

post '/math' do

  @q1 = "条件pが条件qを含んでいる集合であるとき、少なくともpはqの必要条件である。"
  @q2 = "条件pが条件qを含んでいる集合であるときはpはqの必要十分条件という。"
  @q3 = "条件pと条件qが重なりあった部分を、pかつqであるという。"

  @answer = params[:answer]
  @check = params[:check]
    if @answer == @check
        @print = "正解"
    else
        @print = "不正解"
    end

  erb :math

end
