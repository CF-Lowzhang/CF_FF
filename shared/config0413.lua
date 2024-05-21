
AxRadialMenu = {
    KeepInput = true,
    Menus = {
        [1] = {
            shoudclose = false,
            label = "抽籤",
            icon = "fas fa-dice",
            submenu = {
                {
                    shoudclose = true,
                    label = "吉凶抽籤",
                    submenu = false,
                    icon = "fas fa-magic",
                    type = "command",
                    event = "ssiw2"
                },
                {
                    shoudclose = true,
                    label = "六面骰",
                    submenu = false,
                    type = "command",
                    event = "roll",
                    icon = "fas fa-dice-six"
                },
                {
                    shoudclose = true,
                    label = "塔羅牌",
                    submenu = false,
                    type = "command",
                    event = "tarot",
                    icon = "fas fa-bahai"
                },
                {
                    shoudclose = true,
                    label = "猜拳",
                    submenu = false,
                    type = "command",
                    event = "ssiw",
                    icon = "fas fa-american-sign-language-interpreting"
                },
                {
                    shoudclose = true,
                    label = "正反面",
                    submenu = false,
                    type = "command",
                    event = "luckydice",
                    icon = "fab fa-gg-circle"
                },
                {
                    shoudclose = true,
                    label = "撲克牌",
                    submenu = false,
                    type = "command",
                    event = "poker",
                    icon = "fa fa-sign-language"
                },
            }
        },
        [2] = {
            shoudclose = false,
            label = "介面",
            icon = "fas fa-th-large",
            submenu = {
                --[[{
                    shoudclose = false,
                    label = "地圖開關",
                    submenu = false,
                    type = "command",
                    event = "showmap",
                    icon = "fas fa-map"
                },
                {
                    shoudclose = false,
                    label = "狀態開關",
                    submenu = false,
                    type = "command",
                    event = "hud222",
                    icon = "far fa-heart"
                },
                {
                    shoudclose = false,
                    label = "資訊開關",
                    submenu = false,
                    type = "client",
                    event = "oc_hud:hud_set",
                    icon = "fas fa-inbox"
                },]]
                {
                    shoudclose = false,
                    label = "整體開關",
                    submenu = false,
                    type = "command",
                    event = "hud",
                    icon = "fas fa-expand-arrows-alt"
                },
                {
                    shoudclose = false,
                    label = "劇場模式",
                    submenu = false,
                    type = "command",
                    event = "toggleCinematic",
                    icon = "fas fa-camera"
                },
                {
                    shoudclose = false,
                    label = "儀表開關",
                    submenu = false,
                    type = "command",
                    event = "hud_postal",
                    icon = "fas fa-car-side"
                },
                --[[
                {
                    shoudclose = false,
                    label = "房產圖標",
                    submenu = false,
                    type = "command",
                    event = "home_map",
                    icon = "fas fa-map-marker-alt"
                },
                {
                    shoudclose = false,
                    label = "車庫圖標",
                    submenu = false,
                    type = "command",
                    event = "car_map",
                    icon = "fas fa-map-marker-alt"
                },
                {
                    shoudclose = false,
                    label = "採集圖標",
                    submenu = false,
                    type = "command",
                    event = "sut_map",
                    icon = "fas fa-map-marker-alt"
                },
                ]]
                -- {
                --     shoudclose = false,
                --     label = "整體開關",
                --     submenu = false,
                --     type = "command",
                --     event = "hud",
                --     icon = "fas fa-expand-arrows-alt"
                -- },
                {
                    shoudclose = false,
                    label = "活耀視窗",
                    submenu = false,
                    type = "command",
                    event = "toggleChatX 0",
                    icon = "fas fa-terminal"
                },
                {
                    shoudclose = false,
                    label = "顯示視窗",
                    submenu = false,
                    type = "command",
                    event = "toggleChatX 1",
                    icon = "fas fa-terminal"
                },
                {
                    shoudclose = false,
                    label = "關閉視窗",
                    submenu = false,
                    type = "command",
                    event = "toggleChatX 2",
                    icon = "fas fa-terminal"
                },
            }
        },
        [3] = {
            shoudclose = false,
            label = "動作",
            icon = "fab fa-d-and-d",
            submenu = {
                --[[{
                    shoudclose = false,
                    label = "抱人相關",
                    icon = "fas fa-people-carry",
                    submenu = {
                        {
                            shoudclose = false,
                            label = "抱人",
                            submenu = false,
                            type = "command",
                            event = "carry",
                            icon = "fas fa-people-carry"
                        },
                        {
                            shoudclose = false,
                            label = "背人",
                            submenu = false,
                            type = "command",
                            event = "piggyback",
                            icon = "fas fa-people-carry"
                        },
                        {
                            shoudclose = false,
                            label = "公主抱",
                            submenu = false,
                            type = "command",
                            event = "lyftupp",
                            icon = "fas fa-people-carry"
                        },
                        {
                            shoudclose = false,
                            label = "挾持",
                            submenu = false,
                            type = "command",
                            event = "takehostage",
                            icon = "fas fa-people-carry"
                        },
                        {
                            shoudclose = false,
                            label = "拖人",
                            submenu = false,
                            type = "command",
                            event = "drag",
                            icon = "fas fa-people-carry"
                        },
                    }
                },]]
                --[[{
                    shoudclose = false,
                    label = "走路相關",
                    icon = "fas fa-walking",
                    submenu = {
                        {
                            shoudclose = false,
                            label = "正常",
                            submenu = false,
                            type = "command",
                            event = "walk reset",
                            icon = "fas fa-walking"
                        },
                        {
                            shoudclose = false,
                            label = "走路困難",
                            submenu = false,
                            type = "command",
                            event = "walk lester",
                            icon = "fas fa-walking"
                        },
                        {
                            shoudclose = false,
                            label = "慢走",
                            submenu = false,
                            type = "command",
                            event = "walk casual",
                            icon = "fas fa-walking"
                        },
                        {
                            shoudclose = false,
                            label = "外星人",
                            submenu = false,
                            type = "command",
                            event = "walk alien",
                            icon = "fab fa-reddit-alien"
                        },
                        {
                            shoudclose = false,
                            label = "性感",
                            submenu = false,
                            type = "command",
                            event = "walk sexy",
                            icon = "fab fa-themeisle"
                        },
                        {
                            shoudclose = false,
                            label = "硬漢",
                            submenu = false,
                            type = "command",
                            event = "walk tough",
                            icon = "fab fa-the-red-yeti"
                        },
                    }
                },]]
                {
                    shoudclose = false,
                    label = "跳舞相關",
                    icon = "fas fa-theater-masks",
                    submenu = {
                        {
                            shoudclose = false,
                            label = "一般",
                            submenu = false,
                            type = "command",
                            event = "e dance",
                            icon = "fas fa-child"
                        },
                        {
                            shoudclose = false,
                            label = "彩虹馬舞",
                            submenu = false,
                            type = "command",
                            event = "e dancehorse2",
                            icon = "fas fa-horse-head"
                        },
                        {
                            shoudclose = false,
                            label = "螢光棒舞",
                            submenu = false,
                            type = "command",
                            event = "e danceglowstick",
                            icon = "fas fa-grip-lines-vertical"
                        },
                        {
                            shoudclose = false,
                            label = "慢舞",
                            submenu = false,
                            type = "command",
                            event = "e danceslow",
                            icon = "fas fa-crow"
                        },
                        {
                            shoudclose = false,
                            label = "搞笑舞",
                            submenu = false,
                            type = "command",
                            event = "e dancesilly7",
                            icon = "fas fa-candy-cane"
                        },
                        {
                            shoudclose = true,
                            label = "狂舞模式",
                            submenu = false,
                            type = "command",
                            event = "crazydance",
                            icon = "fab fa-phoenix-framework"
                        },
                    }
                },
                {
                    shoudclose = false,
                    label = "坐下與等待",
                    icon = "fas fa-chair",
                    submenu = {
                        {
                            shoudclose = false,
                            label = "坐平地",
                            submenu = false,
                            type = "command",
                            event = "e sit",
                            icon = "fab fa-linux"
                        },
                        {
                            shoudclose = false,
                            label = "坐椅子",
                            submenu = false,
                            type = "command",
                            event = "e sitchair",
                            icon = "fas fa-chair"
                        },
                        {
                            shoudclose = false,
                            label = "坐椅子(翻轉)",
                            submenu = false,
                            type = "command",
                            event = "e sitchair 2",
                            icon = "fas fa-chair"
                        },
                        {
                            shoudclose = false,
                            label = "雙手交叉",
                            submenu = false,
                            type = "command",
                            event = "e crossarms2",
                            icon = "far fa-handshake"
                        },
                        {
                            shoudclose = false,
                            label = "閒置",
                            submenu = false,
                            type = "command",
                            event = "e idle3",
                            icon = "fab fa-pagelines"
                        },
                        {
                            shoudclose = false,
                            label = "等待",
                            submenu = false,
                            type = "command",
                            event = "e wait",
                            icon = "fas fa-seedling"
                        },
                    }
                },
                {
                    shoudclose = false,
                    label = "躺著與娛樂",
                    icon = "fas fa-procedures",
                    submenu = {
                        {
                            shoudclose = false,
                            label = "睡覺",
                            submenu = false,
                            type = "command",
                            event = "e sleep",
                            icon = "fas fa-bed"
                        },
                        {
                            shoudclose = false,
                            label = "躺病床",
                            submenu = false,
                            type = "command",
                            event = "e passout3",
                            icon = "fas fa-bed"
                        },
                        {
                            shoudclose = false,
                            label = "日光浴",
                            submenu = false,
                            type = "command",
                            event = "e sunbathe",
                            icon = "fas fa-sun"
                        },
                        {
                            shoudclose = false,
                            label = "T字形",
                            submenu = false,
                            type = "command",
                            event = "e t",
                            icon = "fab fa-tumblr"
                        },
                        {
                            shoudclose = false,
                            label = "超級英雄",
                            submenu = false,
                            type = "command",
                            event = "e superhero2",
                            icon = "fas fa-snowman"
                        },
                        {
                            shoudclose = false,
                            label = "小丑",
                            submenu = false,
                            type = "command",
                            event = "e clown",
                            icon = "fab fa-wolf-pack-battalion"
                        },
                    }
                },
                {
                    shoudclose = true,
                    label = "跌倒系統",
                    submenu = false,
                    icon = "fab fa-medrt",
                    type = "command",
                    event = "CFS"
                },    
                {
                    shoudclose = true,
                    label = "酒醉跌倒系統",
                    submenu = false,
                    icon = "fas fa-fill-drip",
                    type = "command",
                    event = "DCFS"
                },  
                {
                    shoudclose = false,
                    label = "撐傘",
                    submenu = false,
                    icon = "fas fa-umbrella",
                    type = "command",
                    event = "e umbrella"
                }, 
            }
        },
        [4] = {
            shoudclose = false,
            icon = "fas fa-cogs",
            label = "通用系統",
            submenu = {
                {
                    shoudclose = true,
                    label = "計時器系統",
                    icon = "fas fa-user-clock",
                    submenu = {
                        {
                            shoudclose = false,
                            label = "秒鐘",
                            submenu = false,
                            icon = "fas fa-clock",
                            type = "command",
                            event = "setTimers"
                        },
                        {
                            shoudclose = false,
                            label = "分鐘",
                            submenu = false,
                            icon = "fas fa-clock",
                            type = "command",
                            event = "setTimerm"
                        },
                        {
                            shoudclose = false,
                            label = "小時",
                            submenu = false,
                            icon = "fas fa-clock",
                            type = "command",
                            event = "setTimerh"
                        },
                        {
                            shoudclose = false,
                            label = "清除計時器",
                            submenu = false,
                            icon = "far fa-clock",
                            type = "command",
                            event = "stoptimer"
                        },
                        {
                            shoudclose = false,
                            label = "確認計時器",
                            submenu = false,
                            icon = "far fa-clock",
                            type = "command",
                            event = "checktime"

                        },
                    },
                },
                {
                    shoudclose = true,
                    label = "球類",
                    icon = "fas fa-bowling-ball",
                    submenu = {
                            {
                                shoudclose = true,
                                label = "籃球",
                                submenu = false,
                                icon = "fas fa-basketball-ball",
                                type = "command",
                                event = "basketball"
                            },
                            {
                                shoudclose = true,
                                label = "足球",
                                submenu = false,
                                icon = "fas fa-baseball-ball",
                                type = "command",
                                event = "football"
                            },
                            {
                                shoudclose = true,
                                label = "高爾夫",
                                submenu = false,
                                icon = "fas fa-golf-ball",
                                type = "command",
                                event = "GOLF"
                            },
                            --[[
                            {
                                shoudclose = true,
                                label = "寫紙條",
                                submenu = false,
                                type = "command",
                                event = "notes",
                                icon = "far fa-sticky-note"
                            },
                            {
                                shoudclose = true,
                                label = "寫委託書",
                                submenu = false,
                                type = "command",
                                event = "getnote",
                                icon = "fas fa-clipboard"
                            },
                            {
                                shoudclose = true,
                                label = "寫公文(維修)",
                                submenu = false,
                                type = "command",
                                event = "+opendocument",
                                icon = "fas fa-file-signature"
                            },
                            ]]
                        },
                },
                {   
                    shoudclose = true,
                    label = "健身相關",
                    icon = "fas fa-fist-raised",
                    submenu = {
                                {
                                shoudclose = true,
                                label = "伏地起身",
                                submenu = false,
                                icon = "fas fa-fist-raised",
                                type = "command",
                                event = "gym_pushup"
                                },
                                {
                                shoudclose = true,
                                label = "仰臥起坐",
                                submenu = false,
                                icon = "fas fa-fist-raised",
                                type = "command",
                                event = "gym_situp"
                                },
                                {
                                shoudclose = true,
                                label = "瑜珈",
                                submenu = false,
                                icon = "fas fa-fist-raised",
                                type = "command",
                                event = "gym_yoga"
                                },
                                {
                                shoudclose = true,
                                label = "力量訓練",
                                submenu = false,
                                icon = "fas fa-fist-raised",
                                type = "command",
                                event = "gym_arm"
                                },
                                {
                                shoudclose = true,
                                label = "引體向上",
                                submenu = false,
                                icon = "fas fa-fist-raised",
                                type = "command",
                                event = "gym_chin"
                                },
                                {
                                shoudclose = true,
                                label = "開合跳",
                                submenu = false,
                                icon = "fas fa-fist-raised",
                                type = "command",
                                event = "gym_jumpscale"
                                },
                            },
                },
                {
                    shoudclose = true,
                    label = "圈圈叉叉",
                    submenu = false,
                    icon = "fas fa-tv",
                    type = "command",
                    --event = "hypnonema"
                    event = "TicTac"
                },
                {
                    shoudclose = true,
                    label = "點歌系統",
                    submenu = false,
                    icon = "fas fa-tv",
                    type = "command",
                    --event = "hypnonema"
                    event = "pmms"
                },
                {
                    shoudclose = true,
                    label = "通知系統",
                    icon = "fas fa-exclamation-circle",
                    submenu = {
                        {
                            shoudclose = true,
                            label = "普通(全體)",
                            submenu = false,
                            icon = "fas fa-won-sign",
                            type = "command",
                            event = "not_new"
                        },
                        {    
                            shoudclose = true,
                            label = "廣播(附近)",
                            submenu = false,
                            icon = "fas fa-bullhorn",
                            type = "command",
                            event = "not_relic"
                        },
                        {
                            shoudclose = true,
                            label = "",
                            submenu = false,
                            icon = "",
                            type = "command",
                            event = ""
                        },
                        {
                            shoudclose = true,
                            label = "",
                            submenu = false,
                            icon = "",
                            type = "command",
                            event = ""
                        },
                        {
                            shoudclose = true,
                            label = "",
                            submenu = false,
                            icon = "",
                            type = "command",
                            event = ""
                        },
                        {
                            shoudclose = true,
                            label = "",
                            submenu = false,
                            icon = "",
                            type = "command",
                            event = ""
                        },
                        --[[{
                            shoudclose = true,
                            label = "紅色(全體)",
                            submenu = false,
                            icon = "fas fa-registered",
                            type = "command",
                            event = "not red admin"
                        },
                        {
                            shoudclose = true,
                            label = "綠色(全體)",
                            submenu = false,
                            icon = "fab fa-git-square",
                            type = "command",
                            event = "not green admin"
                        },
                        {
                            shoudclose = true,
                            label = "藍色(全體)",
                            submenu = false,
                            icon = "fab fa-blogger",
                            type = "command",
                            event = "not blue admin"
                        },
                        {
                            shoudclose = true,
                            label = "普通(全體)",
                            submenu = false,
                            icon = "fas fa-won-sign",
                            type = "command",
                            event = "not normal admin"
                        },
                        {
                            shoudclose = true,
                            label = "彩色(全體)",
                            submenu = false,
                            icon = "fas fa-rainbow",
                            type = "command",
                            event = "not rainbow admin"
                        },
                        {    
                            shoudclose = true,
                            label = "廣播(附近)",
                            submenu = false,
                            icon = "fas fa-bullhorn",
                            type = "command",
                            event = "not_relic"
                        },]]
                    },
                },  
            }
        },
        [5] = {
            shoudclose = false,
            label = "特定系統",
            icon = "fas fa-user-cog",
            submenu = {
                {
                    shoudclose = false,
                    label = "特殊指令",
                    icon = "fab fa-wizards-of-the-coast",
                    submenu = {
                            {
                                shoudclose = false,
                                label = "清除文字",
                                submenu = false,
                                type = "command",
                                event = "clearall",
                                icon = "fab fa-soundcloud"
                            },
                            {
                                shoudclose = false,
                                label = "強力清除",
                                submenu = false,
                                type = "command",
                                event = "cleararea",
                                icon = "fas fa-expand"
                            },
                            {
                                shoudclose = false,
                                label = "解卡動作",
                                submenu = false,
                                type = "command",
                                event = "clearanim",
                                icon = "fas fa-street-view"
                            },
                            {
                                shoudclose = false,
                                label = "解卡道具",
                                submenu = false,    
                                type = "command",
                                event = "clearprop",
                                icon = "fas fa-hammer"
                            },
                            --[[
                            {
                                shoudclose = false,
                                label = "顯示給予目標",
                                submenu = false,    
                                type = "command",
                                event = "we_core:toggleRayCast",
                                icon = "fas fa-hammer"
                            }, 
                            ]] 
                            {    
                                shoudclose = false,
                                label = "自我恢復",
                                submenu = false,
                                icon = "fas fa-heartbeat",
                                type = "command",
                                event = "selfheal"
                            },  
                            {    
                                shoudclose = false,
                                label = "自我復活",
                                submenu = false,
                                icon = "fas fa-heartbeat",
                                type = "command",
                                event = "selfrevive"
                            }, 
                        },
                },
                {
                    shoudclose = false,
                    label = "自殺行為",
                    icon = "fas fa-dizzy",
                    submenu = {
                                {
                                    shoudclose = true,
                                    label = "自焚",
                                    submenu = false,
                                    type = "command",
                                    event = "roninfire",
                                    icon = "fab fa-firefox"
                                },
                                {
                                    shoudclose = true,
                                    label = "自盡(舉槍)",
                                    submenu = false,
                                    type = "command",
                                    event = "suicide",
                                    icon = "fas fa-dizzy"
                                },
                                {
                                    shoudclose = true,
                                    label = "自盡(咬舌)",
                                    submenu = false,
                                    type = "command",
                                    event = "selfkill",
                                    icon = "fas fa-head-side-cough-slash"
                                },                    
                               }
                }, 
                --[[{
                shoudclose = false,
                label = "其他相關",
                icon = "fab fa-chrome",
                submenu = {
                            {
                                shoudclose = true,
                                label = "普通合成",
                                submenu = false,
                                icon = "fab fa-chrome",
                                type = "command",
                                event = "craft"
                            }, 
                            {
                                shoudclose = true,
                                label = "背景簡訊",
                                submenu = false,
                                icon = "fab fa-facebook-messenger",
                                type = "command",
                                event = "we_core:vitrualmessage"
                            },   
                        	{
                            shoudclose = false,
                            label = "me",
                            submenu = false,
                            icon = "fab fa-facebook-messenger",
                            type = "command",
                            event = "me_2"
                        	},  
                        	{
                            shoudclose = false,
                            label = "me2",
                            submenu = false,
                            icon = "fab fa-facebook-messenger",
                            type = "command",
                            event = "me2_2"
                        	},  
                        
                            {
                                shoudclose = true,
                                label = "觀看賽道",
                                submenu = false,
                                icon = "fas fa-camera-retro",
                                type = "command",
                                event = "cctv"
                            },   
                            {
                                shoudclose = true,
                                label = "",
                                submenu = false,
                                icon = "",
                                type = "command",
                                event = ""
                            },     
                            {
                                shoudclose = true,
                                label = "",
                                submenu = false,
                                icon = "",
                                type = "command",
                                event = ""
                            },     
                            {
                                shoudclose = true,
                                label = "",
                                submenu = false,
                                icon = "",
                                type = "command",
                                event = ""
                            },     
                            {
                                shoudclose = true,
                                label = "",
                                submenu = false,
                                icon = "",
                                type = "command",
                                event = ""
                            },                    
                           }
                }, ]]
            }
        },
        [6] = {
            shoudclose = true,
            label = "擔架系統",
            icon = "fas fa-cross",
            submenu = {
                {
                    shoudclose = false,
                    label = "拿擔架",
                    submenu = false,
                    icon = "fas fa-hand-holding-medical",
                    type = "command",
                    event = "spawnstr"
                },
                {
                    shoudclose = false,
                    label = "推擔架",
                    submenu = false,
                    icon = "fas fa-hand-rock",
                    type = "command",
                    event = "pushstr"
                },
                {
                    shoudclose = false,
                    label = "躺擔架",
                    submenu = false,
                    icon = "fas fa-bed",
                    type = "command",
                    event = "getintostr"
                },
                {
                    shoudclose = false,
                    label = "移除擔架",
                    submenu = false,
                    icon = "fab fa-uniregistry",
                    type = "command",
                    event = "delstr"
                },
                {
                    shoudclose = false,
                    label = "出入車輛",
                    submenu = false,
                    icon = "fas fa-caravan",
                    type = "command",
                    event = "togglestr"
                },
                {
                    shoudclose = false,
                    label = "打開車門",
                    submenu = false,
                    icon = "fas fa-door-open",
                    type = "command",
                    event = "openbaydoors"
                },
            },
        }
    },
    WorkMenu = {
        ["police"] = {
            {
                shoudclose = false,
                label = "EM Button",
                submenu = false,
                type = "client",
                event = "police:client:SendPoliceEmergencyAlert",
                icon = "fas fa-globe"
            },
            {
                shoudclose = false,
                label = "Tune Status",
                submenu = false,
                type = "client",
                event = "qb-tunerchip:server:TuneStatus",
                icon = "fas fa-key"
            },
            {
                shoudclose = false,
                label = "Reset house lock",
                submenu = false,
                type = "client",
                event = "qb-houses:client:ResetHouse",
                icon = "fas fa-key"
            },
            {
                shoudclose = false,
                label = "Drive License",
                submenu = false,
                type = "client",
                event = "police:client:SeizeDriverLicense",
                icon = "fas fa-car"
            },
            {
                shoudclose = false,
                label = "Police Interaction",
                icon = "fas fa-car",
                submenu = {
                    {
                        shoudclose = false,
                        label = "Soft Cuff",
                        submenu = false,
                        type = "client",
                        event = "police:client:CuffPlayerSoft",
                        icon = "fas fa-handshake-slash"
                    },
                    {
                        shoudclose = false,
                        label = "Hard Cuff",
                        submenu = false,
                        type = "client",
                        event = "police:client:CuffPlayer",
                        icon = "fas fa-handshake-slash"
                    },
                    {
                        shoudclose = false,
                        label = "Escort",
                        submenu = false,
                        type = "client",
                        event = "police:client:EscortPlayer",
                        icon = "fas fa-running"
                    },
                    {
                        shoudclose = false,
                        label = "Search",
                        submenu = false,
                        type = "client",
                        event = "police:client:SearchPlayer",
                        icon = "fas fa-globe"
                    },
                    {
                        shoudclose = false,
                        label = "Jail",
                        submenu = false,
                        type = "client",
                        event = "police:client:JailPlayer",
                        icon = "fas fa-globe"
                    }
                }
            },
            {
                shoudclose = false,
                label = "Objects",
                icon = "fas fa-globe",
                submenu = {
                    {
                        shoudclose = false,
                        label = "Cone",
                        submenu = false,
                        type = "client",
                        event = "police:client:spawnConer",
                        icon = "fas fa-key"
                    },
                    {
                        shoudclose = false,
                        label = "Gate",
                        submenu = false,
                        type = "client",
                        event = "police:client:spawnBarier",
                        icon = "fas fa-key"
                    },
                    {
                        shoudclose = false,
                        label = "Tent",
                        submenu = false,
                        type = "client",
                        event = "police:client:spawnTent",
                        icon = "fas fa-key"
                    },
                    {
                        shoudclose = false,
                        label = "Spike",
                        submenu = false,
                        type = "client",
                        event = "police:client:SpawnSpikeStrip",
                        icon = "fas fa-key"
                    },
                    {
                        shoudclose = false,
                        label = "Remove",
                        submenu = false,
                        type = "client",
                        event = "police:client:deleteObject",
                        icon = "fas fa-key"
                    }
                }
            }
        },
        ["ems"] = {
            {
                shoudclose = false,
                label = "Check Person",
                submenu = false,
                type = "client",
                event = "hospital:client:CheckStatus",
                icon = "fas fa-globe"
            },
            {
                shoudclose = false,
                label = "Heal Wounds",
                submenu = false,
                type = "client",
                event = "hospital:client:TreatWounds",
                icon = "fas fa-globe"
            },
            {
                shoudclose = false,
                label = "Revive",
                submenu = false,
                type = "client",
                event = "hospital:client:RevivePlayer",
                icon = "fas fa-globe"
            },
            {
                shoudclose = false,
                label = "EM Button",
                submenu = false,
                type = "client",
                event = "police:client:SendPoliceEmergencyAlert",
                icon = "fas fa-globe"
            },
            {
                shoudclose = false,
                label = "Escort",
                submenu = false,
                type = "client",
                event = "police:client:EscortPlayer",
                icon = "fas fa-globe"
            }
        }
    }
}