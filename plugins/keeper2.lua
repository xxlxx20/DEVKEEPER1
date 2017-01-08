--[[
----admin @llX8Xll
—]]
do 

local function keeper(msg, matches) 
local reply_id = msg ['id']
if ( msg.text ) then

  if ( msg.to.type == "user" ) then

    local text = "نہؤرتہ عہزيہزيہ♥️❗️ @"..msg.from.username..'\n\nآنہتہ بہآلفہعہل تہتہحہدثہ 🗣 مہعہ آلبہؤتہ ✔️♥️❗️ \n\n لہٰلتہٰحہٰدث مہٰع آلہٰمہٰطہٰور 🕵 \n\n @llX8Xll 💔\n\nآذآ كہنہتہ مہحہظہؤر 🗣 تہعہآل هہنہآآ حہبہيہبہيہ💋 @llX8Xllbot\n\n♥️❗️قہنہآه👨🏿‍💻 آلسہؤرسہ ςђ @DEV_KEEPER_NEW\n\nقہنہآه 🗣  تہآبہعہهہ للمہطہؤر🕵🏾 يہرجہآ آلآشہتہرآكہ @xx_KR_HM_xx  🍾🍷\n'     reply_msg(reply_id, text, ok_cb, false)
  end 
   
end 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = keeper, 
} 

end