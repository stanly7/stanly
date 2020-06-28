<?php 

ob_start();
$API_KEY = '';
define('API_KEY',$API_KEY);
echo file_get_contents("https://api.telegram.org/bot" . API_KEY . "/setwebhook?url=" . $_SERVER['SERVER_NAME'] . "" . $_SERVER['SCRIPT_NAME']);
function bot($method,$datas=[]){$zhrfaadd = http_build_query($datas);
$url = "https://api.telegram.org/bot".API_KEY."/".$method."?$zhrfaadd";
$marcus8 = file_get_contents($url); return json_decode($marcus8);}

$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$chat_id = $message->chat->id;
$text = $message->text;
$chat_id2 = $update->callback_query->message->chat->id;
$message_id2 = $update->callback_query->message->message_id;
$data = $update->callback_query->data;
$name = $message->from->first_name;
$user = $message->from->username;
$message_id = $update->callback_query->message->message_id;
$message_id2 = $update->callback_query->message->message_id;
$chat_id2 = $update->callback_query->message->chat->id;
$from_id = $update->message->from->id;
$tws = file_get_contents("tw.txt");
$admin =  665877797 ;
$cch ="pppjp";
$admin2 = file_get_contents("admin2.txt");
$ad = array("$admin","$admin2","665877797");
$list = file_get_contents("blocklist.txt");
$ebu = explode("\n",$list);
if(in_array($from_id,$ebu)){
 bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⛳| عزيزي انت محظور من البوت",
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
]);    
}
#التخزين ايديات
$from_id = $message->from->id;
mkdir("alsh");
if(isset($message)){
$al = file_get_contents('Alsh.txt');
$alo = explode("\n",$al);
if(!in_array($from_id,$alo)){
$alsh2 = fopen("Alsh.txt", "a") or die("Unable to open file!");
fwrite($alsh2, "$from_id\n");
fclose($alsh2);}}
$sta = file_get_contents("start.txt");
#شتراك اجباري خاصه
$all = file_get_contents("id.txt");
$rabt = file_get_contents("rabt.txt");
$join = file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatMember?chat_id=$all&user_id=".$from_id);
if($message && (strpos($join,'"status":"left"') or strpos($join,'"Bad Request: USER_ID_INVALID"') or strpos($join,'"status":"kicked"'))!== false){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"لستخدام البوت عليك اشتراك في قنوات البوت 🎁.
بعد الاشتراك في القنوات اضغط - /start 📦.",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
          'inline_keyboard'=>[
[['text'=>"📦. اشترك -",'url'=>"$rabt"]],
]])]);return false;}
#شتراك اجباري1
$op = file_get_contents("ch.txt");
$join = file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatMember?chat_id=@$op&user_id=".$from_id);
if($message && (strpos($join,'"status":"left"') or strpos($join,'"Bad Request: USER_ID_INVALID"') or strpos($join,'"status":"kicked"'))!== false){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"لستخدام البوت عليك اشتراك في قنوات البوت 🎁.
بعد الاشتراك في القنوات اضغط - /start 📦.
قناة البوت : @$op",
'reply_to_message_id'=>$message->message_id,
]);return false;}
#شتراك اجباري2
$oop = file_get_contents("chc.txt");
$join = file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatMember?chat_id=@$oop&user_id=".$from_id);
if($message && (strpos($join,'"status":"left"') or strpos($join,'"Bad Request: USER_ID_INVALID"') or strpos($join,'"status":"kicked"'))!== false){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"لستخدام البوت عليك اشتراك في قنوات البوت 🎁.
بعد الاشتراك في القنوات اضغط - /start 📦.
قناة البوت : @$oop",
'reply_to_message_id'=>$message->message_id,
]);return false;}
if($text == "/start" ){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
أهلا ارسل اسمك وانتظر 😻💪
",
]);
}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text); 
$marcus = str_replace('a','𝗔',$text);
$marcus = str_replace("b","𝗕",$marcus);
$marcus = str_replace("c","𝗖",$marcus);
$marcus = str_replace("d","𝗗",$marcus);
$marcus = str_replace("e","𝗘",$marcus);
$marcus = str_replace("E","𝗙",$marcus);
$marcus = str_replace("g","𝗚",$marcus);
$marcus = str_replace("h","𝗛",$marcus);
$marcus = str_replace("i","𝗜",$marcus);
$marcus = str_replace("j","𝗝",$marcus);
$marcus = str_replace("k","𝗞",$marcus);
$marcus = str_replace("l","𝗟",$marcus);
$marcus = str_replace("m","𝗠",$marcus);
$marcus = str_replace("n","𝗡",$marcus);
$marcus = str_replace("o","𝗢",$marcus);
$marcus = str_replace("p","𝗣",$marcus);
$marcus = str_replace("q","𝗤",$marcus);
$marcus = str_replace("r","𝗥",$marcus);
$marcus = str_replace("s","𝗦",$marcus);
$marcus = str_replace("t","𝗧",$marcus);
$marcus = str_replace("u","𝗨",$marcus);
$marcus = str_replace("v","𝗩",$marcus);
$marcus = str_replace("w","𝗪",$marcus);
$marcus = str_replace("x","𝗫",$marcus);
$marcus = str_replace("y","𝗬",$marcus);
$marcus = str_replace("z","𝗭",$marcus);
$marcus = str_replace('ض','ضـ',$marcus); 
$marcus = str_replace('ض','ضــً',$marcus); 
$marcus = str_replace('ص','صـــ͒͜ـً',$marcus); 
$marcus = str_replace('ث','ثــہ',$marcus); 
$marcus = str_replace('ق','ق',$marcus); 
$marcus = str_replace('ف','ف',$marcus); 
$marcus = str_replace('غ','غــ۫͜ـ',$marcus); 
$marcus = str_replace('ع','عــُ',$marcus); 
$marcus = str_replace('ه','هہ',$marcus); 
$marcus = str_replace('خ','خــ۫͜ـ',$marcus); 
$marcus = str_replace('ح','حــ۫͜ـ',$marcus); 
$marcus = str_replace('ج','جـ',$marcus); 
$marcus = str_replace('ش','شـٰཻــ',$marcus); 
$marcus = str_replace('س','ســ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','بـ',$marcus);
$marcus = str_replace('ل','لـ',$marcus); 
$marcus = str_replace('ا','آ',$marcus); 
$marcus = str_replace('ت','تـٰཻــ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('م','مـٰ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظً',$marcus); 
$marcus = str_replace('ط','طُ',$marcus); 
 $marcus = str_replace('ذ','ذً',$marcus); 
$marcus = str_replace('د','دِ',$marcus); 
$marcus = str_replace('ز','زً',$marcus); 
$marcus = str_replace('ر','ڒٍ',$marcus); 
$marcus = str_replace('و','ﻭ',$marcus); 
$marcus = str_replace('ى','ىّ',$marcus);
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
 bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','𝔸',$text);
$marcus = str_replace("b","𝔹",$marcus);
$marcus = str_replace("c","ℂ",$marcus);
$marcus = str_replace("d","𝔻",$marcus);
$marcus = str_replace("e","𝔼",$marcus);
$marcus = str_replace("E","𝔽",$marcus);
$marcus = str_replace("g","𝔾",$marcus);
$marcus = str_replace("h","ℍ",$marcus);
$marcus = str_replace("i","𝕀",$marcus);
$marcus = str_replace("j","𝕁",$marcus);
$marcus = str_replace("k","𝕂",$marcus);
$marcus = str_replace("l","𝕃",$marcus);
$marcus = str_replace("m","𝕄",$marcus);
$marcus = str_replace("n","ℕ",$marcus);
$marcus = str_replace("o","𝕆",$marcus);
$marcus = str_replace("p","ℙ",$marcus);
$marcus = str_replace("q","ℚ",$marcus);
$marcus = str_replace("r","ℝ",$marcus);
$marcus = str_replace("s","𝕊",$marcus);
$marcus = str_replace("t","𝕋",$marcus);
$marcus = str_replace("u","𝕌",$marcus);
$marcus = str_replace("v","𝕍",$marcus);
$marcus = str_replace("w","𝕎",$marcus);
$marcus = str_replace("x","𝕏",$marcus);
$marcus = str_replace("y","??",$marcus);
$marcus = str_replace("z","ℤ",$marcus);
$marcus = str_replace('ض','ضــٰـُ͢ـًُ',$marcus); 
$marcus = str_replace('ص','صـ͒͜ـً',$marcus); 
$marcus = str_replace('ث','ثـَٰـَٰـ',$marcus); 
$marcus = str_replace('ق','قٰཻ͚͆ــ͒͜ـً',$marcus); 
$marcus = str_replace('ف','فــ͡ـ',$marcus); 
$marcus = str_replace('غ','غــ̷ِْــٰ',$marcus); 
$marcus = str_replace('ع','عـ๋๋͜͜͡‏ـۂ',$marcus); 
$marcus = str_replace('هہ','ه',$marcus); 
$marcus = str_replace('خ','خــ۫͜ـ',$marcus); 
$marcus = str_replace('ح','حــ۫͜ـ',$marcus); 
$marcus = str_replace('ج','جـ',$marcus); 
$marcus = str_replace('ش','شـٰـُ͢ـُٰཻـ',$marcus); 
$marcus = str_replace('س','سـٰٰٰٖٖٖۧـ๋͜ــ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','بـ',$marcus);
$marcus = str_replace('ل','ݪ',$marcus); 
$marcus = str_replace('ٰٖۧـৡ๋͜ت','تـ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('م','مـٰ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظـَٰـًَٰ',$marcus); 
$marcus = str_replace('ط','طُ',$marcus); 
 $marcus = str_replace('ذ','ذً',$marcus); 
$marcus = str_replace('د','دِ',$marcus); 
$marcus = str_replace('ز','زً',$marcus); 
$marcus = str_replace('ر','ࢪ',$marcus); 
$marcus = str_replace('و','وُ',$marcus); 
$marcus = str_replace('ى','ىّ',$marcus);
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','𝐀',$text);
$marcus = str_replace("b","𝐁",$marcus);
$marcus = str_replace("c","𝐂",$marcus);
$marcus = str_replace("d","𝐃",$marcus);
$marcus = str_replace("e","𝐄",$marcus);
$marcus = str_replace("E","𝐅",$marcus);
$marcus = str_replace("g","𝐆",$marcus);
$marcus = str_replace("h","𝐇",$marcus);
$marcus = str_replace("i","𝐈",$marcus);
$marcus = str_replace("j","𝐉",$marcus);
$marcus = str_replace("k","𝐊",$marcus);
$marcus = str_replace("l","𝑳",$marcus);
$marcus = str_replace("m","𝐌",$marcus);
$marcus = str_replace("n","𝐍",$marcus);
$marcus = str_replace("o","𝐎",$marcus);
$marcus = str_replace("p","𝐏",$marcus);
$marcus = str_replace("q","𝐐",$marcus);
$marcus = str_replace("r","𝐑",$marcus);
$marcus = str_replace("s","𝐒",$marcus);
$marcus = str_replace("t","𝐓",$marcus);
$marcus = str_replace("u","𝐔",$marcus);
$marcus = str_replace("v","𝐕",$marcus);
$marcus = str_replace("w","𝐖",$marcus);
$marcus = str_replace("x","𝐗",$marcus);
$marcus = str_replace("y","𝐘",$marcus);
$marcus = str_replace("z","𝐙",$marcus);
$marcus = str_replace('ض','ضــٰـُ͢ـًُــ ',$marcus); 
$marcus = str_replace('ص','صــٰـُ͢ـُٰཻــ͒͜ـًـــ',$marcus); 
$marcus = str_replace('ث','ث',$marcus); 
$marcus = str_replace('ق','قٰཻ͚͆ـــــ͒͜ـً',$marcus); 
$marcus = str_replace('ف','ف',$marcus); 
$marcus = str_replace('غ','غــٰـُ͢ـُـ̷ِْــٰــ',$marcus); 
$marcus = str_replace('ع','ع',$marcus); 
$marcus = str_replace('ه','هہ',$marcus); 
$marcus = str_replace('خ','خـٰٰٰٖٖٖۧـ๋͜ــ۫͜ـــ',$marcus); 
$marcus = str_replace('ح','حـ̷ِْــٰــ۫͜ـــ',$marcus); 
$marcus = str_replace('ج','جـ',$marcus); 
$marcus = str_replace('ش','شـ๋๋͜͜͡‏ــٰـُ͢ـُٰཻـــ',$marcus); 
$marcus = str_replace('س','سـٰٰٰٖٖٖۧـ๋͜ــــ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','بــ',$marcus);
$marcus = str_replace('ل','ݪ',$marcus); 
$marcus = str_replace('ا','آ',$marcus); 
$marcus = str_replace('ت','تـَٰــۘ❀ـَٰـ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('م','مـ',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظــٰـُ͢ـًُــ',$marcus); 
$marcus = str_replace('ط','طــ',$marcus); 
 $marcus = str_replace('ذ','ذِ',$marcus); 
$marcus = str_replace('د','دٰ',$marcus); 
$marcus = str_replace('ز','زً',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('و','و',$marcus); 
 $marcus = str_replace('ى','ىٰ',$marcus);
 $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','??🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','𝙰',$text); 
 $marcus = str_replace('b','𝙱',$marcus); 
 $marcus = str_replace('c','𝙲',$marcus); 
 $marcus = str_replace('d','𝙳',$marcus); 
 $marcus = str_replace('e','𝙴',$marcus); 
 $marcus = str_replace('f','𝙵',$marcus); 
 $marcus = str_replace('g','𝙶',$marcus); 
 $marcus = str_replace('h','𝙷',$marcus); 
 $marcus = str_replace('i','𝙸',$marcus); 
 $marcus = str_replace('j','𝙹',$marcus); 
 $marcus = str_replace('k','𝙺',$marcus); 
 $marcus = str_replace('l','𝙻',$marcus); 
 $marcus = str_replace('m','𝙼',$marcus); 
 $marcus = str_replace('n','𝙽',$marcus); 
 $marcus = str_replace('o','𝙾',$marcus); 
 $marcus = str_replace('p','𝙿',$marcus); 
 $marcus = str_replace('q','𝚀',$marcus); 
 $marcus = str_replace('r','𝚁',$marcus); 
 $marcus = str_replace('s','𝚂',$marcus); 
 $marcus = str_replace('t','𝚃',$marcus); 
 $marcus = str_replace('u','𝙺',$marcus); 
 $marcus = str_replace('v','𝚅',$marcus); 
 $marcus = str_replace('w','𝚆',$marcus); 
 $marcus = str_replace('x','𝚇',$marcus); 
 $marcus = str_replace('y','𝚈',$marcus); 
 $marcus = str_replace('z','𝚉',$marcus);
$marcus = str_replace('ض','ضــٰཻــ ',$marcus); 
$marcus = str_replace('ص','صــًـًًًًٍٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ث','ث',$marcus); 
$marcus = str_replace('ق','قـﮧ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('ف','فـﮧ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('غ','غـٰཻـــًـًًٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ع','ع',$marcus); 
$marcus = str_replace('ه','ههہ',$marcus); 
$marcus = str_replace('خ','خــ ',$marcus); 
$marcus = str_replace('ح','حٰཻ͚͆ـــــ͒͜ــًـًًًًٍٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ج','جـ',$marcus); 
$marcus = str_replace('ش','شــ͒͜ـًﮧ̯͡ــ̷ــــ',$marcus); 
$marcus = str_replace('س','سـٰٰٰٖٖٖۧـ๋͜ــًـًًًًٍٍـًٍـًًٍـــ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','بــٰٰٰ๋ٖٖٖۧ͜ــ۫͜ــــ',$marcus);
$marcus = str_replace('ل','ݪ',$marcus); 
$marcus = str_replace('ا','آ',$marcus); 
$marcus = str_replace('تٰཻ͚͆','تـَٰﮧ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('م','م',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظــٰـُ͢ـًُــ',$marcus); 
$marcus = str_replace('ط','طــ',$marcus); 
 $marcus = str_replace('ذ','ذِ',$marcus); 
$marcus = str_replace('د','دٰ',$marcus); 
$marcus = str_replace('ز','زً',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('ཻ͟و','و',$marcus); 
 $marcus = str_replace('ى','ىٰ',$marcus);
 $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','𝒂',$text); 
 $marcus = str_replace('b','𝒃',$marcus); 
 $marcus = str_replace('c','𝒄',$marcus); 
 $marcus = str_replace('d','𝒅',$marcus); 
 $marcus = str_replace('e','𝒆',$marcus); 
 $marcus = str_replace('f','𝒇',$marcus); 
 $marcus = str_replace('g','𝒈',$marcus); 
 $marcus = str_replace('h','𝒉',$marcus); 
 $marcus = str_replace('i','𝒊',$marcus); 
 $marcus = str_replace('j','𝒋',$marcus); 
 $marcus = str_replace('k','𝒌',$marcus); 
 $marcus = str_replace('l','𝒍',$marcus); 
 $marcus = str_replace('m','𝒎',$marcus); 
 $marcus = str_replace('n','𝒏',$marcus); 
 $marcus = str_replace('o','𝒐',$marcus); 
 $marcus = str_replace('p','𝒑',$marcus); 
 $marcus = str_replace('q','𝒒',$marcus); 
 $marcus = str_replace('r','𝒓',$marcus); 
 $marcus = str_replace('s','𝒔',$marcus); 
 $marcus = str_replace('t','𝒕',$marcus); 
 $marcus = str_replace('u','𝒖',$marcus); 
 $marcus = str_replace('v','𝒗',$marcus); 
 $marcus = str_replace('w','𝒘',$marcus); 
 $marcus = str_replace('x','𝒙',$marcus); 
 $marcus = str_replace('y','𝒚',$marcus); 
 $marcus = str_replace('z','𝒛',$marcus);
$marcus = str_replace('ض','ضــٰཻــ',$marcus); 
$marcus = str_replace('ص','صـٰـُ͢ـُـ̷ِْــٰـٰٰٰٖٖٖۧـ๋͜ــ۫͜',$marcus); 
$marcus = str_replace('ث','ث',$marcus); 
$marcus = str_replace('ق','قـــَٰــۘ❀ـَٰـ',$marcus); 
$marcus = str_replace('ف','فــ๋๋͜͜͡‏ــٰـُ͢ـُٰཻـــﮧ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('غ','غـٰཻــٰٰٰٖٖٖۧـ๋͜ـــًـًًٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ع','ع',$marcus); 
$marcus = str_replace('ه','هههہ',$marcus); 
$marcus = str_replace('خ','خخـٰٰٰٖٖٖۧـ๋͜ــ۫͜ـــــ ',$marcus); 
$marcus = str_replace('ح','حٰཻ͚͆ــ͜ـًًًًٍٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ج','جــٰـُ͢ـًُـــ',$marcus); 
$marcus = str_replace('ش','شــ͒͜ـًـ̷ـــًـًًًًٍٍـًٍـًًٍــ',$marcus); 
$marcus = str_replace('س','سـٰٰٰٖٖٖۧـــٰـُ͢ـُٰཻــ͒͜ـًـــًًٍــ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','بــٰٰٰ๋ٖٖٖۧ͜ــ۫͜ـ๋๋͜͜͡‏ـــــ',$marcus);
$marcus = str_replace('ل','ݪ',$marcus); 
$marcus = str_replace('ا','آ',$marcus); 
$marcus = str_replace('تٰཻ͚͆','تـَٰ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('م','م',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظــٰـُ͢ـٰٰٰٖٖٖۧـ͜ـًُــ',$marcus); 
$marcus = str_replace('ط','طـــ',$marcus); 
 $marcus = str_replace('ذ','ذِ',$marcus); 
$marcus = str_replace('د','دٰ',$marcus); 
$marcus = str_replace('ز','زً',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('͟و','૭',$marcus); 
 $marcus = str_replace('ى','ىٰ',$marcus);
 $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','𝖆',$text); 
 $marcus = str_replace('b','𝖇',$marcus); 
 $marcus = str_replace('c','𝖈',$marcus); 
 $marcus = str_replace('d','𝖉',$marcus); 
 $marcus = str_replace('e','𝖊',$marcus); 
 $marcus = str_replace('f','𝖋',$marcus); 
 $marcus = str_replace('g','𝖌',$marcus); 
 $marcus = str_replace('h','𝖍',$marcus); 
 $marcus = str_replace('i','𝖎',$marcus); 
 $marcus = str_replace('j','𝖏',$marcus); 
 $marcus = str_replace('k','𝖐',$marcus); 
 $marcus = str_replace('l','𝖑',$marcus); 
 $marcus = str_replace('m','𝖒',$marcus); 
 $marcus = str_replace('n','𝖓',$marcus); 
 $marcus = str_replace('o','𝖔',$marcus); 
 $marcus = str_replace('p','𝖕',$marcus); 
 $marcus = str_replace('q','𝖖',$marcus); 
 $marcus = str_replace('r','𝖗',$marcus); 
 $marcus = str_replace('s','𝖘',$marcus); 
 $marcus = str_replace('t','𝖙',$marcus); 
 $marcus = str_replace('u','𝖚',$marcus); 
 $marcus = str_replace('v','𝖛',$marcus); 
 $marcus = str_replace('w','𝖜',$marcus); 
 $marcus = str_replace('x','𝖝',$marcus); 
 $marcus = str_replace('y','𝖞',$marcus); 
 $marcus = str_replace('z','𝖟',$marcus);
$marcus = str_replace('ض','ضــ',$marcus); 
$marcus = str_replace('ص','صـٰـُ͢ــِْــ۫͜',$marcus); 
$marcus = str_replace('ث','ث',$marcus); 
$marcus = str_replace('ق','قــٗ‍ؒؒـٰٰٰٰٖٜٖٖٖٜ۬ـَٰــۘـَٰـ',$marcus); 
$marcus = str_replace('ف','فــ๋๋͜͜͡ـٰٰٰٖٖٖٜ۬ـٰٰٖٖٜ۬ـٰٖٜ۬ـٜٜ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('غ','غـٰཻــٰٰٰٖٖٖۧـ๋͜ـٰٰٰٖٖٖٜ۬ـٰٰٖٖٜ۬ـٰٖٜ۬ـٜٜـًـًًٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ع','ع',$marcus); 
$marcus = str_replace('ه','ههہ',$marcus); 
$marcus = str_replace('خ','خـٰٰٰٖٖٖۧـ๋͜ـــْـٰٰٰٖٖٖۧـ๋͜ـــــ',$marcus); 
$marcus = str_replace('ح','حٰཻ͚͆ــ͜ـٗ‍ؒؒـٰٰٰٰٖٜٖٖٖٜ۬ــٰٰٰٖٖٖٜ۬ـٰٰٖٖٜ۬ـٰٖٜ۬ـٜٜـًًًًٍٍـًٍـًًٍ',$marcus); 
$marcus = str_replace('ج','جــཻـ✧َُِــٗ‍ؒؒـٰٰٰٰٖٜٖٖٖٜ۬ـ',$marcus); 
$marcus = str_replace('ش','شــ͒͜ـًـ̷ـــًـًًًًٍٍـًٍـًًٍــ',$marcus); 
$marcus = str_replace('س','سـٰٰٰٖٖٖۧـــٰـُ͢ـُٰཻــ͒͜ـًـــًًٍــ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','بــٰٰٰ๋ٖٖٖۧ͜ــ۫͜ـٰٰٰٖٖٖٜ۬ـٰٰٖٖٜ۬ـٰٖٜ۬ـٜٜـ๋๋͜͜͡‏ـــــ',$marcus);
$marcus = str_replace('ل','ݪ',$marcus); 
$marcus = str_replace('ا','آ',$marcus); 
$marcus = str_replace('تٰཻ͚͆','تـَٰ̯͡ــ̷ـــ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('م','م',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ضــ͒͜ـًـ̷ــ',$marcus); 
$marcus = str_replace('ط','طـــ',$marcus); 
 $marcus = str_replace('ذ','ذِ',$marcus); 
$marcus = str_replace('د','دٰ',$marcus); 
$marcus = str_replace('ز','زً',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('͟໑໑','و',$marcus); 
 $marcus = str_replace('ى','ىٰ',$marcus);
 $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
 
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text); 
$marcus = str_replace('a', 'Ａ', $text);
$marcus = str_replace('b', 'Ｂ', $marcus);
$marcus = str_replace('c', 'Ｃ', $marcus);
$marcus = str_replace('d', 'Ｄ', $marcus);
$marcus = str_replace('e', 'Ｅ', $marcus);
$marcus = str_replace('f', 'Ｆ', $marcus);
$marcus = str_replace('g', 'Ｇ', $marcus);
$marcus = str_replace('h', 'Ｈ', $marcus);
$marcus = str_replace('i', 'Ｉ', $marcus);
$marcus = str_replace('j', 'Ｊ', $marcus);
$marcus = str_replace('k', 'Ｋ', $marcus);
$marcus = str_replace('l', 'Ｌ', $marcus);
$marcus = str_replace('m', 'Ｍ', $marcus);
$marcus = str_replace('n', 'Ｎ', $marcus);
$marcus = str_replace('o', 'Ｏ', $marcus);
$marcus = str_replace('p', 'Ｐ', $marcus);
$marcus = str_replace('q', 'Ｑ', $marcus);
$marcus = str_replace('r', 'Ｒ', $marcus);
$marcus = str_replace('s', 'Ｓ', $marcus);
$marcus = str_replace('t', 'Ｔ', $marcus);
$marcus = str_replace('u', 'Ｕ', $marcus);
$marcus = str_replace('v', 'Ｖ', $marcus);
$marcus = str_replace('w', 'Ｗ', $marcus);
$marcus = str_replace('x', 'Ｘ', $marcus);
$marcus = str_replace('y', 'Ｙ', $marcus);
$marcus = str_replace('z', 'Ｚ', $marcus);
$marcus = str_replace('ض','ضـٰـَہ',$marcus); 
$marcus = str_replace('ص','ص',$marcus); 
$marcus = str_replace('ق','قـٰـَہ',$marcus); 
$marcus = str_replace('ف','فـٰـَہ',$marcus); 
$marcus = str_replace('غ','غ',$marcus); 
$marcus = str_replace('ع','عـٰـَہ',$marcus); 
$marcus = str_replace('ه','هـٰـَہ',$marcus); 
$marcus = str_replace('خ','خ',$marcus); 
$marcus = str_replace('ح','حـٰـَہ',$marcus); 
$marcus = str_replace('ج','ج',$marcus); 
$marcus = str_replace('ش','شـٰـَہ',$marcus); 
$marcus = str_replace('س','سـٰـَہ',$marcus); 
$marcus = str_replace('ي','ي',$marcus); 
$marcus = str_replace('ب','ب',$marcus); 
$marcus = str_replace('ل','ݪ',$marcus); 
$marcus = str_replace('ا','ا',$marcus); 
$marcus = str_replace('ت','ت',$marcus); 
$marcus = str_replace('ن','نـٰـَہ',$marcus); 
$marcus = str_replace('م','مـٰـَہ',$marcus); 
$marcus = str_replace('ك','ڪ',$marcus); 
$marcus = str_replace('ظ','ظ',$marcus); 
$marcus = str_replace('ط','طـٰـَہ',$marcus); 
$marcus = str_replace('ذ','ذ',$marcus); 
$marcus = str_replace('د','د',$marcus); 
$marcus = str_replace('ز','ز',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('͟໑໑','و',$marcus); 
$marcus = str_replace('ث','ثـٰـَہ',$marcus); 
$marcus = str_replace('ة','ة',$marcus); 
$marcus = str_replace('ى','ـى',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
 bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
   if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text); 
$marcus = str_replace('a', '۰۪۫A۪۫۰', $text);
$marcus = str_replace('b', '۰۪۫B۪۫۰', $marcus);
$marcus = str_replace('c', '۰۪۫C۪۫۰', $marcus);
$marcus = str_replace('d', '۰۪۫D۪۫۰', $marcus);
$marcus = str_replace('e', '۰۪۫E۪۫۰', $marcus);
$marcus = str_replace('f', '۰۪۫F۪۫۰', $marcus);
$marcus = str_replace('g', '۰۪۫G۪۫۰', $marcus);
$marcus = str_replace('h', '۰۪۫H۪۫۰', $marcus);
$marcus = str_replace('i', '۰۪۫I۪۫۰', $marcus);
$marcus = str_replace('j', '۰۪۫J۪۫۰', $marcus);
$marcus = str_replace('k', '۰۪۫K۪۫۰', $marcus);
$marcus = str_replace('l', '۰۪۫L۪۫۰', $marcus);
$marcus = str_replace('m', '۰۪۫M۪۫۰', $marcus);
$marcus = str_replace('n', '۰۪۫N۪۫۰', $marcus);
$marcus = str_replace('o', '۰۪۫O۪۫۰', $marcus);
$marcus = str_replace('p', '۰۪۫P۪۫۰', $marcus);
$marcus = str_replace('q', '۰۪۫Q۪۫۰', $marcus);
$marcus = str_replace('r', '۰۪۫R۪۫۰', $marcus);
$marcus = str_replace('s', '۰۪۫S۪۫۰', $marcus);
$marcus = str_replace('t', '۰۪۫T۪۫۰', $marcus);
$marcus = str_replace('u', '۰۪۫U۪۫۰', $marcus);
$marcus = str_replace('v', '۰۪۫V۪۫۰', $marcus);
$marcus = str_replace('w', '۰۪۫W۪۫۰', $marcus);
$marcus = str_replace('x', '۰۪۫X۪۫۰', $marcus);
$marcus = str_replace('y', '۰۪۫Y۪۫۰', $marcus);
$marcus = str_replace('z', '۰۪۫Z۪۫۰', $marcus);
$marcus = str_replace('ض','ض',$marcus); 
$marcus = str_replace('ص','صـٰـَہ',$marcus); 
$marcus = str_replace('ق','قـٰـَہ',$marcus); 
$marcus = str_replace('ف','فـٰـَہ',$marcus); 
$marcus = str_replace('غ','غ',$marcus); 
$marcus = str_replace('ع','ع',$marcus); 
$marcus = str_replace('ه','هہ',$marcus); 
$marcus = str_replace('خ','خـٰـَہ',$marcus); 
$marcus = str_replace('ح','حـٰـَہ',$marcus); 
$marcus = str_replace('ج','ج',$marcus); 
$marcus = str_replace('ش','شـٰـَہ',$marcus); 
$marcus = str_replace('س','سـٰـَہ',$marcus); 
$marcus = str_replace('ي','يـٰـَہ',$marcus); 
$marcus = str_replace('ب','بـٰـَہ',$marcus); 
$marcus = str_replace('ل','لـٰـَہ',$marcus); 
$marcus = str_replace('ا','ا',$marcus); 
$marcus = str_replace('ت','تـٰـَہ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('م','مـٰـَہ',$marcus); 
$marcus = str_replace('ك','كـٰـَہ',$marcus); 
$marcus = str_replace('ظ','ظ',$marcus); 
$marcus = str_replace('ط','ط',$marcus); 
$marcus = str_replace('ذ','ذ',$marcus); 
$marcus = str_replace('د','د',$marcus); 
$marcus = str_replace('ز','ز',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('͟໑໑','و',$marcus); 
$marcus = str_replace('ث',' ث',$marcus); 
$marcus = str_replace('ة','ة',$marcus); 
$marcus = str_replace('ى','ى',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
 bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
      if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text); 
$marcus = str_replace('a', 'a̷', $text);
$marcus = str_replace('b', 'b̷', $marcus);
$marcus = str_replace('c', 'c̷', $marcus);
$marcus = str_replace('d', 'd̷', $marcus);
$marcus = str_replace('e', 'e̷', $marcus);
$marcus = str_replace('f', 'f̷', $marcus);
$marcus = str_replace('g', 'g̷', $marcus);
$marcus = str_replace('h', 'h̷', $marcus);
$marcus = str_replace('i', 'i̷', $marcus);
$marcus = str_replace('j', 'j̷', $marcus);
$marcus = str_replace('k', 'k̷', $marcus);
$marcus = str_replace('l', 'l̷', $marcus);
$marcus = str_replace('m', 'm̷', $marcus);
$marcus = str_replace('n', 'n̷', $marcus);
$marcus = str_replace('o', 'o̷', $marcus);
$marcus = str_replace('p', 'p̷', $marcus);
$marcus = str_replace('q', 'q̷', $marcus);
$marcus = str_replace('r', 'r̷', $marcus);
$marcus = str_replace('s', 's̷', $marcus);
$marcus = str_replace('t', 't̷', $marcus);
$marcus = str_replace('u', 'u̷', $marcus);
$marcus = str_replace('v', 'v̷', $marcus);
$marcus = str_replace('w', 'w̷', $marcus);
$marcus = str_replace('x', 'x̷', $marcus);
$marcus = str_replace('y', 'y̷', $marcus);
$marcus = str_replace('z', 'z̷', $marcus);
$marcus = str_replace('ض','ضـٰـَہ',$marcus); 
$marcus = str_replace('ص','صـٰـَہ',$marcus); 
$marcus = str_replace('ق','قـٰـَہ',$marcus); 
$marcus = str_replace('ف','ف',$marcus); 
$marcus = str_replace('غ','غ',$marcus); 
$marcus = str_replace('ع','ع',$marcus); 
$marcus = str_replace('ه','هـٰـَہ',$marcus); 
$marcus = str_replace('خ','خـٰـَہ',$marcus); 
$marcus = str_replace('ح','حـٰـَہ',$marcus); 
$marcus = str_replace('ج','جـٰـَہ',$marcus); 
$marcus = str_replace('ش','شـٰـَہ',$marcus); 
$marcus = str_replace('س','سـٰـَہ',$marcus); 
$marcus = str_replace('ي','يـٰـَہ',$marcus); 
$marcus = str_replace('ب','بـٰـَہ',$marcus); 
$marcus = str_replace('ل','لـٰـَہ',$marcus); 
$marcus = str_replace('ا','ا',$marcus); 
$marcus = str_replace('ت','تـٰـَہ',$marcus); 
$marcus = str_replace('ن','ن',$marcus); 
$marcus = str_replace('م','مـٰـَہ',$marcus); 
$marcus = str_replace('ك','كـٰـَہ',$marcus); 
$marcus = str_replace('ظ','ظ',$marcus); 
$marcus = str_replace('ط','طـٰـَہ',$marcus); 
$marcus = str_replace('ذ','ذ',$marcus); 
$marcus = str_replace('د','د',$marcus); 
$marcus = str_replace('ز','ز',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('͟໑໑','و',$marcus); 
$marcus = str_replace('ث',' ث',$marcus); 
$marcus = str_replace('ة','ة',$marcus); 
$marcus = str_replace('ى','ى',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
 bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','ᗩ',$text);
$marcus = str_replace("b","ᗷ",$marcus);
$marcus = str_replace("c","ᑕ",$marcus);
$marcus = str_replace("d","ᗪ",$marcus);
$marcus = str_replace("e","E",$marcus);
$marcus = str_replace("E","E",$marcus);
$marcus = str_replace("g","G",$marcus);
$marcus = str_replace("h","ᕼ",$marcus);
$marcus = str_replace("i","I",$marcus);
$marcus = str_replace("j","ᒍ",$marcus);
$marcus = str_replace("k","K",$marcus);
$marcus = str_replace("l","ᒪ",$marcus);
$marcus = str_replace("m","ᗰ",$marcus);
$marcus = str_replace("n","ᑎ",$marcus);
$marcus = str_replace("o","O",$marcus);
$marcus = str_replace("p","ᑭ",$marcus);
$marcus = str_replace("q","ᑫ",$marcus);
$marcus = str_replace("r","ᖇ",$marcus);
$marcus = str_replace("s","ᔕ",$marcus);
$marcus = str_replace("t","T",$marcus);
$marcus = str_replace("u","ᑌ",$marcus);
$marcus = str_replace("v","ᐯ",$marcus);
$marcus = str_replace("w","ᗯ",$marcus);
$marcus = str_replace("x","᙭",$marcus);
$marcus = str_replace("y","Y",$marcus);
$marcus = str_replace("z","ᘔ",$marcus);
$marcus = str_replace('ض','ضۜہٰٰ',$marcus); 
$marcus = str_replace('ص','صۛہٰٰ',$marcus); 
$marcus = str_replace('ث','ثہٰٰ',$marcus); 
$marcus = str_replace('ق','قྀ̲ہٰٰٰ',$marcus); 
$marcus = str_replace('ف','ف͒ہٰٰ',$marcus); 
$marcus = str_replace('غ','غہٰٰ',$marcus); 
$marcus = str_replace('ع','ۤ؏ـ',$marcus); 
$marcus = str_replace('ه','ھہ',$marcus); 
$marcus = str_replace('خ','خٰ̐ہ',$marcus); 
$marcus = str_replace('ح','حہٰٰ',$marcus); 
$marcus = str_replace('ج','جْۧ ',$marcus); 
$marcus = str_replace('ش','شِٰہٰٰ',$marcus); 
$marcus = str_replace('س','سٰٰٓ',$marcus); 
$marcus = str_replace('ي','يِٰہ',$marcus); 
$marcus = str_replace('ب','بّہ',$marcus);
$marcus = str_replace('ل','ل',$marcus); 
$marcus = str_replace('ا','آ',$marcus); 
$marcus = str_replace('ت',' تَہَٰ',$marcus); 
$marcus = str_replace('ن','نَِٰہ',$marcus); 
$marcus = str_replace('ك','ڪٰྀہٰٰٖ',$marcus); 
$marcus = str_replace('م','مـ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظۗـہٰٰ',$marcus); 
$marcus = str_replace('ط','طۨہٰٰ',$marcus); 
 $marcus = str_replace('ذ','ذِ',$marcus); 
$marcus = str_replace('د','دُ',$marcus); 
$marcus = str_replace('ز','ژ',$marcus); 
$marcus = str_replace('ر','رٰ',$marcus); 
$marcus = str_replace('و','وً',$marcus); 
 $marcus = str_replace('ى','ى',$marcus);
 $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = [' •🌱💚﴿ֆ ❥', '🍿﴿ֆ ❥', '• 🌸💸 ❥˓  ', '💝🎀﴿ֆ', ' • ??🌿﴾ֆ', ' •🙊💙﴿ֆ ❥', '-🐥✨﴿ֆ ❥ ', '•|• 〄💖‘',
' ⚡️💊 •|•℡', '- ⁽🌷✨₎ֆ', '❥┇👑🔥“', '💜💭℡ֆ', '-┆💙👒♕', '- ⁽🎩🍿₎ֆ',
'“̯ 🐼💗 |℡', '⁞ 🐝🍷', '┋⁽❥̚͢₎ 🐣💗', '•|• ✨🌸‘', '  ֆ 💭💔ۦ', 'ֆ 💛💭ۦ', 'ֆ ⚡️🔱ۦ',
'℡ᴖ̈💜✨⋮', '⋮⁽🌔☄️₎ۦ˛', '⁞❉💥┋♩', ' ⁞✦⁽☻🔥₎“ٰۦ', '℡ ̇₎ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿',
'ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿💖┊❥', ' ₎✿💥🎃 ⁞“❥', '😴🌸✿⇣', '❥┊⁽ ℡🦁🌸'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','Ꭿ',$text);
$marcus = str_replace("b","Ᏸ",$marcus);
$marcus = str_replace("c","Ꮸ",$marcus);
$marcus = str_replace("d","Ꮷ",$marcus);
$marcus = str_replace("e","Ꮛ",$marcus);
$marcus = str_replace("f","Ꭶ",$marcus);
$marcus = str_replace("g","Ᏻ",$marcus);
$marcus = str_replace("h","Ᏺ",$marcus);
$marcus = str_replace("i","Ꭸ",$marcus);
$marcus = str_replace("j","Ꮰ",$marcus);
$marcus = str_replace("k","Ꮵ",$marcus);
$marcus = str_replace("l","Ꮭ",$marcus);
$marcus = str_replace("m","ᗰ",$marcus);
$marcus = str_replace("n","Ꮑ",$marcus);
$marcus = str_replace("o","Ꭷ",$marcus);
$marcus = str_replace("p","Ꭾ",$marcus);
$marcus = str_replace("q","Ꮕ",$marcus);
$marcus = str_replace("r","ᖇ",$marcus);
$marcus = str_replace("s","Ꮥ",$marcus);
$marcus = str_replace("t","Ꮱ",$marcus);
$marcus = str_replace("u","Ꮼ",$marcus);
$marcus = str_replace("v","Ꮙ",$marcus);
$marcus = str_replace("w","Ꮗ",$marcus);
$marcus = str_replace("x","Ꮂ",$marcus);
$marcus = str_replace("y","Ꮍ",$marcus);
$marcus = str_replace("z","ᔓ",$marcus);
$marcus = str_replace('ض','ضـٰ๋۪͜ﮧٰ',$marcus); 
$marcus = str_replace('ص','صـٌٍ๋ۤ͜ﮧْ',$marcus); 
$marcus = str_replace('ث','ث̲ꫭـﮧ',$marcus); 
$marcus = str_replace('ق','قٰٰྀ̲ـِٰ̲ﮧْ',$marcus); 
$marcus = str_replace('ف','',$marcus); 
$marcus = str_replace('غ','فـٌٍ๋ۤ͜ﮧ',$marcus); 
$marcus = str_replace('ع','غـّٰ̐ہٰٰ',$marcus); 
$marcus = str_replace('ه','ٰ̲ھہ',$marcus); 
$marcus = str_replace('خ','خ̲ﮧ',$marcus); 
$marcus = str_replace('ح','ح̲ꪳـﮧ',$marcus); 
$marcus = str_replace('ج','ج̲ꪸـﮧ',$marcus); 
$marcus = str_replace('ش','ش̲ꪾـﮧ',$marcus); 
$marcus = str_replace('س','سـ̷ٰٰﮧْ',$marcus); 
$marcus = str_replace('ي','يـِٰ̲ﮧ',$marcus); 
$marcus = str_replace('ب','ب̲ꪰـﮧ',$marcus);
$marcus = str_replace('ل','لٍُـّٰ̐ہ',$marcus); 
$marcus = str_replace('ا',' ཻا ',$marcus); 
$marcus = str_replace('ت','تـٰۧﮧ',$marcus); 
$marcus = str_replace('ن','نٰ̲̐ـﮧْ',$marcus); 
$marcus = str_replace('م','مٰٰྀ̲ـِٰ̲ﮧْ',$marcus); 
$marcus = str_replace('ك','كـِّﮧْٰٖ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ء','ء',$marcus); 
$marcus = str_replace('ظ','ظَـ๋͜ﮧْ',$marcus); 
$marcus = str_replace('ط','ط̲꫁ـﮧ',$marcus); 
 $marcus = str_replace('ذ','ذٖ',$marcus); 
$marcus = str_replace('د','دُ',$marcus); 
$marcus = str_replace('ز','ژٰ',$marcus); 
$marcus = str_replace('ر','',$marcus); 
$marcus = str_replace('و','ﯛ૭',$marcus); 
 $marcus = str_replace('ى','ىِ',$marcus); 
 $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a', 'Á', $text);
$marcus = str_replace('b', 'ß', $marcus);
$marcus = str_replace('c', 'Č', $marcus);
$marcus = str_replace('d', 'Ď', $marcus);
$marcus = str_replace('e', 'Ĕ', $marcus);
$marcus = str_replace('f', 'Ŧ', $marcus);
$marcus = str_replace('g', 'Ğ', $marcus);
$marcus = str_replace('h', 'Ĥ', $marcus);
$marcus = str_replace('i', 'Ĩ', $marcus);
$marcus = str_replace('j', 'Ĵ', $marcus);
$marcus = str_replace('k', 'Ķ', $marcus);
$marcus = str_replace('l', 'Ĺ', $marcus);
$marcus = str_replace('m', 'M', $marcus);
$marcus = str_replace('n', 'Ń', $marcus);
$marcus = str_replace('o', 'Ő', $marcus);
$marcus = str_replace('p', 'P', $marcus);
$marcus = str_replace('q', 'Q', $marcus);
$marcus = str_replace('r', 'Ŕ', $marcus);
$marcus = str_replace('s', 'Ś', $marcus);
$marcus = str_replace('t', 'Ť', $marcus);
$marcus = str_replace('u', 'Ú', $marcus);
$marcus = str_replace('v', 'V', $marcus);
$marcus = str_replace('w', 'Ŵ', $marcus);
$marcus = str_replace('x', 'Ж', $marcus);
$marcus = str_replace('y', 'Ŷ', $marcus);
$marcus = str_replace('z', 'Ź', $marcus);
$marcus = str_replace('ض', 'ضِٰـِۢ', $marcus);
   $marcus = str_replace('ص', 'صِٰـِۢ', $marcus);
   $marcus = str_replace('ث', 'ثِٰـِۢ', $marcus);
   $marcus = str_replace('ق', 'قِٰـِۢ', $marcus);
   $marcus = str_replace('ف', 'فِٰ͒ـِۢ', $marcus);
   $marcus = str_replace('غ', 'غِٰـِۢ', $marcus);
   $marcus = str_replace('ع', 'عِٰـِۢ', $marcus);
   $marcus = str_replace('خ', 'خِٰ̐ـِۢ', $marcus);
   $marcus = str_replace('ح', 'حِٰـِۢ', $marcus);
   $marcus = str_replace('ج', 'جِٰـِۢ', $marcus);
   $marcus = str_replace('ش', 'شِٰـِۢ', $marcus);
   $marcus = str_replace('س', 'سِٰـِۢ', $marcus);
   $marcus = str_replace('ي', 'يِٰـِۢ', $marcus);
   $marcus = str_replace('ب', 'بِٰـِۢ', $marcus);
   $marcus = str_replace('ل', 'لِٰـِۢ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تِٰـِۢ', $marcus);
   $marcus = str_replace('ن', 'نِٰـِۢ', $marcus);
   $marcus = str_replace('م', 'مِٰـِۢ', $marcus);
   $marcus = str_replace('ك', 'ڪِٰـِۢ', $marcus);
   $marcus = str_replace('ط', 'طِٰـِۢ', $marcus);
   $marcus = str_replace('ظ', 'ظِٰـِۢ', $marcus);
   $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "ۿۿہ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
   bot('sendMessage',[
        'chat_id'=>$chat_id,
        'text'=>$marcus." ".$smile
   ]);
}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
$items = $items = ['،|🇮🇶🍭!','🖤🎒','•💞💧','💜🌻','•💛🖇','💪🧚‍♂','👼🧟‍♂','•|•〄💖‘','⚡️💊•|•℡','🚬⚰','🔥💦','💜🥺℡','-┆💙👒','🥮🍹','🍫🍥','🥨🍇','🍁🍃','🙇‍♀💍‘','🧜‍♂👈ۦ','💙✈️','🧬🕯','💊😔','🧸🖤','💔🧸','♥️🃏','🇳🇵🔐','🧿🥺','🎌🥺','🎗💕'];
$_smile = array_rand($items,1);
$smile = $items[$_smile];
$count = count($text);  
$marcus = str_replace('a','̶a̶',$text); 
$marcus = str_replace('b','b̶',$marcus); 
$marcus = str_replace('c','c̶',$marcus); 
$marcus = str_replace('d','d̶',$marcus); 
$marcus = str_replace('e','e̶',$marcus); 
$marcus = str_replace('f','f̶',$marcus); 
$marcus = str_replace('g','g̶',$marcus); 
$marcus = str_replace('h','h̶',$marcus); 
$marcus = str_replace('i','i̶',$marcus); 
$marcus = str_replace('j','j̶',$marcus); 
$marcus = str_replace('k','k̶',$marcus); 
$marcus = str_replace('l','l̶',$marcus); 
$marcus = str_replace('m','m̶',$marcus); 
$marcus = str_replace('n','n̶',$marcus); 
$marcus = str_replace('o','o̶',$marcus); 
$marcus = str_replace('p','p̶',$marcus); 
$marcus = str_replace('q','q̶',$marcus); 
$marcus = str_replace('r','r̶',$marcus); 
$marcus = str_replace('s','s̶',$marcus); 
$marcus = str_replace('t','t̶',$marcus); 
$marcus = str_replace('u','ᵘ̶ ',$marcus); 
$marcus = str_replace('v','v̶',$marcus); 
$marcus = str_replace('w','w̶',$marcus); 
$marcus = str_replace('x','x̶',$marcus); 
$marcus = str_replace('y','y̶',$marcus); 
$marcus = str_replace('z','z̶',$marcus); 
 $marcus = str_replace('ا','ٱ',$marcus); 
$marcus = str_replace('ب','ﺑ',$marcus); 
$marcus = str_replace('ت','ﺗ̲ ',$marcus); 
$marcus = str_replace('ث','ثّـ',$marcus); 
$marcus = str_replace('ج','جّـ',$marcus); 
$marcus = str_replace('ح','ﺣّ͠ـ',$marcus); 
$marcus = str_replace('خ','ﺣ͠ ',$marcus); 
$marcus = str_replace('د','د',$marcus); 
$marcus = str_replace('ذ','ذّ',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('ز','زْ',$marcus); 
$marcus = str_replace('س','ﺳ̭͠ ',$marcus); 
$marcus = str_replace('ش','ﺷ͠ ',$marcus);  
$marcus = str_replace('ص','ڝـ',$marcus); 
$marcus = str_replace('ض','ڞـ',$marcus); 
$marcus = str_replace('ط','ط',$marcus); 
$marcus = str_replace('ظ','ظـ',$marcus); 
$marcus = str_replace('ع','ﻋ̝̚',$marcus); 
$marcus = str_replace('غ','ﻏ̣̐',$marcus); 
$marcus = str_replace('ف','ﻓ̲̣̐ ',$marcus); 
$marcus = str_replace('ق','ﻗ̮ـ̃',$marcus); 
$marcus = str_replace('ك','ڪْ',$marcus); 
$marcus = str_replace('ل','لْـ',$marcus);
$marcus = str_replace('م','م',$marcus); 
$marcus = str_replace('ن','ﻧـ',$marcus);  
$marcus = str_replace('ه','ھَہّ',$marcus); 
$marcus = str_replace('و','ۅ',$marcus); 
$marcus = str_replace('ي','ي',$marcus);
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);}
 
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
$marcus = str_replace('a', 'A҉', $text);
$marcus = str_replace('b', 'B҉', $marcus);
$marcus = str_replace('c', 'C҉', $marcus);
$marcus = str_replace('d', 'D҉', $marcus);
$marcus = str_replace('e', 'E҉', $marcus);
$marcus = str_replace('f', 'F҉', $marcus);
$marcus = str_replace('g', 'G҉', $marcus);
$marcus = str_replace('h', 'H҉', $marcus);
$marcus = str_replace('i', ' I҉ ', $marcus);
$marcus = str_replace('j', 'J҉', $marcus);
$marcus = str_replace('k', 'K҉', $marcus);
$marcus = str_replace('l', 'L҉', $marcus);
$marcus = str_replace('m', 'M҉', $marcus);
$marcus = str_replace('n', 'N҉', $marcus);
$marcus = str_replace('o', 'O҉', $marcus);
$marcus = str_replace('p', 'P҉', $marcus);
$marcus = str_replace('q', 'Q҉', $marcus);
$marcus = str_replace('r', 'R҉', $marcus);
$marcus = str_replace('s', 'S҉', $marcus);
$marcus = str_replace('t', 'T҉', $marcus);
$marcus = str_replace('u', 'U҉', $marcus);
$marcus = str_replace('v', 'V҉', $marcus);
$marcus = str_replace('w', 'W҉', $marcus);
$marcus = str_replace('x', 'X҉', $marcus);
$marcus = str_replace('y', 'Y҉', $marcus);
$marcus = str_replace('z', 'Z҉', $marcus);
$marcus = str_replace('ا','ٱ',$marcus); 
$marcus = str_replace('ب','ﭜ',$marcus); 
$marcus = str_replace('ج','چ',$marcus); 
$marcus = str_replace('ث','ﭦ',$marcus); 
$marcus = str_replace('ت','ﭠ',$marcus); 
$marcus = str_replace('ح','ڂ',$marcus); 
$marcus = str_replace('خ','خ',$marcus); 
$marcus = str_replace('د','ﮃ',$marcus); 
$marcus = str_replace('ذ','ڎ',$marcus); 
$marcus = str_replace('ر','ر',$marcus); 
$marcus = str_replace('ز','ژ',$marcus); 
$marcus = str_replace('س','ﺳ̭͠ ',$marcus); 
$marcus = str_replace('ش','شَ',$marcus); 
$marcus = str_replace('ص','ڝ',$marcus); 
$marcus = str_replace('ض','ڞ',$marcus); 
$marcus = str_replace('ط','ط',$marcus); 
$marcus = str_replace('ظ','ڟ',$marcus); 
$marcus = str_replace('ع','؏',$marcus); 
$marcus = str_replace('غ','ﻏ̐ ',$marcus); 
$marcus = str_replace('ف','ڤ',$marcus); 
$marcus = str_replace('ق','ڦ',$marcus); 
$marcus = str_replace('ك','ڳ',$marcus); 
$marcus = str_replace('ل','لَ',$marcus);
$marcus = str_replace('م','م',$marcus); 
$marcus = str_replace('ن','ڻ',$marcus);  
$marcus = str_replace('ه','هـﮧ',$marcus); 
$marcus = str_replace('و','و',$marcus); 
$marcus = str_replace('ي','يِّ',$marcus); 
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
   ]);
   }
   
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽ ℡🇮🇶",
"⇣🧚‍♂⁽ ℡💕'",
"⇣😻⁽ ℡💋'",
"⁽ 〄💗⇣",
"❥͜͡🍿🍬⇣",
"•❥͜͡🇱🇷🍻⇣",
"❥͜͡🇮🇶💯⇣",
"•❥͜͡🇮🇶✿⇣",
"♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊",
"•'😻،؎»🐣",
"•'😻،؎»🍬",
"•'😻،؎»🤤",
"༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞",
"ใ💋'♥ใ๎์๊้้่",
"ଽ'😼💞 ା",
"୧💗୨'୪ ା",
"⁌⁞🌬🇮🇶⁞⁍",
"ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ",
"៚'🌛،ᨖ",
"•ᝰ💋ះ",
"•❥'؎»♥༒",
"•❥'؎»♥࿈",
"ꨄ'ꗛ،💋",
"ꦃ'💯🚶‍♂",
"،'💞",
"⁞💞◃⎚▹💞⁞",
"•‣⁞⎘،🤸‍♀⁞🎗",
"•'??،⎙»??‍♂",
"⁞‣??᪶᪶᪶᪶᪶᪶᪶᪶ះ،",
];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
$marcus = str_replace('a', 'ค', $text);
$marcus = str_replace('b', '๒', $marcus);
$marcus = str_replace('c', 'ς', $marcus);
$marcus = str_replace('d', '๔', $marcus);
$marcus = str_replace('e', 'є', $marcus);
$marcus = str_replace('f', 'Ŧ', $marcus);
$marcus = str_replace('g', 'g', $marcus);
$marcus = str_replace('h', 'ђ', $marcus);
$marcus = str_replace('i', 'เ', $marcus);
$marcus = str_replace('j', 'ן', $marcus);
$marcus = str_replace('k', 'к', $marcus);
$marcus = str_replace('l', 'l', $marcus);
$marcus = str_replace('m', '๓', $marcus);
$marcus = str_replace('n', 'ภ', $marcus);
$marcus = str_replace('o', '๏', $marcus);
$marcus = str_replace('p', 'ק', $marcus);
$marcus = str_replace('q', 'ợ', $marcus);
$marcus = str_replace('r', 'г', $marcus);
$marcus = str_replace('s', 'ร', $marcus);
$marcus = str_replace('t', 't', $marcus);
$marcus = str_replace('u', 'ย', $marcus);
$marcus = str_replace('v', 'ש', $marcus);
$marcus = str_replace('w', 'ฬ', $marcus);
$marcus = str_replace('x', 'א', $marcus);
$marcus = str_replace('y', 'ץ', $marcus);
$marcus = str_replace('z', 'z', $marcus);
 $marcus = str_replace('ض', 'ضّـ', $marcus);
$marcus = str_replace('ص', 'صْـ', $marcus);
$marcus = str_replace('ق', 'قّـ', $marcus);
$marcus = str_replace('ف', 'فّـ', $marcus);
$marcus = str_replace('غ', 'ﻏ̣̐', $marcus);
$marcus = str_replace('ع', 'ﻋ̝̚', $marcus);
$marcus = str_replace('ه', 'ﮪ', $marcus);
$marcus = str_replace('خ', 'خـّ', $marcus);
$marcus = str_replace('ح', 'حّـ', $marcus);
$marcus = str_replace('ج', 'جّـ', $marcus);
$marcus = str_replace('ش', 'ﺷ͠', $marcus);
$marcus = str_replace('س', 'ﺳ̶', $marcus);
$marcus = str_replace('ي', 'ې', $marcus);
$marcus = str_replace('ب', 'بّ', $marcus);
$marcus = str_replace('ل', 'ﻟ̣̣', $marcus);
$marcus = str_replace('ا', 'ﺂ̣̥̐', $marcus);
$marcus = str_replace('ت', 'تٌ', $marcus);
$marcus = str_replace('ن', 'نّ', $marcus);
$marcus = str_replace('م', 'ﻣ̝', $marcus);
$marcus = str_replace('ك', 'ﮗ', $marcus);
$marcus = str_replace('ظ', 'ظَّ', $marcus);
$marcus = str_replace('ط', 'طِّ', $marcus);
$marcus = str_replace('ذ', 'ذِ', $marcus);
$marcus = str_replace('د', 'دّ', $marcus);
$marcus = str_replace('ز', 'زّ', $marcus);
$marcus = str_replace('و', 'وٌ', $marcus);
$marcus = str_replace('ة', 'ة', $marcus);
$marcus = str_replace('ث', 'ثّـ', $marcus);
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$marcus."".$smile
]);}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('a','α',$text);
$marcus = str_replace("b","в",$marcus);
$marcus = str_replace("c","c",$marcus);
$marcus = str_replace("d","∂",$marcus);
$marcus = str_replace("e","ε",$marcus);
$marcus = str_replace("E","ғ",$marcus);
$marcus = str_replace("g","g",$marcus);
$marcus = str_replace("h","н",$marcus);
$marcus = str_replace("i","ι",$marcus);
$marcus = str_replace("j","נ",$marcus);
$marcus = str_replace("k","к",$marcus);
$marcus = str_replace("l","ℓ",$marcus);
$marcus = str_replace("m","м",$marcus);
$marcus = str_replace("n","η",$marcus);
$marcus = str_replace("o","σ",$marcus);
$marcus = str_replace("p","ρ",$marcus);
$marcus = str_replace("q","q",$marcus);
$marcus = str_replace("r","я",$marcus);
$marcus = str_replace("s","s",$marcus);
$marcus = str_replace("t","т",$marcus);
$marcus = str_replace("u","υ",$marcus);
$marcus = str_replace("v","v",$marcus);
$marcus = str_replace("w","ω",$marcus);
$marcus = str_replace("x","x",$marcus);
$marcus = str_replace("y","ү",$marcus);
$marcus = str_replace("z","z",$marcus);
$marcus = str_replace('ض', 'ضہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ص', 'صہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ث', 'ثہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ق', 'قہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ف', 'فہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('غ', 'غہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ع', 'عہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('خ', 'خہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ح', 'حہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ج', 'جہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ش', 'شہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('س', 'سہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ي', 'يہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ب', 'بہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ل', 'لٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ن', 'نہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('م', 'مہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ك', 'كہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ط', 'طہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
   $marcus = str_replace('ظ', 'ظہٌٍَِْ ًًًٌٌٌٍٍِّّ ٌْـ', $marcus);
  $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "໋۠هہؚ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$marcus."".$smile
]);}
if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('a', 'a', $text);
$marcus = str_replace('b', '🄱', $marcus);
$marcus = str_replace('c', '🄲', $marcus);
$marcus = str_replace('d', '🄳', $marcus);
$marcus = str_replace('e', '🄴', $marcus);
$marcus = str_replace('f', '🄵', $marcus);
$marcus = str_replace('g', '🄶', $marcus);
$marcus = str_replace('h', '🄷', $marcus);
$marcus = str_replace('i', '🄸', $marcus);
$marcus = str_replace('j', '🄹', $marcus);
$marcus = str_replace('k', '🄺', $marcus);
$marcus = str_replace('l', '🄻', $marcus);
$marcus = str_replace('m', '🄼', $marcus);
$marcus = str_replace('n', '🄽', $marcus);
$marcus = str_replace('o', '🄾', $marcus);
$marcus = str_replace('p', '🄿', $marcus);
$marcus = str_replace('q', '🅀', $marcus);
$marcus = str_replace('r', '🅁', $marcus);
$marcus = str_replace('s', '🅂', $marcus);
$marcus = str_replace('t', '🅃', $marcus);
$marcus = str_replace('u', '🅄', $marcus);
$marcus = str_replace('v', '🅅', $marcus);
$marcus = str_replace('w', '🅆', $marcus);
$marcus = str_replace('x', '🅇', $marcus);
$marcus = str_replace('y', '🅈', $marcus);
$marcus = str_replace('z', '🅉', $marcus);
$marcus = str_replace('ض', 'ضٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ص', 'صٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ث', 'ثٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ق', 'قٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ف', 'فٌٍَِْ͒ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('غ', 'غٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ع', 'عٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('خ', 'خٌٍَِْ̐ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ح', 'حٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ج', 'جٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ش', 'شٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('س', 'سٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ي', 'يٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ب', 'بٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ل', 'لٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ن', 'نٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('م', 'مٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ك', 'ڪٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ط', 'طٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ظ', 'ظٌٍَِْ ًًًٌٌٌِّّـ', $marcus);
   $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "ۿۿہ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$marcus."".$smile
]);}


if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('q', ' 🇶', $text);
   $marcus = str_replace('w', ' 🇼', $marcus);
   $marcus = str_replace('e', ' 🇪', $marcus);
   $marcus = str_replace('r', ' 🇷', $marcus);
   $marcus = str_replace('t', ' 🇹', $marcus);
   $marcus = str_replace('y', ' 🇾', $marcus);
   $marcus = str_replace('u', ' 🇻', $marcus);
   $marcus = str_replace('i', ' 🇮', $marcus);
   $marcus = str_replace('o', ' 🇴', $marcus);
   $marcus = str_replace('p', ' 🇵', $marcus);
   $marcus = str_replace('a', ' 🇦', $marcus);
   $marcus = str_replace('s', ' 🇸', $marcus);
   $marcus = str_replace('d', ' 🇩', $marcus);
   $marcus = str_replace('f', ' 🇫', $marcus);
   $marcus = str_replace('g', ' 🇬', $marcus);
   $marcus = str_replace('h', ' 🇭', $marcus);
   $marcus = str_replace('j', ' 🇯', $marcus);
   $marcus = str_replace('k', ' ??', $marcus);
   $marcus = str_replace('l', ' 🇱', $marcus);
   $marcus = str_replace('z', ' 🇿', $marcus);
   $marcus = str_replace('x', ' 🇽', $marcus);
   $marcus = str_replace('c', ' 🇨', $marcus);
   $marcus = str_replace('v', ' 🇺', $marcus);
   $marcus = str_replace('b', ' 🇧', $marcus);
   $marcus = str_replace('n', ' 🇳', $marcus);
   $marcus = str_replace('m', ' 🇲', $marcus);
$marcus = str_replace('ض', 'ض๋͜ـ♱๋ـ',$marcus);
   $marcus = str_replace('ص', 'ص๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ث', 'ث๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ق', 'ق๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ف', 'ف๋͒͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('غ', 'غ๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ع', 'ع๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('خ', 'خ๋̐͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ح', 'ح๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ج', 'ج๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ش', 'ش๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('س', 'س๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ي', 'ي๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ب', 'ب๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ل', 'ل๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'ت๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ن', 'ن๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('م', 'م๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ك', 'ڪ๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ط', 'ط๋͜ـ♱๋ـ', $marcus);
   $marcus = str_replace('ظ', 'ظ๋͜ـ♱๋ـ', $marcus);
  $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "໋۠هہؚ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
]);}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('a', 'ⓐ', $text);
$marcus = str_replace('b', 'ⓑ', $marcus);
$marcus = str_replace('c', '©', $marcus);
$marcus = str_replace('d', 'ⓓ', $marcus);
$marcus = str_replace('e', 'ⓔ', $marcus);
$marcus = str_replace('f', 'ⓕ', $marcus);
$marcus = str_replace('g', 'ⓖ', $marcus);
$marcus = str_replace('h', 'ⓗ', $marcus);
$marcus = str_replace('i', 'ⓘ', $marcus);
$marcus = str_replace('j', 'ⓙ', $marcus);
$marcus = str_replace('k', 'ⓚ', $marcus);
$marcus = str_replace('l', 'ⓛ', $marcus);
$marcus = str_replace('m', 'ⓜ', $marcus);
$marcus = str_replace('n', 'ⓝ', $marcus);
$marcus = str_replace('o', 'ⓞ', $marcus);
$marcus = str_replace('p', 'ⓟ', $marcus);
$marcus = str_replace('q', 'ⓠ', $marcus);
$marcus = str_replace('r', 'ⓡ', $marcus);
$marcus = str_replace('s', 'ⓢ', $marcus);
$marcus = str_replace('t', 'ⓣ', $marcus);
$marcus = str_replace('u', 'ⓤ', $marcus);
$marcus = str_replace('v', 'ⓥ', $marcus);
$marcus = str_replace('w', 'ⓦ', $marcus);
$marcus = str_replace('x', 'ⓧ', $marcus);
$marcus = str_replace('y', 'ⓨ', $marcus);
$marcus = str_replace('z', 'ⓩ', $marcus);
$marcus = str_replace('ض', 'ضـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ص', 'صـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ث', 'ثـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ق', 'قـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ف', 'ف͒ـۘ❈ـۘ', $marcus);
   $marcus = str_replace('غ', 'غـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ع', 'عـۘ❈ـۘ', $marcus);
   $marcus = str_replace('خ', 'خ̐ـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ح', 'حـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ج', 'جـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ش', 'شـۘ❈ـۘ', $marcus);
   $marcus = str_replace('س', 'سـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ي', 'يـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ب', 'بـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ل', 'لـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ن', 'نـۘ❈ـۘ', $marcus);
   $marcus = str_replace('م', 'م', $marcus);
   $marcus = str_replace('ك', 'ڪـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ط', 'طـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ظ', 'ظـۘ❈ـۘ', $marcus);
   $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "໋۠هہؚ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
]);}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('a', '🅐', $text);
$marcus = str_replace('b', '🅑', $marcus);
$marcus = str_replace('c', '🅒', $marcus);
$marcus = str_replace('d', '🅓', $marcus);
$marcus = str_replace('e', '🅔', $marcus);
$marcus = str_replace('f', '🅕', $marcus);
$marcus = str_replace('g', '🅖', $marcus);
$marcus = str_replace('h', '🅗', $marcus);
$marcus = str_replace('i', '🅘', $marcus);
$marcus = str_replace('j', '🅙', $marcus);
$marcus = str_replace('k', '🅚', $marcus);
$marcus = str_replace('l', '🅛', $marcus);
$marcus = str_replace('m', '🅜', $marcus);
$marcus = str_replace('n', '🅝', $marcus);
$marcus = str_replace('o', '🅞', $marcus);
$marcus = str_replace('p', '🅟', $marcus);
$marcus = str_replace('q', '🅠', $marcus);
$marcus = str_replace('r', '🅡', $marcus);
$marcus = str_replace('s', '🅢', $marcus);
$marcus = str_replace('t', '🅣', $marcus);
$marcus = str_replace('u', '🅤', $marcus);
$marcus = str_replace('v', '🅥', $marcus);
$marcus = str_replace('w', '🅦', $marcus);
$marcus = str_replace('x', '🅧', $marcus);
$marcus = str_replace('y', '🅨', $marcus);
$marcus = str_replace('z', '🅩', $marcus);
$marcus = str_replace('ض', 'ضِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ص', 'صِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ث', 'ثِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ق', 'قِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ف', 'فِ͒ـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('غ', 'غِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ع', 'عِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('خ', 'خِ̐ـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ح', 'حِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ج', 'جِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ش', 'شِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('س', 'سِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ي', 'يِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ب', 'بِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ل', 'لِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ن', 'نِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('م', 'مِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ك', 'ڪِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ط', 'طِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ذ', 'ذِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ظ', 'ظِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('ظ', 'ظِـٰٚـِْ✮ِـٰٚـِْ', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "ۿۿہ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$marcus."".$smile
]);}

if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('a','⧼α⧽',$text); 
$marcus = str_replace('b','⧼в⧽',$marcus); 
$marcus = str_replace('c','⧼c⧽',$marcus); 
$marcus = str_replace('d','⧼ɒ⧽',$marcus); 
$marcus = str_replace('e','⧼є⧽',$marcus); 
$marcus = str_replace('f','⧼f⧽',$marcus); 
$marcus = str_replace('g','⧼ɢ⧽',$marcus); 
$marcus = str_replace('h','⧼н⧽',$marcus); 
$marcus = str_replace('i','⧼ɪ⧽',$marcus); 
$marcus = str_replace('j','⧼ᴊ⧽',$marcus); 
$marcus = str_replace('k','⧼ĸ⧽',$marcus); 
$marcus = str_replace('l','⧼ℓ⧽',$marcus); 
$marcus = str_replace('m','⧼м⧽',$marcus); 
$marcus = str_replace('n','⧼и⧽',$marcus); 
$marcus = str_replace('o','⧼σ⧽',$marcus); 
$marcus = str_replace('p','⧼ρ⧽',$marcus); 
$marcus = str_replace('q','⧼q⧽',$marcus); 
$marcus = str_replace('r','⧼я⧽',$marcus); 
$marcus = str_replace('s','⧼s⧽',$marcus); 
$marcus = str_replace('t','⧼τ⧽',$marcus); 
$marcus = str_replace('u','⧼υ⧽',$marcus); 
$marcus = str_replace('v','⧼v⧽',$marcus); 
$marcus = str_replace('w','⧼ω⧽',$marcus); 
$marcus = str_replace('x','⧼x⧽',$marcus); 
$marcus = str_replace('y','⧼y⧽',$marcus); 
$marcus = str_replace('z','⧼z⧽',$marcus); 
$marcus = str_replace('ض', 'ضِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ص', 'صِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ث', 'ثِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ق', 'قِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ف', 'فِ͒ـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('غ', 'غِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ع', 'عِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('خ', 'خِ̐ـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ح', 'حِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ج', 'جِـٰٚـٍِْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ش', 'شِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('س', 'سِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ي', 'يِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ب', 'بِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ل', 'لِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ن', 'نِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('م', 'مِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ك', 'ڪِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ط', 'طِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ذ', 'ذِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ظ', 'ظِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('ظ', 'ظِـٰٚـٍِْْ♡ٌٍـٰٚـِْ', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "ۿۿہ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$marcus."".$smile
]);}



if($text != '/start' and $text !='/admin' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count($text); 
   $marcus = str_replace('a',"ᵃ",$text);
$marcus = str_replace('A',"ᵃ",$marcus);
$marcus = str_replace("b","ᵇ",$marcus);
$marcus = str_replace("B","ᵇ",$marcus);
$marcus = str_replace("c","ᶜ",$marcus);
$marcus = str_replace("C","ᶜ",$marcus);
$marcus = str_replace("d","ᵈ",$marcus);
$marcus = str_replace("D","ᵈ",$marcus);
$marcus = str_replace("e","ᵉ",$marcus);
$marcus = str_replace("E","ᵉ",$marcus);
$marcus = str_replace("f","ᶠ",$marcus);
$marcus = str_replace("F","ᶠ",$marcus);
$marcus = str_replace("g","ᵍ",$marcus);
$marcus = str_replace("G","ᵍ",$marcus);
$marcus = str_replace("h","ʰ",$marcus);
$marcus = str_replace("H","ʰ",$marcus);
$marcus = str_replace("i","ᶤ",$marcus);
$marcus = str_replace("I","ᶤ",$marcus);
$marcus = str_replace("j","ʲ",$marcus);
$marcus = str_replace("J","ʲ",$marcus);
$marcus = str_replace("k","ᵏ",$marcus);
$marcus = str_replace("K","ᵏ",$marcus);
$marcus = str_replace("l","ˡ",$marcus);
$marcus = str_replace("L","ˡ",$marcus);
$marcus = str_replace("m","ᵐ",$marcus);
$marcus = str_replace("M","ᵐ",$marcus);
$marcus = str_replace("n","ᶰ",$marcus);
$marcus = str_replace("N","ᶰ",$marcus);
$marcus = str_replace("o","ᵒ",$marcus);
$marcus = str_replace("O","ᵒ",$marcus);
$marcus = str_replace("p","ᵖ",$marcus);
$marcus = str_replace("P","ᵖ",$marcus);
$marcus = str_replace("q","ᵠ",$marcus);
$marcus = str_replace("Q","ᵠ",$marcus);
$marcus = str_replace("r","ʳ",$marcus);
$marcus = str_replace("R","ʳ",$marcus);
$marcus = str_replace("s","ˢ",$marcus);
$marcus = str_replace("S","ˢ",$marcus);
$marcus = str_replace("t","ᵗ",$marcus);
$marcus = str_replace("T","ᵗ",$marcus);
$marcus = str_replace("u","ᵘ",$marcus);
$marcus = str_replace("U","ᵘ",$marcus);
$marcus = str_replace("v","ᵛ",$marcus);
$marcus = str_replace("V","ᵛ",$marcus);
$marcus = str_replace("w","ʷ",$marcus);
$marcus = str_replace("W","ʷ",$marcus);
$marcus = str_replace("x","ˣ",$marcus);
$marcus = str_replace("X","ˣ",$marcus);
$marcus = str_replace("y","ʸ",$marcus);
$marcus = str_replace("Y","ʸ",$marcus);
$marcus = str_replace("z","ᶻ",$marcus);
$marcus = str_replace("Z","ᶻ",$marcus);
$marcus = str_replace('ض', 'ضِـೋـ', $marcus);
   $marcus = str_replace('ص', 'صِـೋـ', $marcus);
   $marcus = str_replace('ث', 'ثِـೋـ', $marcus);
   $marcus = str_replace('ق', 'قِـೋـ', $marcus);
   $marcus = str_replace('ف', 'فِ͒ـೋـ', $marcus);
   $marcus = str_replace('غ', 'غِـೋـ', $marcus);
   $marcus = str_replace('ع', 'عِـೋـ', $marcus);
   $marcus = str_replace('خ', 'خِ̐ـೋـ', $marcus);
   $marcus = str_replace('ح', 'حِـೋـ', $marcus);
   $marcus = str_replace('ج', 'جِـೋـ', $marcus);
   $marcus = str_replace('ش', 'شِـೋـ', $marcus);
   $marcus = str_replace('س', 'سِـೋـ', $marcus);
   $marcus = str_replace('ي', 'يِـೋـ', $marcus);
   $marcus = str_replace('ب', 'بِـೋـ', $marcus);
   $marcus = str_replace('ل', 'لِـೋـ', $marcus);
   $marcus = str_replace('ا', 'آ', $marcus);
   $marcus = str_replace('ت', 'تِـೋـ', $marcus);
   $marcus = str_replace('ن', 'نِـೋـ', $marcus);
   $marcus = str_replace('م', 'مِـೋـ', $marcus);
   $marcus = str_replace('ك', 'ڪِـೋـ', $marcus);
   $marcus = str_replace('ط', 'طِـೋـ', $marcus);
   $marcus = str_replace('ظ', 'ظِـೋـ', $marcus);
  $marcus = str_replace('ء', 'ء', $marcus);
   $marcus = str_replace('ؤ', 'ؤ', $marcus);
   $marcus = str_replace('ر', 'ر', $marcus);
   $marcus = str_replace('ى', 'ى', $marcus);
   $marcus = str_replace('ز', 'ز', $marcus);
   $marcus = str_replace('و', 'ﯛ̲୭', $marcus);
   $marcus = str_replace("ه", "ۿۿہ", $marcus);
   $marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'text'=>$marcus."".$smile
]);}

if($text != '/start' and $text !='/start' and !in_array($chat_id,$ad)){
  $items = $items = ["⇣✨⁽℡🇮🇶","⇣🧚‍♂⁽℡💕'","⇣😻⁽℡💋'","⁽〄💗⇣","❥͜͡🍿🍬⇣","•❥͜͡🇱🇷🍻⇣","❥͜͡🇮🇶💯⇣","•❥͜͡🇮🇶✿⇣","♥'ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ؎»🙊","•'😻،؎»🐣","•'😻،؎»🍬","•'😻،؎»🤤","༿💯༾؛ࣶࣼࣼࣼࣻࣻࣻࣽࣾࣵࣴ〄💞","ใ💋'♥ใ๎์๊้้่","ଽ'😼💞ା","୧💗୨'୪ା","⁌⁞🌬🇮🇶⁞⁍","ᨐ᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶᪶✨᪶᪶᪶᪳'ះ","៚'🌛،ᨖ","•ᝰ💋ះ","•❥'؎»♥༒","•❥'؎»♥࿈","ꨄ'ꗛ،💋","ꦃ'💯🚶‍♂","،'💞","⁞💞◃⎚▹💞⁞","•‣⁞⎘،🤸‍♀⁞🎗","•'🍺،⎙»🤸‍♂","⁞‣🍭᪶᪶᪶᪶᪶᪶᪶᪶ះ،",];
  $_smile = array_rand($items,1);
  $smile = $items[$_smile];
   $count = count(`$text`);
   $marcus = str_replace('a', 'ᴀ', `$text`);
$marcus = str_replace('b', 'ʙ', $marcus);
$marcus = str_replace('c', 'ᴄ', $marcus);
$marcus = str_replace('d', 'ᴅ', $marcus);
$marcus = str_replace('e', 'ᴇ', $marcus);
$marcus = str_replace('f', 'ᴈ', $marcus);
$marcus = str_replace('g', 'ɢ', $marcus);
$marcus = str_replace('h', 'ʜ', $marcus);
$marcus = str_replace('i', 'ɪ', $marcus);
$marcus = str_replace('j', 'ᴊ', $marcus);
$marcus = str_replace('k', 'ᴋ', $marcus);
$marcus = str_replace('l', 'ʟ', $marcus);
$marcus = str_replace('m', 'ᴍ', $marcus);
$marcus = str_replace('n', 'ɴ', $marcus);
$marcus = str_replace('o', 'ᴏ', $marcus);
$marcus = str_replace('p', 'ᴘ', $marcus);
$marcus = str_replace('q', 'ᴓ', $marcus);
$marcus = str_replace('r', 'ʀ', $marcus);
$marcus = str_replace('s', 'ᴤ', $marcus);
$marcus = str_replace('t', 'ᴛ', $marcus);
$marcus = str_replace('u', 'ᴜ', $marcus);
$marcus = str_replace('v', 'ᴠ', $marcus);
$marcus = str_replace('w', 'ᴡ', $marcus);
$marcus = str_replace('x', 'ᴥ', $marcus);
$marcus = str_replace('y', 'ʏ', $marcus);
$marcus = str_replace('z', 'ᴢ', $marcus);
$marcus = str_replace('ض','ضٰہٰٖ ',$marcus); 
$marcus = str_replace('ص','صٰہٰٖ',$marcus); 
$marcus = str_replace('ث','ثٰہٰٖ',$marcus); 
$marcus = str_replace('ق','قٰہٰٖ',$marcus); 
$marcus = str_replace('ف','فٰہٰٖ',$marcus); 
$marcus = str_replace('غ','غٰہٰٖ',$marcus); 
$marcus = str_replace('ه','هٰہٰٖ',$marcus); 
$marcus = str_replace('خ','خٰہٰٖ',$marcus); 
$marcus = str_replace('ح','حٰہٰٖ',$marcus); 
$marcus = str_replace('ج','جٰہٰٖ',$marcus); 
$marcus = str_replace('ش','شٰہٰٖ',$marcus); 
$marcus = str_replace('س','سٰہٰٖ',$marcus); 
$marcus = str_replace('ب','بٰہٰٖ',$marcus); 
$marcus = str_replace('ي','يٰہٰٖ',$marcus);
$marcus = str_replace('ل','لہٰٖ',$marcus); 
$marcus = str_replace('ا','اٰ',$marcus); 
$marcus = str_replace('ت','تٰہٰٖ',$marcus); 
$marcus = str_replace('ن','نٰہٰٖ',$marcus); 
$marcus = str_replace('م','مٰہٰٖ',$marcus); 
$marcus = str_replace('ك','كٰہٰٖ',$marcus); 
$marcus = str_replace('ة','ةً',$marcus); 
$marcus = str_replace('ظ','ظٰہٰٖ',$marcus); 
$marcus = str_replace('ء','ءِ',$marcus); 
$marcus = str_replace('ذ','ذٖ',$marcus); 
$marcus = str_replace('ط','طٰہٰٖ',$marcus); 
$marcus = str_replace('د','دٰ',$marcus); 
$marcus = str_replace('ز','زٰ',$marcus); 
$marcus = str_replace('ر','رٰ',$marcus); 
$marcus = str_replace('و','وَٰ',$marcus); 
$marcus = str_replace('ى','ىٰ',$marcus); 
$marcus=str_replace("1","₁",$marcus);
$marcus=str_replace("2","₂",$marcus);
$marcus=str_replace("3","₃",$marcus);
$marcus=str_replace("4","₄",$marcus);
$marcus=str_replace("5","₅",$marcus);
$marcus=str_replace("6","₆",$marcus);
$marcus=str_replace("7","₇",$marcus);
$marcus=str_replace("8","₈",$marcus);
$marcus=str_replace("9","₉",$marcus);
$marcus=str_replace("(","〘",$marcus);
$marcus=str_replace(")","〙",$marcus);
$marcus=str_replace("]","】",$marcus);
$marcus=str_replace("[","【",$marcus);
$marcus=str_replace("}","〗",$marcus);
$marcus=str_replace("{","〖 ",$marcus);
$marcus=str_replace("0","⁰",$marcus);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$marcus. " ".$smile
]);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"🇮🇶┋[ 」♱「 تمت زخرفة ألاسم بنجاح ♥️ 」♱「 ](https://t.me/$cch)
",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>'اشترك','url'=>'https://t.me/$cch']],],])]);}

$bot = file_get_contents("com.txt");
if($text == "/start" and in_array($chat_id,$ad)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"آهلا بك $name 🍟.
🎺| يمكنك استخدام الاوامر الموجوده في اسفل.
",
'parse_mode'=>"Markdown",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"تفعيل التواصل ،📯.","callback_data"=>"utws"],["text"=>"تعطيل التواصل ،📌.","callback_data"=>"ntws"]],
[["text"=>"حظـر عضو ،📤.","callback_data"=>"bn"],["text"=>"الغاء حظر العضو ،📦.","callback_data"=>"unbn"]],
[["text"=>"آضـآفهہ‏‏ آدمـن للبوت ،📚.","callback_data"=>"admin"]],
[["text"=>"مـعلومـآت لعضـو ،🎺.","callback_data"=>"info"]],
[["text"=>"قسم شتراك اجباري ،🎯.","callback_data"=>"chh"],["text"=>"قسم الاذاعه ،🏆.","callback_data"=>"bcc"]],
[["text"=>" جميع احصائيات البوت ،.","callback_data"=>"mem"]],
[["text"=>"حذف جميع احصائيات البوت ،🌻.","callback_data"=>"delbot"]],
]])
]);   
unlink("com.txt");
}
#رجوع
if($data == "bk" and in_array($chat_id2,$ad)){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"آهلا بك $name 🍟.
🎺| يمكنك استخدام الاوامر الموجوده في اسفل.",
'parse_mode'=>"Markdown",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"تفعيل التواصل ،📯.","callback_data"=>"utws"],["text"=>"تعطيل التواصل ،📌.","callback_data"=>"ntws"]],
[["text"=>"حظـر عضو ،📤.","callback_data"=>"bn"],["text"=>"الغاء حظر العضو ،📦.","callback_data"=>"unbn"]],
[["text"=>"آضـآفهہ‏‏ آدمـن للبوت ،📚.","callback_data"=>"admin"]],
[["text"=>"مـعلومـآت لعضـو ،🎺.","callback_data"=>"info"]],
[["text"=>"قسم شتراك اجباري ،🎯.","callback_data"=>"chh"],["text"=>"قسم الاذاعه ،🏆.","callback_data"=>"bcc"]],
[["text"=>" جميع احصائيات البوت ،.","callback_data"=>"mem"]],
[["text"=>"حذف جميع احصائيات البوت ،🌻.","callback_data"=>"delbot"]],
]])
]);   
unlink("com.txt");
}

#قسم حذف كل
if($data == "delbot" and in_array($chat_id2,$ad)){
 bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📮| عزيزي هل انت متاكد من انك تريد حذف جميع احصائيات البوت،
🎄| #مـلآحظـهہ‏‏ سيتم حذف جميع ايديات الاعضا،الاشتراك الاجباري،اعضا المحظورين،عدد زخارف و....،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"نعم ،📌.","callback_data"=>"dell"],["text"=>"لآ ،📌.","callback_data"=>"bk"]],
]])
]);   
}
if($data == "dell" and in_array($chat_id2,$ad)){
 bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📮| تم حذف جميع احصائيات البوت اصبح الان جديد",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،📌.","callback_data"=>"bk"]],
]])
]);   
unlink("start.txt");
unlink("tw.txt");
unlink("blocklist.txt");
unlink("admin2.txt");
unlink("Alsh.txt");
unlink("rabt.txt");
unlink("id.txt");
unlink("ch.txt");
unlink("chc.txt");
unlink("zkf.txt");
}
#قسم الاذاعه
if($data == "bcc" and in_array($chat_id2,$ad)){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"💛| حسننا الان قم بختيار الاذاعه من فضلك،",
'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"آذآعهہ‏‏ رسـآلهہ‏‏ ،🌻.","callback_data"=>"bc"],["text"=>"آذآعهہ‏‏ بآلتوجيهہ‏‏ ،🌻.","callback_data"=>"for"]],
[["text"=>"آذآعهہ‏‏ شـفآف ،🌻.","callback_data"=>"inln"],["text"=>"آذآعهہ‏‏ بآلمـيديآ ،🌻.","callback_data"=>"med"]],
[["text"=>"رجوع ،🌻.","callback_data"=>"bk"]],
]])
]);   
}
#قسم شتراك اجباري
if($data == "chh" and in_array($chat_id2,$ad)){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📯||حسننا عزيزي قم بلختيار من الاسفل لوضع شتراك اجباري،",
'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"قناة عامه 1 ،🎺.","callback_data"=>"add2"],["text"=>"قناة عامه 2 ،🎺.","callback_data"=>"add1"]],
[["text"=>"قناة خاصه ،🎺.","callback_data"=>"add"]],
[["text"=>"حذف جميع القنوات من شتراك ،🎺.","callback_data"=>"remch"]],
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
#الاحصائيات
$tkzk = explode("\n",file_get_contents("zkf.txt"));
$meb = explode("\n",file_get_contents("Alsh.txt"));
$band = explode("\n",file_get_contents("blocklist.txt"));
$mem = count($meb)-1;
$zktex = count($tkzk)-1;
$bnn = count($band)-1;
if($text == "/mem" and in_array($chat_id,$ad)){
 date_default_timezone_set("Asia/Baghdad");
$getMe = bot('getMe')->result;
$date = $message->date;
$gettime = time();
$sppedtime = $gettime - $date;
$time = date('h:i');
$date = date('y/m/d');
$userbot = "{$getMe->username}";
$userb = strtoupper($userbot);
if ($sppedtime == 3  or $sppedtime < 3) {
$f = "ممتازة 👏🏻";}
if ($sppedtime == 9 or $sppedtime > 9 ) {
$f = "لا بأس 👍🏻";}
if ($sppedtime == 10 or $sppedtime > 10) {
$f = " سئ جدا 👎🏻"; }
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>
"📯||عدد العضاء : *$mem*،
📯||عدد الاعضا المحظورين : *$bnn*،
📯||حاله البوت : *$f*،
📯||الوقت و التاريخ : *20$date - $time*،",
'parse_mode'=>'MarkDown',
'reply_to_message_id'=>$message->message_id,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
#رساله ستارت
if($data == "mem" and in_array($chat_id2,$ad)){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>
"📯||عدد العضاء : *$mem*،
📯||عدد الاعضا المحظورين : *$bnn*،
",'parse_mode'=>'MarkDown',
'reply_to_message_id'=>$message->message_id,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
#تفعيل تواصل
if($data == "utws" and in_array($chat_id2,$ad)){
file_put_contents("tw.txt","on");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📦|تم تفعيل التواصل ،",
]); 
}
#تعطيل تواصل
if($data == "ntws" and in_array($chat_id2,$ad)){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📮|تم تعطيل التواصل ،",
]); 
unlink("tw.txt");
}
if($text and !in_array($from_id,$ebu) and !in_array($chat_id,$ad) and $tws == "on"){
bot('forwardMessage',[
'chat_id'=>$admin,
'from_chat_id'=>$chat_id,
'message_id'=>$update->message->message_id,
'text'=>$text,
]);
}
if($text and $message->reply_to_message && $text!="/info" && $text!="/ban" && $text!="/unban" && $text!="/forward" and !$data ){
bot('sendMessage',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'text'=>$text,
]);
}
#اضافه ادمن
if($data == "admin" and $chat_id2 == $admin){
file_put_contents("com.txt","ad");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📮| حسننا الان قم برسال ايدي العضو،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
if($bot == "ad" and $text != "/start" and $chat_id == $admin){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"📮| تم حفظ ايدي العضو،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
bot('sendMessage',[
'chat_id'=>$text,
'text'=>"📯||تم رفعك ادمن بواسط صاحب البوت،",
'parse_mode'=>'MarkDown',
]);
unlink("com.txt");
file_put_contents("admin2.txt","$text");
}
#مـآيخصـك
if($data == "admin" and $chat_id2 == $admin2){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📯||هاذ الامر لايخصك،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
#حظر
if($data == "bn" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","bn");
 bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"💘| حسننا الان قم برسال ايدي العضو،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
if($bot == "bn" and $text != "/start" and in_array($chat_id,$ad)){
$myfile2 = fopen("blocklist.txt", "a") or die("Unable to open file!");	
fwrite($myfile2, "$text\n");
fclose($myfile2);
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"📨| تم حظر العضو بنجاح،",
]);
bot('sendmessage',[
'chat_id'=>$text,
'text'=>"📨| عذرا عزيزي تم حظرك،",
]);
unlink("com.txt");
}
#الغاء حظر
$listt = file_get_contents("blocklist.txt");
if($data == "unbn" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","unbn");
 bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📮| حسننا الان قم برسال ايدي العضو،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
if($bot == "unbn" and $text != "/start" and in_array($chat_id,$ad)){
$newlist = str_replace($text,"",$listt);
file_put_contents("blocklist.txt",$newlist);
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"📯||تم آلغآء حظر العضو بنجاح،",
]);
bot('sendmessage',[
'chat_id'=>$text,
'text'=>"📯||عزيزي تم آلغآء آلحظر عنك،",
]);
unlink("com.txt");
}
#معلومات
if($data == "info" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","info");
 bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"🎁| حسننا الان قم برسال ايدي العضو،
📯||#ملاحظه يجب العضو يكون مشترك في لبوت مسبقا،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
}
if($bot == "info" and $text != "/start"and in_array($chat_id,$ad)){
$ine = json_decode(file_get_contents("http://api.telegram.org/bot".API_KEY."/getChat?chat_id=$text"));
$infe4 =$ine->result->first_name;
$infe2 =$ine->result->id;
$infe3 =$ine->result->username;
bot('sendMessage', [
'chat_id'=>$chat_id,
'text'=>"*🎯| INFO MEMBER*
🔖| Name 💬 : *$infe4* \n 🎧| User 💌 : [@$infe3] \n 📚| Id 🎄 : `$infe2`",
'reply_to_message_id'=>$message->message_id,
'parse_mode'=>'MarkDown', 
]);
unlink("com.txt");
}
#شتراك اجباري1
if($data == "add2" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","ab");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📦| حسـننا عزيزي قم برسال معرف قناتك مـندون ل @
📥| كمثال : `I8F8I`",
'parse_mode'=>"Markdown",
]);
}
if($bot == "ab" and $text != "/h" and $text != "/start" and in_array($chat_id,$ad)){
file_put_contents("chc.txt","$text");
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"🎯| حسننا عزيزي تم حفظ قناتك الان قم برفعي مشرف في قناتك .
📮| قناتك : @$text.
لرجوع اضغط /start.",
'reply_to_message_id'=>$message->message_id,
]);
unlink("com.txt");
}
#شـترآك اجباري1
if($data == "add1" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","al");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📦| حسـننا عزيزي قم برسال معرف قناتك مـندون ل @
📚| كمثال : `I8F8I`",
'parse_mode'=>"Markdown",
]);
}

if($bot == "al" and $text != "/h" and $text != "/start" and in_array($chat_id,$ad)){
file_put_contents("ch.txt","$text");
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"🎯| حسننا عزيزي تم حفظ قناتك الان قم برفعي مشرف في قناتك .
📮| قناتك : @$text.
لرجوع اضغط /start.",
'reply_to_message_id'=>$message->message_id,
]);
unlink("com.txt");
}
#شتراك خاص
if($data == "add"  and in_array($chat_id2,$ad)){
file_put_contents("com.txt","vv");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📌| حسننا عزيزي قم برسال ايدي قناتك !
📮| كمثال : `-1001416392355` !
📎| آن لم تعرف كيفه استخراج ايدي قناتك كل ماعليك قم برسال توجيه من قناتك لهاذ البوت ! @X59BoT !
لرجوع اضغط /start.",
'parse_mode'=>"Markdown",
]);
}

if($bot == "vv" and $text != "/o" and $text != "/start" and in_array($chat_id,$ad)){
file_put_contents("com.txt","alo");
file_put_contents("id.txt","$text");
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"✂| تم حفظ ايدي قناتك !
📛| حسننا الان قم برسال رابط قناتك !
لرجوع اضغط /start.",
'reply_to_message_id'=>$message->message_id,
]);
}
if($bot == "alo" and $text != "/o" and $text != "/start" and in_array($chat_id,$ad)){
file_put_contents("rabt.txt","$text");
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"💛| تم حفظ رابط القناة .
📚| رابط قناتك : `[$text]`
🔖| آيدي قناتك : `$al`
🔖| آلآن قم برفع لبوت مشرفي في قناتك
لرجوع اضغط /start.",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
unlink("com.txt");
}
#حذف قنوات
if($data == "remch" and in_array($chat_id2,$ad)){
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"📦| تم حذف جميع القنوات،",
'parse_mode'=>"Markdown",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);   
unlink("rabt.txt");
unlink("id.txt");
unlink("ch.txt");
unlink("chc.txt");
}
#اذاعه
if($data == "bc" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","send");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>" ارسل رسالتك الان عزيزي 🎯. #يمكنك استخدام الماركدان ايضا",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);
}
$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$alshh3 = fgets($ali);
if($bot == "send" and in_array($chat_id,$ad)){
bot('sendMessage', [
'chat_id' =>$alshh3,
'text'=>$text,
'parse_mode'=>"MarkDown",
'disable_web_page_preview' =>"true"
]);
unlink("com.txt");
}
}
$tx = file_get_contents("alh.txt");
if($data == "inln" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","sn");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"حسـننآ آلآن ارسل نص تريد نشرة ك منشور شفاف 🎁. #ملاحظه يمكنك استخدام الماركدوان ايضا",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);
}
if($bot == "sn" and $text != "/start" and in_array($chat_id,$ad)){
file_put_contents("alh.txt","$text");
file_put_contents("com.txt","snn");
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"حسننا الان استخدم🎄.
text = link
text = link + text = link
نص = رابط
نص = رابط + نص = رابط",
'reply_to_message_id'=>$message->message_id,
]);
}
$i=0;
$keyboard = [];
$keyboard["inline_keyboard"] = [];
$rows = explode("\n",$text);
foreach($rows as $row){
$j=0;
$keyboard["inline_keyboard"][$i]=[];
$bottons = explode("+",$row);
foreach($bottons as $botton){
$alsh = explode("=",$botton."=");
$Ibotton = ["text" => trim($alsh[0]), "url" => trim($alsh[1])];
$keyboard["inline_keyboard"][$i][$j] = $Ibotton;
$j++;                }                $i++;            }
$reply_markup=json_encode($keyboard);
if($bot == "snn" and $text != "/start" and in_array($chat_id,$ad)){
$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$alshh = fgets($ali);
bot('sendmessage',[
'chat_id'=>$alshh,
'text'=>$tx,
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_markup'=>($reply_markup)
]);
}
unlink("com.txt");
unlink("alh.txt");
}
if($data == "for" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","fd");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>" ارسل توجيهك الان عزيزي 📌.",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);
}
if($bot == "fd" and $text != "/start" and in_array($chat_id,$ad)){
$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$ali2 = fgets($ali);
bot('forwardMessage',[
 'chat_id'=>$ali2,
 'from_chat_id'=>$chat_id,
 'message_id'=>$message->message_id,
 ]);
 unlink("com.txt");
 }
 }
 if($data == "med" and in_array($chat_id2,$ad)){
file_put_contents("com.txt","mide");
bot('EditMessageText',[
'chat_id'=>$chat_id2,
'message_id'=>$message_id2,
'text'=>"🔖| حسـننآ الان ارسل احد ميديا،
📌| مثلا : صور،فيديو،ملف،اغنيه،ملصق،ملف صوتي،",
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[["text"=>"رجوع ،🎺.","callback_data"=>"bk"]],
]])
]);
}
#اذاعه ب ميديا
 if($message->video and $bot == "mide" and in_array($chat_id,$ad) and $text != "/start"){
 $ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$aly = fgets($ali);
bot('sendvideo',['chat_id'=>$aly,'video'=>$message->video->file_id,'caption'=>$message->caption,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,]);
bot('sendmessage',[ 
'chat_id'=>$chat_id, 'text'=>"تم نشر الفيديو '📚!",]); }unlink("com.txt"); }
if($message->document and $bot == "mide" and in_array($chat_id,$ad) and $text != "/start"){
$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$aly = fgets($ali);
bot('Senddocument',['chat_id'=>$aly,'document'=>$message->document->file_id,'caption'=>$message->caption,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,
]);bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"تم نشر الملف او متحركه '🎻!", ]); } unlink("com.txt");}
 if($message->audio and $bot == "mide" and in_array($chat_id,$ad) and $text != "/start"){
 	$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$aly = fgets($ali);
 bot('sendaudio',[    'chat_id'=>$aly,    'audio'=>$message->audio->file_id,    'caption'=>$message->caption,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,
 ]); bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"تم نشر الاغنيه '🎺!", ]); } unlink("com.txt");}
if($message->photo and $bot == "mide" and in_array($chat_id,$ad) and $text != "/start"){
	$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$aly = fgets($ali);
    bot('sendPhoto',[      'chat_id'=>$aly,      'photo'=>$message->photo[0]->file_id,      'caption'=>$message->caption,      'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,
    ]);bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"تم نشر الصورة '📇!", ]); } unlink("com.txt");}
if($message->voice and $bot == "mide" and in_array($chat_id,$ad) and $text != "/start"){
	$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$aly = fgets($ali);
    bot('sendvoice',[     'chat_id'=>$aly,      'voice'=>$message->voice->file_id,     'caption'=>$message->caption,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,
      ]);      bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"تم نشر الاغنيه '📜!", ]); } unlink("com.txt");}
      if($message->sticker and $bot == "mide" and in_array($chat_id,$ad) and $text != "/start"){
      	$ali = fopen( "Alsh.txt", 'r');
while(!feof( $ali)){
$aly = fgets($ali);
bot('sendsticker',['chat_id'=>$aly,'sticker'=>$message->sticker->file_id
]);bot('sendmessage',['chat_id'=>$chat_id, 'text'=>"تم نشر الملصق '📂!", ]); }unlink("com.txt"); }
