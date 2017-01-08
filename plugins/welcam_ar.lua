do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text =  نہؤرتہ آلمہجہمہؤعہهہ يہرؤحہيہ😍❤️  .. \n .. \n 
    .. 🌚🍷آسًـمِـگ📛 :   ..msg.action.user.print_name.. \n 
    .. 🍷💋مہعہرفہكہ 📛 : @ ..(msg.action.user.username or "لا يوجد").. \n 
    .. ❤️💋آلآيہديہ📛 :  ..msg.action.user.id.. \n 
    .. 🙊🤷🏾‍♀️رقہمہ آلهہآتہفہ📛 :  ..(msg.action.user.phone or "لا يوجد").. \n 
    .. 🌚🍷آسہمہ آلضہآفہكہ📛 :  ..msg.from.print_name.. \n 
    .. 🌸🤷🏾‍♀️مہعہرفہ آلضہآفہكہ📛 : @ ..(msg.from.username or "لا يوجد").. \n 
    .. ❤️💋آلتہآريہخہ📛 :  ..os.date( !%A, %B %d, %Y*\n , timestamp)
    .. 🍷❤️آلؤقہتہ📛 :  ..os.date(  %T* , os.time()).. \n   
     
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
      local text =   نہؤرتہ آلمہجہمہؤعہهہ يہرؤحہيہ😍❤️ .. \n .. \n 
      .. 🍾🌚آسًـمِـگ📛 :   ..msg.action.user.print_name.. \n 
    .. 💋مہعہرفہكہ 📛 : @ ..(msg.action.user.username or "لا يوجد").. \n 
    .. 🌚🍷آلآيہديہ📛 :  ..msg.action.user.id.. \n 
    .. 🍫🌸رقہمہ آلهہآتہفہ📛 :  ..(msg.action.user.phone or "لا يوجد").. \n 
    .. ❤️🍷آسہمہ آلضہآفہكہ📛 :  ..msg.from.print_name.. \n 
    .. 🌚🍷مہعہرفہ آلضہآفہكہ📛 : @ ..(msg.from.username or "لا يوجد").. \n 
    .. 🍾🍷آلتہآريہخہ📛 :  ..os.date( !%A, %B %d, %Y*\n , timestamp)
    .. 🍾🍷آلؤقہتہ📛 :  ..os.date(  %T* , os.time()).. \n   
     
        return reply_msg(msg.id, text, ok_cb, false)
  end
      if matches[1] == "chat_del_user" then
       return "الِْلهِ وياك ُ عينايِْ❤️‼️"..msg.action.user.first_name
end
end
 
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",        
        "^!!tgservice (chat_del_user)$"
        
    },
 run = run
}
end