do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "🔥{ آهہلآ ؤسہهہلآ 😘 بہكہ كہبہد رؤحہيہ نہؤرتہ 👮🏽‍♀️ آلمہجہمہؤعہهہ❤️❗️ }\n".."🔥{ آسہمہ آلمہجہمہؤعہهہ }"..msg.to.title.."\n".."🔥{ آيہديہ آلمہجہمہؤعہهہ }"..msg.to.id.."\n".."🔥{ آسہمہ آلضہآفہكہ }"..(msg.from.first_name or " ").."\n".."🔥{  مہعہرفہ  آلضہآفہكہ  }@"..(msg.from.username or " ").."\n".."🔥{ مہعہرفہكہ }@"..(msg.action.user.username or " ")
    elseif matches[1] == "chat_add_user_link" then
        return "آهہلآ ؤسہهہلآ 😘 بہكہ كہبہد رؤحہيہ نہؤرتہ 👮🏽‍♀️ آلمہجہمہؤعہهہ❤️ \n".."🔥{آسہمہ آلمہجہمہؤعہهہ } "..msg.to.title.."\n".."🔥{آيہديہ آلمہجہمہؤعہهہ } "..msg.to.id.."\n".."🔥{آسہمہكہ آلآؤل }: "..msg.from.first_name.."\n🔥{آسہمہكہ آلثہآنہيہ }:"..(msg.from.last_name or " لآ يہؤجہد" ).."\n ".. "🔥{مہعہرفہكہ}: @"..(msg.from.username or "لآ يہؤجہد " ).."\n".."🔥{آيہديہكہ}:"..msg.from.id
    end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$"
       
    },
 run = run,
}
end