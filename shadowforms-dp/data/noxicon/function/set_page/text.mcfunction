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
          text: "",\
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          underlined: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "", \
          font: "noxicon:images", \
          color: "white",\
          shadow_color: 0,\
          italic: false\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
        {\
          text: "\n", \
          font: "minecraft:default", \
          color: "#94745a",\
          shadow_color: 0,\
          italic: true\
        },\
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