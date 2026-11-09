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
          text:"title\n",\
          font:"noxicon:body_text",\
          color:"#cea66f",\
          shadow_color:0,\
          italic:false, \
          click_event: {action:"run_command",command:"trigger noxicon.flip_page set 100"}\
        },\
        {\
          translate: "noxicon.sforms.seperator",\
          font: "noxicon:pages",\
          color: "#e5d7b9",\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "", \
          font: "noxicon:images", \
          color: "white",\
          italic: false\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "noxicon:body_text", \
          color: "#cea66f",\
          italic: true\
        },\
        {\
          translate: "noxicon.sforms.prev_page",\
          font: "noxicon:pages", \ 
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
        },\
        "             ",\
        "\n\n\n\n" \
      ]\
    }\
  ]\
}