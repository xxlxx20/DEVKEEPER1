local function run(msg, matches) 
if matches[1] == 'اطردني' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return 'كہبہد عہمہريہ🗣❗️ \nمہعہرفہ❗️ @'..msg.from.username..'\nآذآ آردتہ آلخہرؤجہ مہنہ هہذهہ آلمہجہمہؤعہهہ 🌐  آرسہل ليہ (نہعہمہ) ✔️ ؤسہؤفہ آقہؤمہ🕵🏾 بہآخہرآجہكہ مہنہهہآ ؤآذآ لآ تہريہد آلخہرؤجہ آرسہل ليہ (لآ ) ✖️😽❤️❗️' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "آؤكہيہ يہلهہ آبہقہ 🖐🏽 غہرد حہبہيہبہيہ🌚🍷") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return 'تہدلل يہرؤحہيہ رآحہ 😽آدزكہ للمہؤصہل🙊🍾🍷 ('..msg.to.title..')' 
        end 
      end 
    end 

return { 
  patterns = { 
  '^(اطردني)$', 
  '^(نعم)$', 
  '^(لا)$' ,
  '^[#!/](اطردني)$', 
  '^[#!/](نعم)$', 
  '^[#!/](لا)$'
  }, 
  run = run, 
}