----------------------------------------------------------------------------------
-- Total RP 3
-- Simplified Chinese locale
--	---------------------------------------------------------------------------
--	Copyright 2014 Sylvain Cossement (telkostrasz@telkostrasz.be)
--
--	Licensed under the Apache License, Version 2.0 (the "License");
--	you may not use this file except in compliance with the License.
--	You may obtain a copy of the License at
--
--		http://www.apache.org/licenses/LICENSE-2.0
--
--	Unless required by applicable law or agreed to in writing, software
--	distributed under the License is distributed on an "AS IS" BASIS,
--	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--	See the License for the specific language governing permissions and
--	limitations under the License.
----------------------------------------------------------------------------------

-- "Chinese" to "Simplified Chinese" - Paul Corlay

local LOCALE = {
	locale = "zhCN",
	localeText = "Simplified Chinese",
    localeContent =
{
	["ABOUT_TITLE"] = "关于",
	["BINDING_NAME_TRP3_TOGGLE"] = "教学主界面",
	["BINDING_NAME_TRP3_TOOLBAR_TOGGLE"] = "教学工具栏",
	["BW_COLOR_CODE"] = "颜色代码",
	["BW_COLOR_CODE_ALERT"] = "错误的十六进制代码！",
	["BW_COLOR_CODE_TT"] = "你可以在这里粘贴6个十六进制颜色代码并按Enter键.",
	["CM_ACTIONS"] = "动作",
	["CM_APPLY"] = "应用",
	["CM_CANCEL"] = "取消",
	["CM_CENTER"] = "中央",
	["CM_CLASS_DEATHKNIGHT"] = "死亡骑士",
	["CM_CLASS_DRUID"] = "德鲁伊",
	["CM_CLASS_HUNTER"] = "猎人",
	["CM_CLASS_MAGE"] = "法师",
	["CM_CLASS_MONK"] = "武僧",
	["CM_CLASS_PALADIN"] = "圣骑士",
	["CM_CLASS_PRIEST"] = "Priest",
	["CM_CLASS_ROGUE"] = "潜行者",
	["CM_CLASS_SHAMAN"] = "萨满",
	["CM_CLASS_UNKNOWN"] = "未知",
	["CM_CLASS_WARLOCK"] = "术士",
	["CM_CLASS_WARRIOR"] = "战士",
	["CM_CLICK"] = "点击",
	["CM_COLOR"] = "颜色",
	["CM_CTRL"] = "Ctrl键",
	["CM_DOUBLECLICK"] = "双击",
	["CM_DRAGDROP"] = "拖放",
	["CM_EDIT"] = "编辑",
	["CM_IC"] = "扮演中(IC)",
	["CM_ICON"] = "图标",
	["CM_IMAGE"] = "图片",
	["CM_L_CLICK"] = "鼠标左键点击",
	["CM_LEFT"] = "左边",
	["CM_LINK"] = "链接",
	["CM_LOAD"] = "读取",
	["CM_MOVE_DOWN"] = "下移",
	["CM_MOVE_UP"] = "上移",
	["CM_NAME"] = "名字",
	["CM_OOC"] = "非扮演中(OOC)",
	["CM_OPEN"] = "打开",
	["CM_PLAY"] = "播放",
	["CM_R_CLICK"] = "鼠标右键点击",
	["CM_REMOVE"] = "移动",
	["CM_RESIZE"] = "调整尺寸",
	["CM_RESIZE_TT"] = "拖动调整帧的大小.",
	["CM_RIGHT"] = "右边",
	["CM_SAVE"] = "保存",
	["CM_SELECT"] = "选择",
	["CM_SHIFT"] = "Shift键",
	["CM_SHOW"] = "显示",
	["CM_STOP"] = "停止",
	["CM_TWEET"] = "发送一条微博",
	["CM_TWEET_PROFILE"] = "显示配置文件的url",
	["CM_UNKNOWN"] = "未知",
	["CM_VALUE"] = "值",
	["CO_ANCHOR_BOTTOM"] = "下方",
	["CO_ANCHOR_BOTTOM_LEFT"] = "左下方",
	["CO_ANCHOR_BOTTOM_RIGHT"] = "右下方",
	["CO_ANCHOR_LEFT"] = "左边",
	["CO_ANCHOR_RIGHT"] = "右边",
	["CO_ANCHOR_TOP"] = "上方",
	["CO_ANCHOR_TOP_LEFT"] = "左上方",
	["CO_ANCHOR_TOP_RIGHT"] = "右上方",
	["CO_CHAT"] = "聊天设置",
	["CO_CHAT_INCREASE_CONTRAST"] = "增加颜色对比",
	["CO_CHAT_INSERT_FULL_RP_NAME"] = "插入 RP 名 使用 shift-click",
	["CO_CHAT_MAIN"] = "聊天主设置",
	["CO_CHAT_MAIN_COLOR"] = "名字使用自定义颜色",
	["CO_CHAT_MAIN_EMOTE"] = "表情检测",
	["CO_CHAT_MAIN_EMOTE_PATTERN"] = "表情检测模式",
	["CO_CHAT_MAIN_EMOTE_USE"] = "使用表情检测",
	["CO_CHAT_MAIN_EMOTE_YELL"] = "不允许喊叫表情",
	["CO_CHAT_MAIN_EMOTE_YELL_TT"] = "不在喊叫时显示*表情*或<表情>",
	["CO_CHAT_MAIN_NAMING"] = "命名方法",
	["CO_CHAT_MAIN_NAMING_1"] = "使用原名",
	["CO_CHAT_MAIN_NAMING_2"] = "使用自定义名称",
	["CO_CHAT_MAIN_NAMING_3"] = "名 + 姓",
	["CO_CHAT_MAIN_NAMING_4"] = "简称/代号 + 名 + 名",
	["CO_CHAT_MAIN_NPC"] = "NPC 说话检测",
	["CO_CHAT_MAIN_NPC_PREFIX"] = "NPC 说话检测模式",
	["CO_CHAT_MAIN_NPC_PREFIX_TT"] = "如果在说、表情、小队或团队频道的话有这个前缀，它会被认为是NPC谈话。默认：\"|| \"（请去掉“但是保留||后面的空格）",
	["CO_CHAT_MAIN_NPC_USE"] = "使用 NPC 说话检测",
	["CO_CHAT_MAIN_OOC"] = "OOC 监测",
	["CO_CHAT_MAIN_OOC_COLOR"] = "OOC 颜色",
	["CO_CHAT_MAIN_OOC_PATTERN"] = "OOC 监测方式",
	["CO_CHAT_MAIN_OOC_USE"] = "开启OOC监测",
	["CO_CHAT_REMOVE_REALM"] = "从域中移除角色",
	["CO_CHAT_USE"] = "在频道中显示",
	["CO_CHAT_USE_ICONS"] = "显示玩家图标",
	["CO_CHAT_USE_SAY"] = "在频道路说",
	["CO_CONFIGURATION"] = "设置",
	["CO_GENERAL"] = "常规设置",
	["CO_GENERAL_BROADCAST"] = "使用广播频道",
	["CO_GENERAL_BROADCAST_C"] = "广播频道名",
	["CO_GENERAL_CHANGELOCALE_ALERT"] = [=[是否现在重新加载以改变界面语言为%s？

 如果选择不重新加载，界面语言将在下次登录时改变。]=],
	["CO_GENERAL_COM"] = " 沟通",
	["CO_GENERAL_HEAVY"] = "警告：文件太多.",
	["CO_GENERAL_HEAVY_TT"] = "当您的文件的总大小超过一个合理的值时，会发出警告.",
	["CO_GENERAL_LOCALE"] = "插件语言环境",
	["CO_GENERAL_MISC"] = "其他",
	["CO_GENERAL_NEW_VERSION"] = "更新提醒",
	["CO_GENERAL_NEW_VERSION_TT"] = "当有新版本可用时，请发出警告.",
	["CO_GENERAL_TT_SIZE"] = "信息提示文本大小",
	["CO_GENERAL_UI_ANIMATIONS"] = "UI 动画",
	["CO_GENERAL_UI_ANIMATIONS_TT"] = "激活界面动画.",
	["CO_GENERAL_UI_SOUNDS"] = "UI 声音",
	["CO_GENERAL_UI_SOUNDS_TT"] = "激活用户界面声音(打开窗口，切换选项卡，点击按钮).",
	["CO_GLANCE_LOCK"] = "锁定栏",
	["CO_GLANCE_LOCK_TT"] = "防止栏被拖动",
	["CO_GLANCE_MAIN"] = "\"第一印象\" 条",
	["CO_LOCATION"] = "定位设置",
	["CO_LOCATION_ACTIVATE"] = "使用角色位置",
	["CO_LOCATION_DISABLE_OOC"] = "当OOC时，禁用角色位置",
	["CO_LOCATION_DISABLE_PVP"] = "PVP插旗时，禁用角色位置",
	["CO_MAP_BUTTON"] = "地图搜索按钮",
	["CO_MAP_BUTTON_POS"] = "搜索按钮在地图上位置",
	["CO_MINIMAP_BUTTON"] = "小地图按钮",
	["CO_MINIMAP_BUTTON_FRAME"] = "框架锚点",
	["CO_MINIMAP_BUTTON_RESET"] = "重置位置",
	["CO_MINIMAP_BUTTON_RESET_BUTTON"] = "重置",
	["CO_MINIMAP_BUTTON_SHOW_TITLE"] = "显示小地图按钮",
	["CO_MODULES"] = "模块状态",
	["CO_MODULES_DISABLE"] = "禁用 模块",
	["CO_MODULES_ENABLE"] = "启用 模块",
	["CO_MODULES_ID"] = "Module ID: %s",
	["CO_MODULES_SHOWERROR"] = "显示错误",
	["CO_MODULES_STATUS"] = "Status: %s",
	["CO_MODULES_STATUS_0"] = "缺少的依赖关系",
	["CO_MODULES_STATUS_1"] = "已载入",
	["CO_MODULES_STATUS_2"] = "禁用",
	["CO_MODULES_STATUS_4"] = "初始化错误",
	["CO_MODULES_STATUS_5"] = "在启动时的错误",
	["CO_MODULES_VERSION"] = "版本: %s",
	["CO_MSP"] = "玛丽苏的协议",
	["CO_MSP_T3"] = "只能使用3个模板",
	["CO_REGISTER"] = "登记设置",
	["CO_REGISTER_ABOUT_VOTE"] = "使用投票系统",
	["CO_REGISTER_AUTO_ADD"] = "自动添加新玩家",
	["CO_REGISTER_AUTO_PURGE"] = "自动删除玩家目录",
	["CO_REGISTER_AUTO_PURGE_1"] = "在 %s 天后",
	["CO_TARGETFRAME_ICON_SIZE"] = "图标尺寸",
	["CO_TARGETFRAME_USE"] = "显示条件",
	["CO_TARGETFRAME_USE_1"] = "总是",
	["CO_TARGETFRAME_USE_2"] = "只有当在 IC",
	["CO_TARGETFRAME_USE_3"] = "从不 (无效的)",
	["CO_TOOLBAR"] = "框架设置",
	["CO_TOOLBAR_CONTENT"] = "工具栏设置",
	["CO_TOOLBAR_CONTENT_RPSTATUS"] = "角色状态 (IC/OOC)",
	["CO_TOOLBAR_CONTENT_STATUS"] = "玩家状态 (AFK/DND)",
	["CO_TOOLBAR_ICON_SIZE"] = "图标设置",
	["CO_TOOLBAR_MAX"] = "每一行最多图标",
	["CO_TOOLBAR_SHOW_ON_LOGIN"] = "在登录时显示工具栏",
	["CO_TOOLTIP"] = "工具设置",
	["CO_TOOLTIP_COLOR"] = "显示自定义颜色",
	["CO_TOOLTIP_COMBAT"] = "战斗时隐藏",
	["CO_TOOLTIP_CONTRAST"] = "增加颜色对比",
	["CO_TOOLTIP_USE"] = "使用字符/同伴工具提示",
	["COM_LIST"] = "命令列表：",
	["COM_RESET_RESET"] = "界面位置已经被重置！",
	["COM_RESET_USAGE"] = "通途：重置帧数。",
	["COM_STASH_DATA"] = [=[|cffff0000你确定你想要隐藏你的 Total RP 3 数据?|r

你的个人资料、伙伴档案和设置会暂时被隐藏起来，你的UI会重新载入空数据，就像你安装总RP 3是全新的一样。
|cff00ff00U再次使用相同命令 (|cff999999/trp3 stash|cff00ff00) 恢复您的数据.|r]=],
	["COM_SWITCH_USAGE"] = "用途：重置帧数或者转换工具栏。",
	["DB_ABOUT"] = "关于 Total RP 3",
	["DB_HTML_GOTO"] = "单击打开",
	["DB_MORE"] = "更多模组",
	["DB_NEW"] = "更新了什么?",
	["DB_STATUS"] = "状态",
	["DB_STATUS_CURRENTLY"] = "当前 (IC)",
	["DB_STATUS_CURRENTLY_OOC"] = "其它信息 (OOC)",
	["DB_STATUS_RP"] = "角色状态",
	["DB_STATUS_RP_EXP"] = "严谨RP玩家",
	["DB_STATUS_RP_IC"] = "在RP",
	["DB_STATUS_RP_OOC"] = "OOC，不在RP",
	["DB_STATUS_RP_VOLUNTEER"] = "RP玩家志愿者",
	["DB_STATUS_XP"] = "玩家状态",
	["DB_STATUS_XP_BEGINNER"] = "RP新人",
	["DTBK_AFK"] = "Total RP 3 - AFK/DND",
	["DTBK_CLOAK"] = "Total RP 3 - Cloak",
	["DTBK_HELMET"] = "Total RP 3 - Helmet",
	["DTBK_LANGUAGES"] = "Total RP 3 - 语言",
	["DTBK_RP"] = "Total RP 3 - IC/OOC",
	["GEN_VERSION"] = "版本: %s (Build %s)",
	["GEN_WELCOME_MESSAGE"] = "感谢使用 Total RP 3 (v %s) ! Have fun !",
	["MAP_BUTTON_NO_SCAN"] = "没有搜到",
	["MAP_BUTTON_SCANNING"] = "搜索",
	["MAP_BUTTON_SUBTITLE"] = "点击显示合适的搜索",
	["MAP_BUTTON_TITLE"] = "搜索RP",
	["MAP_SCAN_CHAR"] = "搜索角色",
	["MAP_SCAN_CHAR_TITLE"] = "角色",
	["MATURE_FILTER_EDIT_DICTIONARY"] = "编辑关键字库",
	["MATURE_FILTER_EDIT_DICTIONARY_BUTTON"] = "编辑",
	["MATURE_FILTER_EDIT_DICTIONARY_TITLE"] = "自定义字典编辑器",
	["MATURE_FILTER_OPTION"] = "启动关键字过滤",
	["MATURE_FILTER_TITLE"] = "关键字过滤",
	["MATURE_FILTER_WARNING_CONTINUE"] = "继续",
	["MATURE_FILTER_WARNING_GO_BACK"] = "返回",
	["MM_SHOW_HIDE_MAIN"] = "显示/隐藏的主要框架",
	["MM_SHOW_HIDE_MOVE"] = "移动按钮",
	["MM_SHOW_HIDE_SHORTCUT"] = "显示/隐藏工具栏",
	["MORE_MODULES_2"] = [=[{h2:c}Optional modules{/h2}
{h3}Total RP 3: Extended{/h3}
|cff9999ffTotal RP 3: Extended|r add the possibility to create new content in WoW: campaigns with quests and dialogues, items, documents (books, signs, contracts, …) and many more!
Total RP3扩展包 包括任务 对话 物品 文档等
{link*http://extended.totalrp3.info*Download on Curse.com}

{h3}Kui |cff9966ffNameplates|r module{/h3}
The Kui |cff9966ffNameplates|r module adds several Total RP 3 customizations to the KuiNameplates add-on:
显示RP角色职业颜色是自定义颜色，而不是本身职业颜色（可以让法师看上去像战士……建议禁用）
显示定制宠物名
隐藏非RP玩家名字（关人物名不就行了吗？？）
• See the full RP name of a character on their nameplate, instead of their default name, colored like in their tooltip.
• See customized pets names.
• Hide the names of players without an RP profile!
{link*http://mods.curse.com/addons/wow/total-rp-3-kuinameplates-module*Download on Curse.com}.


]=],
	["NPC_TALK_BUTTON_TT"] = "打开 NPC 发言界面 允许你让 NPC 说话或做表情.",
	["NPC_TALK_CHANNEL"] = "频道: ",
	["NPC_TALK_COMMAND_HELP"] = "打开 NPC 发言界面.",
	["NPC_TALK_ERROR_EMPTY_MESSAGE"] = "消息不能为空.",
	["NPC_TALK_MESSAGE"] = "消息",
	["NPC_TALK_NAME"] = "NPC 名字",
	["NPC_TALK_NAME_TT"] = [=[你可以使用像 %t 这样的标准聊天标签插入你的目标名或 %f 来插入你的焦点的名字.

您还可以在不使用NPC名字的情况下，将这个字段清空以创建表情。
]=],
	["NPC_TALK_SAY_PATTERN"] = "说:",
	["NPC_TALK_SEND"] = "发送",
	["NPC_TALK_TITLE"] = "NPC 发言",
	["NPC_TALK_WHISPER_PATTERN"] = "悄悄说：",
	["NPC_TALK_YELL_PATTERN"] = "喊:",
	["PR_CO_BATTLE"] = "战斗宠物",
	["PR_CO_MOUNT"] = "坐骑",
	["PR_CO_PET"] = "宠物",
	["PR_CO_PROFILEMANAGER_TITLE"] = "同伴档案",
	["PR_CREATE_PROFILE"] = "创建一个伙伴",
	["PR_PROFILE"] = "个人档案",
	["PR_PROFILE_CREATED"] = "档案 %s 建立.",
	["PR_PROFILE_DELETED"] = "档案 %s 删除.",
	["PR_PROFILEMANAGER_TITLE"] = "所有角色档案",
	["PR_PROFILES"] = "个人档案",
	["REG_COMPANION"] = "同伴",
	["REG_COMPANION_BOUND_TO"] = "绑定到 ...",
	["REG_COMPANION_BOUND_TO_TARGET"] = "目标",
	["REG_COMPANION_BOUNDS"] = "绑定",
	["REG_COMPANION_BROWSER_BATTLE"] = "浏览战斗宠物",
	["REG_COMPANION_BROWSER_MOUNT"] = "坐骑浏览",
	["REG_COMPANION_INFO"] = "信息",
	["REG_COMPANION_NAME"] = "名字",
	["REG_COMPANION_NAME_COLOR"] = "名字颜色",
	["REG_COMPANION_PROFILES"] = "同伴配置文件",
	["REG_COMPANION_TARGET_NO"] = "你的目标不是一个有效的宠物，小宠物，狗狗，法师元素或者一个重命名的战斗宠物.",
	["REG_COMPANION_TF_BOUND_TO"] = "选择一个档案",
	["REG_COMPANION_TF_CREATE"] = "创建一个档案",
	["REG_COMPANION_TF_NO"] = "没有资料",
	["REG_COMPANION_TF_OPEN"] = "打开页面",
	["REG_COMPANION_TF_OWNER"] = "所有者: %s",
	["REG_COMPANION_TF_PROFILE"] = "同伴资料",
	["REG_COMPANION_TF_PROFILE_MOUNT"] = "坐骑资料",
	["REG_COMPANION_TF_UNBOUND"] = "从配置文件分离",
	["REG_COMPANION_TITLE"] = "标题",
	["REG_COMPANIONS"] = "同伴",
	["REG_DELETE_WARNING"] = [=[你确定你要删除这个 %s's 描述?
]=],
	["REG_IGNORE_TOAST"] = "忽略的特征",
	["REG_LIST_ACTIONS_MASS_REMOVE"] = "删除配置文件",
	["REG_LIST_ACTIONS_PURGE"] = "清除注册",
	["REG_LIST_ACTIONS_PURGE_ALL"] = "删除所有档案",
	["REG_LIST_ACTIONS_PURGE_ALL_C"] = [=[这将从目录中删除所有档案和角色链接.

|cff00ff00%s .]=],
	["REG_LIST_ACTIONS_PURGE_ALL_COMP_C"] = [=[这将删除目录中所有同伴.

|cff00ff00%s 同伴.]=],
	["REG_LIST_ACTIONS_PURGE_COUNT"] = "%s 配置文件将被删除.",
	["REG_LIST_ACTIONS_PURGE_EMPTY"] = "没有配置文件被清除.",
	["REG_LIST_ACTIONS_PURGE_IGNORE"] = "忽略角色的配置文件",
	["REG_LIST_ACTIONS_PURGE_IGNORE_C"] = [=[这将清除所有被忽略的魔兽世界的角色档案.

|cff00ff00%s]=],
	["REG_LIST_ACTIONS_PURGE_TIME"] = "超过一个月没见的档案",
	["REG_LIST_ACTIONS_PURGE_TIME_C"] = [=[这个清除将移除所有一个月未见的档案

|cff00ff00%s]=],
	["REG_LIST_ACTIONS_PURGE_UNLINKED"] = "配置文件和角色不匹配.",
	["REG_LIST_ACTIONS_PURGE_UNLINKED_C"] = [=[这个清除将删除所有没有绑定到魔兽世界的角色档案.

|cff00ff00%s]=],
	["REG_LIST_ADDON"] = "档案种类",
	["REG_LIST_CHAR_EMPTY"] = "没有角色",
	["REG_LIST_CHAR_EMPTY2"] = "没有匹配的角色",
	["REG_LIST_CHAR_FILTER"] = "角色: %s / %s",
	["REG_LIST_CHAR_IGNORED"] = "忽略",
	["REG_LIST_CHAR_SEL"] = "选择一个角色",
	["REG_LIST_CHAR_TITLE"] = "角色列表",
	["REG_LIST_CHAR_TT"] = "点击页面显示",
	["REG_LIST_CHAR_TT_CHAR"] = "绑定wow里的角色(s):",
	["REG_LIST_CHAR_TT_CHAR_NO"] = "没有绑定任何角色",
	["REG_LIST_CHAR_TT_DATE"] = [=[上一次看到的日期: |cff00ff00%s|r
上一次看到的位置: |cff00ff00%s|r]=],
	["REG_LIST_CHAR_TT_GLANCE"] = "第一印象",
	["REG_LIST_CHAR_TT_IGNORE"] = "忽略的角色(s)",
	["REG_LIST_CHAR_TT_NEW_ABOUT"] = "未读的描述",
	["REG_LIST_CHAR_TT_RELATION"] = [=[关系:
|cff00ff00%s]=],
	["REG_LIST_FILTERS"] = "过滤",
	["REG_LIST_FILTERS_TT"] = [=[|cffffff00左击:|r 应用过滤器
|cffffff00右击:|r 清除过滤器]=],
	["REG_LIST_FLAGS"] = "标记",
	["REG_LIST_GUILD"] = "角色公会",
	["REG_LIST_IGNORE_EMPTY"] = "没有忽略字符",
	["REG_LIST_IGNORE_TITLE"] = "忽略列表",
	["REG_LIST_IGNORE_TT"] = [=[理由:
|cff00ff00%s

|cffffff00单击从忽略列表中删除]=],
	["REG_LIST_NAME"] = "角色名",
	["REG_LIST_NOTIF_ADD"] = "新档案被发现 |cff00ff00%s",
	["REG_LIST_NOTIF_ADD_CONFIG"] = "新档案被发现",
	["REG_LIST_NOTIF_ADD_NOT"] = "这个档案已经不存在了.",
	["REG_LIST_PET_MASTER"] = "主人名字",
	["REG_LIST_PET_NAME"] = "同伴的名字",
	["REG_LIST_PET_TYPE"] = "同伴的种类",
	["REG_LIST_PETS_EMPTY"] = "没有同伴",
	["REG_LIST_PETS_EMPTY2"] = "没有匹配的同伴",
	["REG_LIST_PETS_FILTER"] = "同伴: %s / %s",
	["REG_LIST_PETS_TITLE"] = "同伴列表",
	["REG_LIST_PETS_TOOLTIP"] = "已经被发现",
	["REG_LIST_PETS_TOOLTIP2"] = "已经被发现",
	["REG_LIST_REALMONLY"] = "仅限范围之内",
	["REG_MSP_ALERT"] = [=[|cffff0000警告

You can't have simultaneously more than one addon using the Mary Sue Protocol, as they would be in conflict.|r

Currently loaded: |cff00ff00%s

|cffff9900Therefore the MSP support for Total RP3 will be disabled.|r

If you don't want TRP3 to be your MSP addon and don't want to see this alert again, you can disable the Mary Sue Protocol module in the TRP3 Settings -> Module status.]=],
	["REG_PLAYER"] = "角色",
	["REG_PLAYER_ABOUT"] = "关于",
	["REG_PLAYER_ABOUT_ADD_FRAME"] = "添加一个框架",
	["REG_PLAYER_ABOUT_EMPTY"] = "没有说明",
	["REG_PLAYER_ABOUT_HEADER"] = "页面标签",
	["REG_PLAYER_ABOUT_MUSIC"] = "角色主题",
	["REG_PLAYER_ABOUT_MUSIC_LISTEN"] = "开始主题",
	["REG_PLAYER_ABOUT_MUSIC_REMOVE"] = "取消主题",
	["REG_PLAYER_ABOUT_MUSIC_SELECT"] = "选择角色主题",
	["REG_PLAYER_ABOUT_MUSIC_SELECT2"] = "选择主题",
	["REG_PLAYER_ABOUT_MUSIC_STOP"] = "停止主题",
	["REG_PLAYER_ABOUT_NOMUSIC"] = "|cffff9900没有主题",
	["REG_PLAYER_ABOUT_P"] = "段落标记",
	["REG_PLAYER_ABOUT_REMOVE_FRAME"] = "删除这个框架",
	["REG_PLAYER_ABOUT_SOME"] = "一些文字 ...",
	["REG_PLAYER_ABOUT_T1_YOURTEXT"] = "您在此处输入的文字",
	["REG_PLAYER_ABOUT_TAGS"] = "格式化工具",
	["REG_PLAYER_ABOUT_UNMUSIC"] = "|cffff9900未知主题",
	["REG_PLAYER_ABOUT_VOTE_DOWN"] = "我不喜欢这个内容",
	["REG_PLAYER_ABOUT_VOTE_NO"] = [=[网上没有任何与此档案相关的人物.
你想强制在 Total RP 3 投票决定你的投票结果吗 ?]=],
	["REG_PLAYER_ABOUT_VOTE_SENDING"] = "正在发送你的投票 %s ...",
	["REG_PLAYER_ABOUT_VOTE_SENDING_OK"] = "你的投票已经被送到了 %s !",
	["REG_PLAYER_ABOUT_VOTE_TT"] = "你的投票完全是匿名的，只有这个玩家才能看到.",
	["REG_PLAYER_ABOUT_VOTE_TT2"] = "只有这个玩家在线时才可以投票.",
	["REG_PLAYER_ABOUT_VOTE_UP"] = "我喜欢这个内容",
	["REG_PLAYER_ABOUT_VOTES"] = "统计资料",
	["REG_PLAYER_ABOUT_VOTES_R"] = [=[|cff00ff00%s 喜欢这个内容
|cffff0000%s 不喜欢这个内容]=],
	["REG_PLAYER_ABOUTS"] = "关于 %s",
	["REG_PLAYER_ADD_NEW"] = "创建新的",
	["REG_PLAYER_AGE"] = "年龄",
	["REG_PLAYER_AGE_TT"] = [=[在这里你可以指出你的角色有多老.

有几种方法可以做到这一点:|c0000ff00
- 要么使用年份,
- 或形容词(年轻、成熟、成熟、可敬等)。]=],
	["REG_PLAYER_ALERT_HEAVY_SMALL"] = [=[|cffff0000T你的个人资料的总规模相当大.
|cffff9900你应该减少它.]=],
	["REG_PLAYER_BIRTHPLACE"] = "出生地",
	["REG_PLAYER_BIRTHPLACE_TT"] = [=[在这里你可以指出你角色的出生地. 这可以是一个区域，一个区域，甚至是一个大洲. 你可以决定你想要多精确.

|c00ffff00你可以使用这个按钮来方便地设置你当前的位置为出生地.]=],
	["REG_PLAYER_BKG"] = "布置背景",
	["REG_PLAYER_CARACT"] = "特征",
	["REG_PLAYER_CHANGE_CONFIRM"] = [=[您可能有未保存的数据更改.
你想改变页面吗?
|cffff9900任何更改都将丢失.]=],
	["REG_PLAYER_CHARACTERISTICS"] = "特征",
	["REG_PLAYER_CLASS"] = "阶级",
	["REG_PLAYER_CLASS_TT"] = [=[T这是您的角色的自定义类.

|cff00ff00比如 :|r
骑士, 烟火, 死灵法师, 游侠, 秘术师 ...]=],
	["REG_PLAYER_COLOR_CLASS"] = "阶级颜色ABOUT_TITLE",
	["REG_PLAYER_COLOR_CLASS_TT"] = [=[这也决定了名字的颜色.

]=],
	["REG_PLAYER_COLOR_TT"] = [=[|cffffff00Click:|r 选择一种颜色
|cffffff00Right-click:|r 改变颜色]=],
	["REG_PLAYER_CURRENT"] = "目前",
	["REG_PLAYER_CURRENT_OOC"] = "这是一个 OOC 信息",
	["REG_PLAYER_CURRENTOOC"] = "目前 (OOC)",
	["REG_PLAYER_EYE"] = "眼睛颜色",
	["REG_PLAYER_EYE_TT"] = [=[在这里，你可以看到你的眼睛的颜色。

Keep 记住，即使你的角色的脸总是被隐藏起来，这可能还是值得一提的，以防万一。]=],
	["REG_PLAYER_FIRSTNAME"] = "名",
	["REG_PLAYER_FIRSTNAME_TT"] = [=[这是你角色的名. 强制使用, so if you don't specify a name, the default character's name (|cffffff00%s|r) will be used.

You can use a |c0000ff00nickname |r!]=],
	["REG_PLAYER_FULLTITLE"] = "全称",
	["REG_PLAYER_FULLTITLE_TT"] = "在你写下你的角色的全名之前。它可以是一个更长的版本，也可以是另一个标题。但是，你可能想避免重复，以免没有额外的信息。",
	["REG_PLAYER_GLANCE"] = "第一印象",
	["REG_PLAYER_GLANCE_BAR_DELETED"] = "组预设 |cffff9900%s|r 被删除.",
	["REG_PLAYER_GLANCE_BAR_EMPTY"] = "预设名不能是空的.",
	["REG_PLAYER_GLANCE_BAR_LOAD"] = "组预设",
	["REG_PLAYER_GLANCE_BAR_LOAD_SAVE"] = "组预设",
	["REG_PLAYER_GLANCE_BAR_NAME"] = [=[请输入预设名.

|cff00ff00注意:如果该名称已经被另一个组预先设置，那么另一个组将被替换.]=],
	["REG_PLAYER_GLANCE_BAR_SAVE"] = "保存组预设",
	["REG_PLAYER_GLANCE_BAR_SAVED"] = "组预设 |cff00ff00%s|r 被创建.",
	["REG_PLAYER_GLANCE_BAR_TARGET"] = "\"第一印象\" 预设",
	["REG_PLAYER_GLANCE_EDITOR"] = "印象 编辑 : 槽 %s",
	["REG_PLAYER_GLANCE_PRESET"] = "读取一个预设",
	["REG_PLAYER_GLANCE_PRESET_ADD"] = "创建预设 |cff00ff00%s|r.",
	["REG_PLAYER_GLANCE_PRESET_ALERT1"] = "你必须进入一个预设的类别.",
	["REG_PLAYER_GLANCE_PRESET_CATEGORY"] = "预置种类",
	["REG_PLAYER_GLANCE_PRESET_CREATE"] = "创建预设",
	["REG_PLAYER_GLANCE_PRESET_GET_CAT"] = [=[%s

请输入这个预设的类别名称.]=],
	["REG_PLAYER_GLANCE_PRESET_NAME"] = "预设名称",
	["REG_PLAYER_GLANCE_PRESET_REMOVE"] = "删除预设 |cff00ff00%s|r.",
	["REG_PLAYER_GLANCE_PRESET_SAVE"] = "将信息保存为预设值.",
	["REG_PLAYER_GLANCE_PRESET_SAVE_SMALL"] = "保存为预设的",
	["REG_PLAYER_GLANCE_PRESET_SELECT"] = "选择一个预设.",
	["REG_PLAYER_GLANCE_TITLE"] = "属性名称",
	["REG_PLAYER_GLANCE_USE"] = "激活这个位置",
	["REG_PLAYER_HEIGHT"] = "身高",
	["REG_PLAYER_HEIGHT_TT"] = [=[这是你的角色的身高.
有几种方法可以做到:|c0000ff00
- 一个精确的数字: 170 cm, 6'5" ...
-  或者简单的高或矮 !]=],
	["REG_PLAYER_HERE"] = "设置位置",
	["REG_PLAYER_HERE_HOME_PRE_TT"] = [=[现在的房子地图坐标:
|cff00ff00%s|r.]=],
	["REG_PLAYER_HERE_HOME_TT"] = [=[|cffffff00Click|r: 用你当前的坐标作为你的房子的位置。
|cffffff00Right-click|r: 丢弃你的房子的位置。]=],
	["REG_PLAYER_HERE_TT"] = "|cffffff00Click|r: 设定到你目前的位置",
	["REG_PLAYER_HISTORY"] = "历史",
	["REG_PLAYER_ICON"] = "角色图标",
	["REG_PLAYER_ICON_TT"] = "为你的角色选一个图标.",
	["REG_PLAYER_IGNORE"] = "忽略相关特征 (%s)",
	["REG_PLAYER_LASTNAME"] = "姓",
	["REG_PLAYER_LASTNAME_TT"] = "这是你的角色的姓.",
	["REG_PLAYER_LEFTTRAIT"] = "左倾",
	["REG_PLAYER_MISC_ADD"] = "添加一个额外的字段",
	["REG_PLAYER_MORE_INFO"] = "附加说明",
	["REG_PLAYER_MSP_HOUSE"] = "房子的名字",
	["REG_PLAYER_MSP_MOTTO"] = "座右铭",
	["REG_PLAYER_MSP_NICK"] = "昵称",
	["REG_PLAYER_NAMESTITLES"] = "名字与称呼",
	["REG_PLAYER_NO_CHAR"] = "没有特征",
	["REG_PLAYER_PEEK"] = "其他",
	["REG_PLAYER_PHYSICAL"] = "物理描述",
	["REG_PLAYER_PSYCHO"] = "个性",
	["REG_PLAYER_PSYCHO_ADD"] = "添加一种性格",
	["REG_PLAYER_PSYCHO_ATTIBUTENAME_TT"] = "属性名称",
	["REG_PLAYER_PSYCHO_CHAOTIC"] = "邪恶",
	["REG_PLAYER_PSYCHO_CREATENEW"] = "自建特征",
	["REG_PLAYER_PSYCHO_CUSTOM"] = "定制性格",
	["REG_PLAYER_PSYCHO_LEFTICON_TT"] = "设置左翼图标.",
	["REG_PLAYER_PSYCHO_MORE"] = "添加一个到 \"%s\"",
	["REG_PLAYER_PSYCHO_PERSONAL"] = "人格特质",
	["REG_PLAYER_PSYCHO_POINT"] = "添加一个点",
	["REG_PLAYER_PSYCHO_RIGHTICON_TT"] = "设置右翼图标.",
	["REG_PLAYER_PSYCHO_SOCIAL"] = "社会特征",
	["REG_PLAYER_RACE"] = "种族",
	["REG_PLAYER_RACE_TT"] = "这是你的角色的种族。它不需要被限制在可玩的种族中。魔兽争霸和魔兽世界有很多种族可以使用。",
	["REG_PLAYER_REGISTER"] = "目录信息",
	["REG_PLAYER_RESIDENCE"] = "居住",
	["REG_PLAYER_RESIDENCE_SHOW"] = "住宅坐标",
	["REG_PLAYER_RESIDENCE_SHOW_TT"] = [=[|cff00ff00%s

|r点击在地图上显示]=],
	["REG_PLAYER_RESIDENCE_TT"] = [=[在这里你可以指出你的角色通常生活在哪里. 这可能是他们的个人地址(他们的家)或者是他们可以相遇的地方.
注意，如果你的角色是一个流浪者，甚至是无家可归者，你需要相应地改变信息.

|c00ffff00你可以使用这个按钮来方便地设置你当前的位置.]=],
	["REG_PLAYER_RIGHTTRAIT"] = "右倾",
	["REG_PLAYER_SHOWMISC"] = "展示各种各样的框架",
	["REG_PLAYER_SHOWPSYCHO"] = "显示人格框架",
	["REG_PLAYER_STYLE_ASSIST"] = "RP扮演游戏帮助",
	["REG_PLAYER_STYLE_BATTLE"] = "RP战斗",
	["REG_PLAYER_STYLE_BATTLE_1"] = "PVP",
	["REG_PLAYER_STYLE_BATTLE_2"] = "TRP roll battle.",
	["REG_PLAYER_STYLE_BATTLE_3"] = "roll点战斗",
	["REG_PLAYER_STYLE_BATTLE_4"] = "表情战斗",
	["REG_PLAYER_STYLE_DEATH"] = "接受角色死亡",
	["REG_PLAYER_STYLE_EMPTY"] = "没有扮演游戏属性共享",
	["REG_PLAYER_STYLE_FREQ"] = "RP频率",
	["REG_PLAYER_STYLE_FREQ_1"] = "全部时间, no OOC",
	["REG_PLAYER_STYLE_FREQ_2"] = "大多数时间",
	["REG_PLAYER_STYLE_FREQ_3"] = "一部分时间",
	["REG_PLAYER_STYLE_FREQ_4"] = "我是临时工",
	["REG_PLAYER_STYLE_FREQ_5"] = "大部分时间都在OOC,我不是RP玩家",
	["REG_PLAYER_STYLE_GUILD"] = " 公会成员",
	["REG_PLAYER_STYLE_GUILD_IC"] = "RP 成员",
	["REG_PLAYER_STYLE_GUILD_OOC"] = "OOC 成员",
	["REG_PLAYER_STYLE_HIDE"] = "不显示",
	["REG_PLAYER_STYLE_INJURY"] = "接受角色受伤",
	["REG_PLAYER_STYLE_PERMI"] = "角色许可",
	["REG_PLAYER_STYLE_ROMANCE"] = "接受角色浪漫史",
	["REG_PLAYER_STYLE_RPSTYLE"] = "Roleplay 风格",
	["REG_PLAYER_STYLE_RPSTYLE_SHORT"] = "RP 风格",
	["REG_PLAYER_TITLE"] = "标题",
	["REG_PLAYER_TITLE_TT"] = [=[你的角色的标题是你的角色通常被称为的标题。避免长标题，对于那些应该使用完整标题属性的标题。

例如 |c0000ff00适当的标题 |r:
|c0000ff00- 女伯爵,
- 侯爵,
- 占星师,
- 贵族,
- 游学者.
|r例如 |cffff0000in适当的标题|r:
|cffff0000- 米奈希尔的女伯爵,
- 暴风城法师塔的占星师,
- 德莱尼的外交官,
- etc.]=],
	["REG_PLAYER_TRP2_PIERCING"] = "伤痕",
	["REG_PLAYER_TRP2_TATTOO"] = "刺青",
	["REG_PLAYER_TRP2_TRAITS"] = "面相",
	["REG_PLAYER_TUTO_ABOUT_COMMON"] = [=[|cff00ff00角色主题:|r
你可以选择一个为你的角色 |cffffff00主题|r . Think of it as an |cffffff00ambiance music for reading your character description|r.

|cff00ff00Background:|r
这是一个人物卡 |cffffff00人物的背景文档|r .

|cff00ff00Template:|r
The chosen template defines |cffffff00the general layout and writing possibilities|r for your description.
|cffff9900Only the selected template is visible by others, so you don't have to fill them all.|r
Once a template is selected, you can open this tutorial again to have more help about each template.]=],
	["REG_PLAYER_WEIGHT"] = "体型",
	["REG_PLAYER_WEIGHT_TT"] = [=[这里描述你的体型.
比如他们可以 |c0000ff00苗条、脂肪和肌肉...|r]=],
	["REG_REGISTER"] = "玩家目录",
	["REG_REGISTER_CHAR_LIST"] = "角色列表",
	["REG_RELATION"] = "人物关系",
	["REG_RELATION_BUSINESS"] = "商业上的",
	["REG_RELATION_BUSINESS_TT"] = "%s 和 %s 商业合作关系.",
	["REG_RELATION_BUTTON_TT"] = [=[关系: %s
|cff00ff00%s

|cffffff00单击以显示可能的操作]=],
	["REG_RELATION_FAMILY"] = "家人",
	["REG_RELATION_FAMILY_TT"] = "%s 血浓于水 %s.",
	["REG_RELATION_FRIEND"] = "友好/善的",
	["REG_RELATION_FRIEND_TT"] = "%s 认为 %s 是朋友.",
	["REG_RELATION_LOVE"] = "喜爱的",
	["REG_RELATION_LOVE_TT"] = "%s 热恋中 %s !",
	["REG_RELATION_NEUTRAL"] = "中立的",
	["REG_RELATION_NEUTRAL_TT"] = "%s 没有什么特别的感觉 %s.",
	["REG_RELATION_NONE"] = "无",
	["REG_RELATION_NONE_TT"] = "%s 不知道 %s.",
	["REG_RELATION_TARGET"] = "|cffffff00Click: |r改变关系",
	["REG_RELATION_UNFRIENDLY"] = "不友好/善的",
	["REG_RELATION_UNFRIENDLY_TT"] = "%s 明显不喜欢 %s.",
	["REG_TT_GUILD"] = "%s 属于 |cffff9900%s",
	["REG_TT_GUILD_IC"] = "RP 成员",
	["REG_TT_GUILD_OOC"] = "OOC 成员",
	["REG_TT_IGNORED"] = "< 角色被忽略 >",
	["REG_TT_IGNORED_OWNER"] = "< 玩家被忽略 >",
	["REG_TT_NOTIF"] = "未读的描述",
	["REG_TT_REALM"] = "范围: |cffff9900%s",
	["REG_TT_TARGET"] = "目标: |cffff9900%s",
	["TB_LANGUAGE"] = "语言",
	["TB_LANGUAGES_TT"] = "改变语言",
	["TB_STATUS"] = "玩家",
	["TB_SWITCH_CAPE_2"] = "隐藏披风",
	["TB_SWITCH_HELM_1"] = "显示头盔",
	["TB_SWITCH_HELM_2"] = "隐藏头盔",
	["TB_SWITCH_PROFILE"] = "切换到另一个配置文件",
	["TB_SWITCH_TOOLBAR"] = "切换工具条",
	["TB_TOOLBAR"] = "工具条",
	["TF_IGNORE"] = "忽略玩家",
	["TF_IGNORE_NO_REASON"] = "没有理由",
	["TF_IGNORE_TT"] = "|cffffff00Click:|r 忽略角色",
	["TF_OPEN_CHARACTER"] = "显示角色页面",
	["TF_PLAY_THEME"] = "扮演角色主题",
	["UI_BKG"] = "背景 %s",
	["UI_CLOSE_ALL"] = "关闭所有",
	["UI_COLOR_BROWSER_SELECT"] = "选择颜色",
	["UI_TUTO_BUTTON"] = "教学模式",
	["UI_TUTO_BUTTON_TT"] = "点击打开/关闭教程模式"
}
};

TRP3_API.locale.registerLocale(LOCALE);
