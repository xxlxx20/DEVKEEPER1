--[[ 
    delete : تنظيف المجموعه
--]]
local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" مہنہ آلرسہآئٌُِــل تہمہ تہنہظہيہفہهہآ💛‼️', ok_cb, false)
  else
send_msg(extra.chatid, 'تہمہ تہنہظہيہفہ💯هہذهہ آلمہجہمہؤعہهہ 🌐 بہنہجہآحہ عہزيہزيہ❤️⁉️', ok_cb, false)
end
end
local function mohammed(msg, matches)
  if matches[1] == 'تنظيف' and is_sudo(msg) then
    if msg.to.type == 'channel' then
    if tonumber(matches[2]) > 100000 or tonumber(matches[2]) < 1 then
        return "يہمہكہنہكہ ؤضہعہ ☑️ عہدد  100000 رسہآلهہ آؤ آقہل فہيہ آلمہجہمہؤعہهہ⚠️♥️❗️"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "للمہطہؤريہنہ 🕵🏻 فہقہطہ عہزيہزيہ❤️⁉️"
    end
  else
    return ""
  end
end

return {
    patterns = {
        '^(تنظيف) (%d*)$'
    },
    run = mohammed
}
