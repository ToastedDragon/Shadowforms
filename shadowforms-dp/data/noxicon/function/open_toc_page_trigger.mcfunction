scoreboard players set @s noxicon.page_num 0

playsound item.book.page_turn

scoreboard players set @s noxicon.flip_page 0

scoreboard players enable @a noxicon.exit_dialog
scoreboard players enable @a noxicon.flip_page

function sforms:items/noxicon/open