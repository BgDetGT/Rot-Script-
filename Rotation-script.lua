CONFIG = {
    Main_setting = {
        License = "CiZMDNg4FN7dYwBkJbBf", -- put your rotation license here / taruh lisensi rotasi di sini
        ItemID = 4584, -- this item id farmable not pack / ini item id farmable bukan item id pack
        Pack = "surgical_kit"
    },
    Farm_setting = {
        farm_world = {
            "UNQOY","ESLPB","STSJW","PBFWB","SBKQM","IHQKA","VKVDY","FCOLQ","UMCWD","JQPUL",
        },
        farm_world_id = "pedet10mod",
        delay_harvest = 120,
        delay_plant = 120
    },
    Storage_setting = {
        storage_seed = "bewemulukontol1",
        storage_seed_id = "de62",
        storage_pack = "bewemulukontol",
        storage_pack_id = "K2DJ82JD"
    },
    Break_setting = {
        bool_break_other_world = false, --true if you want to break block in other world / true jika kamu ingin break di world lain
        break_world_name = "", 
        break_world_id = "",
        tile = 2,
        delay_break = 200, 
        delay_put = 200, 
        auto_ban_joined = false,
        owner = "growid",
        custom_position = {true, 6, 1}, --custom position break / kustom posisi break
        disable_buypack = false --true if you want to keep gems / true jika kamu ingin menyimpan gems
    },
    Other_setting = {
        repeat_world = true, --true for looping world
        url_webhook = "https://discord.com/api/webhooks/1055057478016057344/CEb5LY64nbu5VEaWfiHlLv_fhMJyJWcxdK-CYFdqd8ztjvMEelzmcVol1PoCmHpi6gvm",
        short_webhook = false,
        disable_webhook = false
    },
    Custom_gems_buypack = {
        false, 12000 
    },
    Avoid_nuke = {
        use_feature = false,
        world_random = {
            "test111","test222","test333","test444","test555",
            "test666","test777","test888","test999","test000"
        },
        delay_every_warp = 10
    }
}

--==== UPDATE CONFIG PUT HERE ====--

CONFIG.auto_wear_pickaxe = {
    use_feature = true,
    storage_pickaxe = "ywexl",
    storage_pickaxe_id = "mamatbew190"
}

CONFIG.max_slot_backpack = 36
CONFIG.detect_floating_objects = true
CONFIG.disable_get_usage_cpu_ram = false
CONFIG.disable_plant = false
CONFIG.sulap = false

CONFIG.Custom_delay = {
    use_feature = true, --true if you want to use custom delay
    delay_break = 120, -- millisecond
    delay_put = 120, -- millisecond
    delay_harvest = 120, -- millisecond
    delay_plant = 120, -- millisecond
    delay_findpath_harvest = 200, -- millisecond
    delay_findpath_plant = 200, -- millisecond
    delay_findpath_break = 800, -- millisecond
    delay_findpath_drop = 500, -- millisecond
    delay_findpath_other = 900, -- millisecond
    delay_drop = 4, -- second
    delay_trash = 4, -- second
    delay_warp = 10, -- second
    delay_buypack = 10, -- second
    delay_upgrade_backpack = 10 -- second
}

CONFIG.drop_item = {
    use_feature = false,
    list_item = {5036,5038},
    max_item_to_drop = 180,
    storage = "world",
    storage_id = "iddoor"
}

CONFIG.notification = {
    use_feature = true,
    url_webhook = "url",
    username = "https://discord.com/api/webhooks/1055746817318469652/DM2sgg_Km6GwBccdPp3i6Y8GqA1pjKjCzaJg1Dl5MuZ3AO6RCJpDvl9GioCs2yFuS8_8", -- username bot webhook
    schedule = {
        use_schedule = true,
        delay = 15 -- every 60 minute send status of bot
    }
}

CONFIG.move_when_breaking_block = {
    use_feature = false,
    trigger_second = 50
}

CONFIG.say_random_word = false
CONFIG.use_animation = true -- animation punch

CONFIG.offline_time = {
    use_feature = false,
    time_rest = {
        {start = "12:00", finish = "17:00"},
        {start = "18:00", finish = "19:00"},
        {start = "20:00", finish = "23:35"},
    }
}

CONFIG.PANDORA = true
CONFIG.GROWX = false

--==================================--

CONFIG = CONFIG
local script
if CONFIG.PANDORA then
    script = request("GET","https://raw.githubusercontent.com/acdcbandyap/bandyapacdc/main/hooh.lua")
elseif CONFIG.GROWX then
    script = httpGet("https://raw.githubusercontent.com/acdcbandyap/bandyapacdc/main/hooh.lua")
end 
load(script)()
