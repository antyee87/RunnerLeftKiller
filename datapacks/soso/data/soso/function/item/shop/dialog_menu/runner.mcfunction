$dialog show @s \
{\
  "type": "minecraft:multi_action",\
  "title": [\
    {\
      "text": "求生者商店"\
    }\
  ],\
  "external_title": "",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "text": "剩餘貨幣(箭矢): ",\
          "color": "aqua"\
        },\
        {\
          "text": "$(shop)"\
        }\
      ]\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "商品預覽",\
        "color": "gold",\
        "bold": true\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:potion",\
        "components": {\
          "minecraft:potion_contents": {\
            "potion": "minecraft:healing"\
          }\
        }\
      },\
      "description": {\
        "text": "治療藥水: 5元，恢復2顆心。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:netherite_sword",\
        "components": {\
          "minecraft:damage": 2026,\
          "minecraft:enchantments": {"minecraft:sharpness":40},\
          "minecraft:custom_name":[{"text":""},{"text":"強威劍","color":"gold","bold":true}],\
          "minecraft:lore":["感染剋星","必殺殭屍。"]\
        }\
      },\
      "description": {\
        "text": "強威劍: 10元，鋒利XXXX，5耐久。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:netherite_boots",\
        "components": {\
          "minecraft:damage":480,\
          "minecraft:custom_name":[{"text":""},{"text":"急速靴","color":"gold","bold":true}],\
          "minecraft:lore":["又快又急","腳底抹油。"],\
          "minecraft:attribute_modifiers":[{type:"movement_speed",slot:"feet",amount:0.01d,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]\
        }\
      },\
      "description": {\
        "text": "急速靴: 10元，加速10%，1耐久。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:golden_boots",\
        "components": {\
          "minecraft:damage":81,\
          "minecraft:custom_name":[{"text":""},{"text":"抗退之靴","color":"gold","bold":true}],\
          "minecraft:lore":["不被擊退","小心摸腳。"],\
          "minecraft:attribute_modifiers":[{type:"knockback_resistance",slot:"feet",amount:100,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]\
        }\
      },\
      "description": {\
        "text": "抗退靴: 30元，不被擊退，10耐久。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:diamond_sword",\
        "components": {\
          "minecraft:damage":1560,\
          "minecraft:enchantments":{"minecraft:luck_of_the_sea":10},\
          "minecraft:custom_name":[{"text":""},{"text":"凍結劍","color":"gold","bold":true}],\
          "minecraft:lore":["殺手動不了","但你可以。"],\
        }\
      },\
      "description": {\
        "text": "凍結劍: 30元，停止殺手行動2秒，1耐久。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "購買商品",\
        "color": "gold",\
        "bold": true\
      }\
    }\
  ],\
  "after_action": "none",\
  "pause": false,\
  "exit_action": {\
    "label": "關閉商店",\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "/trigger shopbuy set -1"\
    }\
  },\
  "columns": 3,\
  "actions": [\
    {\
      "label": "治療藥水",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 101"\
      }\
    },\
    {\
      "label": "強威劍",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 102"\
      }\
    },\
    {\
      "label": "急速靴",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 103"\
      }\
    },\
    {\
      "label": "抗退靴",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 104"\
      }\
    },\
    {\
      "label": "凍結劍",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 105"\
      }\
    }\
  ]\
}
