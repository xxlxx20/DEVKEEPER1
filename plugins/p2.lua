do

local function run(msg, macthes)
local reply_id = msg['id']
if is_momod(msg) and macthes[1] == 'قائمة الحماية' then
local text = [[
���🔺اوامـر حـمـايـة الـمـجـمـوعـة👮🏻
🔺➖🔻➖🔺➖🔻➖🔺➖🔻
🔹طرد ~ لطرد عصو👁‍🗨
🔸حظر  - لحظر العضو👁‍🗨
🔹فتح الحظر  - لفتح الحظر عن العضو👁‍🗨
🔸كتم ~ لكتم عضو👁‍🗨
🔹كتم مرة اخرى  - ل الغاء الكتم 👁‍🗨
🔸حظر عام  -  لحضر العضو عامأ👁‍🗨
🔹فتح العام  - ل الغاء العام عن العضو👁‍🗨
🔸منع ~ لمنع كلمة👁‍🗨
🔹ايدي ~ لأضهار ايديك👁‍🗨
🔸اطردني ~ للخروج من المجموعة👁‍🗨
🔺➖🔻➖🔺➖🔻➖🔺➖🔻
اوامـر الـقـفـل و الـفـتـح فـي الـمـجـمـوعـة 👮🏻
🔺➖🔻➖🔺➖🔻➖🔺➖🔻
🔹قفل الصوت  - لقفل  الصوتيات👁‍🗨
🔸فتح الصوت  - لفتح الصوتيات👁‍🗨
🔹قفل الصور  - لقفل الصور👁‍🗨
🔸فتح الصور  - لفتح الصور👁‍🗨
🔹قفل الفديو  - لقفل الفديو👁‍🗨
🔸فتح الفديو  - لفتح الفديو👁‍🗨
🔹قفل الملصقات  -  لقفل الملصقات👁‍🗨
🔸فتح الملصقات  - لفتح الملصقات👁‍🗨
🔹قفل الحماية  - لتفعيل الحماية الصارمة 🛡
🔸فتح الحماية  - لفتح الحماية الصارمة 🛡
🔹قفل التكرار - لقفل التكرارمن [1-10]👁‍🗨
🔸فتح التكرار - لفتح التكرار👁‍🗨
🔹قفل الكلمات السيئة  - لقفل الكلمات الغير لائقة👁‍🗨
🔸فتح الكلمات السيئة  -  لفتح الكلمات الغير لائقة👁‍🗨
🔹قفل الجهات  - لقفل جهات الاتصال👁‍🗨
🔸فتح الجهات  - لفتح جهات الاتصال👁‍🗨
🔹قفل السمايلات   - لقفل السمايلات👁‍🗨
🔸فتح السمايلات  - لفتح السمايلات👁‍🗨
🔹قفل التوجيه  - لقفل اعادة التوجية👁‍🗨
🔸فتح التوجيه  - لفتح اعادة التوجية👁‍🗨
🔹قفل البوتات  - لقفل البوتات و طردها من الكروب فورأ👁‍🗨
🔸فتح البوتات  - لفتح البوتات وسماح لها في الكروب👁‍🗨
🔹قفل السبام  - لقفل السبام التفليش👁‍🗨
🔸فتح السبام  - لفتح السبام في الكروب👁‍🗨
🔹قفل اشعارات الدخول  - لقفل الاشعارات عند دخول العضو👁‍🗨
🔸فتح اشعارات الدخول - لفتح با الاشعارات عند دخول العضو👁‍🗨
🔹قفل الميديا  - لقفل التحذير👁‍🗨
🔸فتح الميديا  - لفتح التحذير👁‍🗨
🔹قفل التاك  - لقفل الاشارة👁‍🗨
🔸فتح  التاك  - لفتح الاشارة👁‍🗨
🔹قفل اليوزرنيم  - لقفل اليوزرنيم👁‍🗨
🔸فتح اليوزرنيم  - لفتح اليوزرنيم👁‍🗨
🔹قفل الردود  - لقفل الردود👁‍🗨
 🔸فتح الردود  - لفتح الردود👁‍🗨
🔺➖🔻➖🔺➖🔻➖🔺➖🔻
🔺جـمـيـع الاوامـر تـعـمـل بـدون {#/!}
🔺سـورس 🎗VIP♦️TEAM🎗
🔻CHANNEL> @VIP_TEAM1
]]
reply_msg(reply_id, text, ok_cb, false)
end

local reply_id = msg ['id']
if not is_momod(msg) then
local text = "للـمـشـرفـيـن فـقـط🌝😹"
reply_msg(reply_id, text, ok_cb, false)
end

end
return {
patterns ={
"^(قائمة الحماية)$",
},
run = run,
}
end