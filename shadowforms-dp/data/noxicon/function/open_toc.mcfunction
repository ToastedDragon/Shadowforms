scoreboard players enable @a noxicon.flip_page
scoreboard players enable @a noxicon.exit_dialog

data modify storage noxicon:dialog Dialog set value {\
  type: "minecraft:notice",\
  title: {translate:"item.sforms.noxicon"},\
  pause: false,\
  after_action: none,\
  action: {\
    label: { \
      translate: "noxicon.sforms.exit"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger noxicon.exit_dialog set 1"\
    }\
  },\
  body: [\
    {\
      type: "minecraft:plain_message",\
      contents: [\
        {\
          text: "\ua001\n\n\n",\
          font: "noxicon:pages", \
          shadow_color: 0 \
        },\
        {\
          text: "Table of Contents\n\n",\
          font: "noxicon:body_text", \
          color: "#cea66f",\
          shadow_color: 0,\
          underlined: true\
        },\
        {\
          text: "Shadowforms..................2\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          shadow_color: 0,\
          click_event: {action:"run_command",command:"trigger noxicon.flip_page set 1"}\
        },\
        {\
          text: "Objects & Items..........8\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          shadow_color: 0,\
          click_event: {action:"run_command",command:"trigger noxicon.flip_page set 8"}\
        },\
        { \
          text: "The World Around...16\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          shadow_color: 0,\
          click_event: {action:"run_command",command:"trigger noxicon.flip_page set 16"}\
        },\
        { \
          text: "Rituals & Rites............23\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          shadow_color: 0,\
          click_event: {action:"run_command",command:"trigger noxicon.flip_page set 23"}\
        },\
        "\n\n",\
        { \
          text: "\ua015", \
          font: "noxicon:images",\
          shadow_color: 0,\
        }, \
        "\n\n\n\n\n\n\n",\
        "            ",\
        {\
          text: "TOC",\
          font: "noxicon:page_number", \
          color: "#d0be9d",\
          shadow_color: 0,\
        },\
        "       ",\
        {\
          translate: "noxicon.sforms.next_page",\
          font: "noxicon:pages", \
          shadow_color: 0,\
          click_event: { \
            action: "run_command", \
            command: "trigger noxicon.flip_page set 1" \
          }\ 
        },\
        "\n\n\n\n" \
      ]\
    }\
  ]\
}

#data modify storage noxicon:dialog Pages set value [{},{title:"STRUCTURES",icon:"\ua001"},{title:"ITEMS",icon:"\ua002"},{title:"NOTHING REALLY",icon:"\ua001"}]
execute store result storage noxicon:dialog PageNum int 1 run scoreboard players get @s noxicon.page_num
function noxicon:pages_lookup with storage noxicon:dialog

#data modify storage noxicon:dialog Dialog.body[0].contents[11].text set string storage noxicon:dialog PageNum

#data modify storage noxicon:dialog Dialog.body[0].contents[4].text set from storage noxicon:dialog Page.title
#data modify storage noxicon:dialog Dialog.body[0].contents[2].text set from storage noxicon:dialog Page.icon
#data modify storage noxicon:dialog Dialog.body[0].contents[8].text set string storage noxicon:dialog PageNum

function noxicon:show_dialog with storage noxicon:dialog