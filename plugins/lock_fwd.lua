--[[ 
منع التوجيه 
: @llX8Xll
--]] 

do 
local function pre_process(msg) 

    local fwd = 'mate:'..msg.to.id 
    if redis:get(fwd) and not is_momod(msg) and msg.fwd_from then 
            delete_msg(msg.id, ok_cb, true) 
            return msg 
end 
        return msg 
    end 
 local function keeper(msg, matches) 
     chat_id = msg.to.id 
local reply_id = msg['id'] 
     if is_momod(msg) and matches[1]== 'قفل' and matches[2]== 'التوجيه' then 
         local fwd = 'mate:'..msg.to.id 
         redis:set(fwd, true) 
         local text = 'تہمہ قہفہل 🔐 آلتہؤجہيہهہ فہيہ 🕵🏻 هہذهہ آلمہجہمہؤعہهہ♥️❗️ \n🔰Order By : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔰Order By : '.. msg.from.id..'\n'
         return reply_msg(reply_id, text, ok_cb, false) 
         end 
local reply_id = msg['id'] 
    if not is_momod(msg) and matches[1]== 'قفل' and matches[2]== 'التوجيه' then 
    local text= 'للمہشہرفہيہنہ 🕵🏻 فہقہطہ عہزيہزيہ❤️❗️' 
 return reply_msg(reply_id, text, ok_cb, false) 
end 
local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'التوجيه' then 
    local fwd = 'mate:'..msg.to.id 
    redis:del(fwd) 
    local text = 'تہمہ فہتہحہ 🔓 آلتہؤجہيہهہ فہيہ 🕵🏻 هہذهہ آلمہجہمہؤعہهہ♥️❗️ \n🔰Order By : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔰Order By : '.. msg.from.id..'\n'
    return reply_msg(reply_id, text, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'التوجيه' then 
local text= ' للمہشہرفہيہنہ 🕵🏻 فہقہطہ عہزيہزيہ❤️❗️ ' 
 return reply_msg(reply_id, text, ok_cb, false) 
 end 

end 
return { 
    patterns ={ 
        '^(قفل) (التوجيه)$', 
        '^(فتح) (التوجيه)$' 
    }, 
run = keeper, 
pre_process = pre_process 
} 
end
