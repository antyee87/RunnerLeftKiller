$dialog show @s \
{\
  "type": "minecraft:multi_action",\
  "title": [\
    {\
      "text": "殺手商店"\
    }\
  ],\
  "external_title": "",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "text": "持有貨幣(箭矢): ",\
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
            "potion": "minecraft:strong_swiftness"\
          }\
        }\
      },\
      "description": {\
        "text": "加速藥水: 20元，90秒加速II。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:golden_boots",\
        "components": {\
          "minecraft:damage":88,\
          "minecraft:custom_name":[{"text":""},{"text":"抗退之靴","color":"gold","bold":true}],\
          "minecraft:lore":["怒火爆氣","果敢前行。"],\
          "minecraft:attribute_modifiers":[{type:"knockback_resistance",slot:"feet",amount:100,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]\
        }\
      },\
      "description": {\
        "text": "抗退靴: 30元，不被擊退，5耐久。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:netherite_sword",\
        "components": {\
          "minecraft:damage":2030,\
          "minecraft:enchantments":{"minecraft:sharpness":255},\
          "minecraft:custom_name":[{"text":""},{"text":"殺戮劍","color":"gold","bold":true}],\
          "minecraft:lore":["逃亡必死","情劍難留。"]\
        }\
      },\
      "description": {\
        "text": "殺戮劍: 50元，鋒利1000，1耐久。",\
        "color": "aqua"\
      }\
    },\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:bow",\
        "components": {\
          "minecraft:damage":384,\
          "minecraft:enchantments":{"minecraft:power":3},\
          "minecraft:custom_name":[{"text":""},{"text":"殺手之弓","color":"gold","bold":true}],\
          "minecraft:lore":["怒火爆氣","殲滅前敵。"]\
        }\
      },\
      "description": {\
        "text": "殺手之弓: 50元，附贈箭矢，1耐久",\
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
  "columns": 2,\
  "actions": [\
    {\
      "label": "加速藥水",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 2"\
      }\
    },\
    {\
      "label": "抗退靴",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 3"\
      }\
    },\
    {\
      "label": "殺戮劍",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 4"\
      }\
    },\
    {\
      "label": "殺手之弓",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "/trigger shopbuy set 5"\
      }\
    },\
  ]\
}