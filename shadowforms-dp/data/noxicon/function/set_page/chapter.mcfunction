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
          text: "\ua001",\
          font: "noxicon:pages", \
          shadow_color: 0 \
        },\
        "\n\n\n\n\n\n\n", \
        {\
          text: "", \
          font: "noxicon:chapter_icons", \
          shadow_color: 0\
        },\
        "\n\n\n\n",\
        {\
          text: "", \
          font: "minecraft:default", \
          color: "#94745a",\
          bold: true,\
          shadow_color: 0\
        },\
        "\n\n\n\n\n\n\n", \
        {\
          translate: "noxicon.sforms.prev_page",\
          font: "noxicon:pages", \ 
          shadow_color: 0,\
          click_event: { \
            action: "run_command", \
            command: "trigger noxicon.flip_page set -1" \
          }\ 
        },\
        "        ",\
        {\
          text: "",\
          font: "noxicon:page_number", \
          color: "#d0be9d",\
          shadow_color: 0,\
        },\
        "        ",\
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