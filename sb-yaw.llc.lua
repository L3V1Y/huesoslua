


--engine.exec("clear")
utils.run_delayed(5, function()
    print("░██████╗  ██████╗░  ░░░░░░  ██╗░░░██╗  ░█████╗░  ░██╗░░░░░░░██╗")
    print("██╔════╝  ██╔══██╗  ░░░░░░  ╚██╗░██╔╝  ██╔══██╗  ░██║░░██╗░░██║")
    print("╚█████╗░  ██████╦╝  █████╗  ░╚████╔╝░  ███████║  ░╚██╗████╗██╔╝")
    print("░╚═══██╗  ██╔══██╗  ╚════╝  ░░╚██╔╝░░  ██╔══██║  ░░████╔═████║░")
    print("██████╔╝  ██████╦╝  ░░░░░░  ░░░██║░░░  ██║░░██║  ░░╚██╔╝░╚██╔╝░")
    print("╚═════╝░  ╚═════╝░  ░░░░░░  ░░░╚═╝░░░  ╚═╝░░╚═╝  ░░░╚═╝░░░╚═╝░░")
    end)
    
    cb = gui.add_checkbox
    sl = gui.add_slider
    cmb = gui.add_combo
    mc = gui.add_multi_combo
    btn = gui.add_button
    txt = gui.add_textbox
    lb = gui.add_listbox
    kb = gui.add_keybind
    cp = gui.add_colorpicker
    find = gui.get_config_item
    error = utils.error_print
    
    --script start
    --menu elements
    sb_menu = cmb("[S B - Y A W]", "lua>tab a", {"Credits", "Rage", "Anti-hit sys", "Visuals", "Misc"})
    --rage elements
    rollres = cb("Roll resolver on key", "lua>tab b")
        rollkey = kb("lua>tab b>Roll resolver on key")
    OSFIXC = cb("Enable OS-AA Enchancer", "lua>tab b")
    OSFIX = cmb("OS-AA Types", "lua>tab b", {"Zero fakelag", "Break lagcomp", "Always fakelag"})
    --aa tab
    aaselection = cmb("Conditions", "lua>tab b", {"Standing", "Moving", "In-Air", "In-air-duck", "Slow-walking", "Ducking"})
    --stand
    spitch = cmb("[S] Pitch", "lua>tab b", {"None", "Down", "Up", "Zero"})
    syaw = cb("[S] Yaw add", "lua>tab b")
    syawadd = sl("[S] Yaw", "lua>tab b", -360, 360, 0)
    stype = cmb("[S] Yaw base", "lua>tab b", {"Local view", "At-targets"})
    sspin = cb("[S] Spin", "lua>tab b")
    sspinadd = sl("[S] Spin range", "lua>tab b", 0, 360, 0)
    sspinrange = sl("[S] Spin speed", "lua>tab b", 0, 360, 0)
    sjitter = cb("[S] Jitter", "lua>tab b")
    sjitterrandom = cb("[S] Jitter random", "lua>tab b")
    sjitterrange = sl("[S] Jitter range", "lua>tab b", 0, 360, 0)
    --stand fake
    sfake = cb("[S] Fake", "lua>tab b")
    sfakeam = sl("[S] Fake amount", "lua>tab b", -100, 100, 0)
    scompf = sl("[S] Compensate fake", "lua>tab b", 0, 100, 0)
    sfree = cmb("[S] Freestand fake", "lua>tab b", {"None", "Normal", "Opposite"})
    sfakejit = cb("[S] Flip fake with jitter", "lua>tab b")
    --move
    mpitch = cmb("[M] Pitch", "lua>tab b", {"None", "Down", "Up", "Zero"})
    myaw = cb("[M] Yaw add", "lua>tab b")
    myawadd = sl("[M] Yaw", "lua>tab b", -360, 360, 0)
    mtype = cmb("[M] Yaw base", "lua>tab b", {"Local view", "At-targets"})
    mspin = cb("[M] Spin", "lua>tab b")
    mspinadd = sl("[M] Spin range", "lua>tab b", 0, 360, 0)
    mspinrange = sl("[M] Spin speed", "lua>tab b", 0, 360, 0)
    mjitter = cb("[M] Jitter", "lua>tab b")
    mjitterrandom = cb("[M] Jitter random", "lua>tab b")
    mjitterrange = sl("[M] Jitter range", "lua>tab b", 0, 360, 0)
    --move fake
    mfake = cb("[M] Fake", "lua>tab b")
    mfakeam = sl("[M] Fake amount", "lua>tab b", -100, 100, 0)
    mcompf = sl("[M] Compensate fake", "lua>tab b", 0, 100, 0)
    mfree = cmb("[M] Freestand fake", "lua>tab b", {"None", "Normal", "Opposite"})
    mfakejit = cb("[M] Flip fake with jitter", "lua>tab b")
    --air
    apitch = cmb("[A] Pitch", "lua>tab b", {"None", "Down", "Up", "Zero"})
    ayaw = cb("[A] Yaw add", "lua>tab b")
    ayawadd = sl("[A] Yaw", "lua>tab b", -360, 360, 0)
    atype = cmb("[A] Yaw base", "lua>tab b", {"Local view", "At-targets"})
    aspin = cb("[A] Spin", "lua>tab b")
    aspinadd = sl("[A] Spin range", "lua>tab b", 0, 360, 0)
    aspinrange = sl("[A] Spin speed", "lua>tab b", 0, 360, 0)
    ajitter = cb("[A] Jitter", "lua>tab b")
    ajitterrandom = cb("[A] Jitter random", "lua>tab b")
    ajitterrange = sl("[A] Jitter range", "lua>tab b", 0, 360, 0)
    --air fake
    afake = cb("[A] Fake", "lua>tab b")
    afakeam = sl("[A] Fake amount", "lua>tab b", -100, 100, 0)
    acompf = sl("[A] Compensate fake", "lua>tab b", 0, 100, 0)
    afree = cmb("[A] Freestand fake", "lua>tab b", {"None", "Normal", "Opposite"})
    afakejit = cb("[A] Flip fake with jitter", "lua>tab b")
    --air duck
    adpitch = cmb("[A+D] Pitch", "lua>tab b", {"None", "Down", "Up", "Zero"})
    adyaw = cb("[A+D] Yaw add", "lua>tab b")
    adyawadd = sl("[A+D] Yaw", "lua>tab b", -360, 360, 0)
    adtype = cmb("[A+D] Yaw base", "lua>tab b", {"Local view", "At-targets"})
    adspin = cb("[A+D] Spin", "lua>tab b")
    adspinadd = sl("[A+D] Spin range", "lua>tab b", 0, 360, 0)
    adspinrange = sl("[A+D] Spin speed", "lua>tab b", 0, 360, 0)
    adjitter = cb("[A+D] Jitter", "lua>tab b")
    adjitterrandom = cb("[A+D] Jitter random", "lua>tab b")
    adjitterrange = sl("[A+D] Jitter range", "lua>tab b", 0, 360, 0)
    --air duck fake
    adfake = cb("[A+D] Fake", "lua>tab b")
    adfakeam = sl("[A+D] Fake amount", "lua>tab b", -100, 100, 0)
    adcompf = sl("[A+D] Compensate fake", "lua>tab b", 0, 100, 0)
    adfree = cmb("[A+D] Freestand fake", "lua>tab b", {"None", "Normal", "Opposite"})
    adfakejit = cb("[A+D] Flip fake with jitter", "lua>tab b")
    --slowwalking
    swpitch = cmb("[SW] Pitch", "lua>tab b", {"None", "Down", "Up", "Zero"})
    swyaw = cb("[SW] Yaw add", "lua>tab b")
    swyawadd = sl("[SW] Yaw", "lua>tab b", -360, 360, 0)
    swtype = cmb("[SW] Yaw base", "lua>tab b", {"Local view", "At-targets"})
    swspin = cb("[SW] Spin", "lua>tab b")
    swspinadd = sl("[SW] Spin range", "lua>tab b", 0, 360, 0)
    swspinrange = sl("[SW] Spin speed", "lua>tab b", 0, 360, 0)
    swjitter = cb("[SW] Jitter", "lua>tab b")
    swjitterrandom = cb("[SW] Jitter random", "lua>tab b")
    swjitterrange = sl("[SW] Jitter range", "lua>tab b", 0, 360, 0)
    --slowwalking fake
    swfake = cb("[SW] Fake", "lua>tab b")
    swfakeam = sl("[SW] Fake amount", "lua>tab b", -100, 100, 0)
    swcompf = sl("[SW] Compensate fake", "lua>tab b", 0, 100, 0)
    swfree = cmb("[SW] Freestand fake", "lua>tab b", {"None", "Normal", "Opposite"})
    swfakejit = cb("[SW] Flip fake with jitter", "lua>tab b")
    --duck
    dpitch = cmb("[D] Pitch", "lua>tab b", {"None", "Down", "Up", "Zero"})
    dyaw = cb("[D] Yaw add", "lua>tab b")
    dyawadd = sl("[D] Yaw", "lua>tab b", -360, 360, 0)
    dtype = cmb("[D] Yaw base", "lua>tab b", {"Local view", "At-targets"})
    dspin = cb("[D] Spin", "lua>tab b")
    dspinadd = sl("[D] Spin range", "lua>tab b", 0, 360, 0)
    dspinrange = sl("[D] Spin speed", "lua>tab b", 0, 360, 0)
    djitter = cb("[D] Jitter", "lua>tab b")
    djitterrandom = cb("[D] Jitter random", "lua>tab b")
    djitterrange = sl("[D] Jitter range", "lua>tab b", 0, 360, 0)
    --duck fake
    dfake = cb("[D] Fake", "lua>tab b")
    dfakeam = sl("[D] Fake amount", "lua>tab b", -100, 100, 0)
    dcompf = sl("[D] Compensate fake", "lua>tab b", 0, 100, 0)
    dfree = cmb("[D] Freestand fake", "lua>tab b", {"None", "Normal", "Opposite"})
    dfakejit = cb("[D] Flip fake with jitter", "lua>tab b")
    --visuals
    indicators = cmb("Indicators type", "lua>tab b", {"-", "Pixilized", "Re-newed"})
    colorcb = cb("Color", "lua>tab b")
    color = cp("lua>tab b>Color", true)
    sideind, mark = mc("Other features", "lua>tab b", {"Side indicators", "Script watermark"})
    --misc
    deflogs, underlogs = mc("Logs", "lua>tab b", {"Default", "Under crosshair"})
    tag = cb("Script tag", "lua>tab b")
    
    function on_menu_check()
        tab = sb_menu:get_int()
        aatab = aaselection:get_int()
        FLC = OSFIXC:get_bool()
        --
        SYC = syaw:get_bool()
        SPC = sspin:get_bool()
        SJC = sjitter:get_bool()
        SFC = sfake:get_bool()
        --
        MYC = myaw:get_bool()
        MPC = mspin:get_bool()
        MJC = mjitter:get_bool()
        MFC = mfake:get_bool()
        --
        AYC = ayaw:get_bool()
        APC = aspin:get_bool()
        AJC = ajitter:get_bool()
        AFC = afake:get_bool()
        --
        ADYC = adyaw:get_bool()
        ADPC = adspin:get_bool()
        ADJC = adjitter:get_bool()
        ADFC = adfake:get_bool()
        --
        SWYC = swyaw:get_bool()
        SWPC = swspin:get_bool()
        SWJC = swjitter:get_bool()
        SWFC = swfake:get_bool()
        --
        DYC = dyaw:get_bool()
        DPC = dspin:get_bool()
        DJC = djitter:get_bool()
        DFC = dfake:get_bool()
    
        gui.set_visible("lua>tab b>Roll resolver on key", tab == 1)
        gui.set_visible("lua>tab b>Enable OS-AA Enchancer", tab == 1)
        gui.set_visible("lua>tab b>OS-AA Types", tab == 1 and FLC)
        --
        gui.set_visible("lua>tab b>Conditions", tab == 2)
        --
        gui.set_visible("lua>tab b>[S] Pitch", tab == 2 and aatab == 0)
        gui.set_visible("lua>tab b>[S] Yaw add", tab == 2 and aatab == 0)
        gui.set_visible("lua>tab b>[S] Yaw", tab == 2 and aatab == 0 and SYC)
        gui.set_visible("lua>tab b>[S] Yaw base", tab == 2 and aatab == 0)
        gui.set_visible("lua>tab b>[S] Spin", tab == 2 and aatab == 0)
        gui.set_visible("lua>tab b>[S] Spin range", tab == 2 and aatab == 0 and SPC)
        gui.set_visible("lua>tab b>[S] Spin speed", tab == 2 and aatab == 0 and SPC)
        gui.set_visible("lua>tab b>[S] Jitter", tab == 2 and aatab == 0)
        gui.set_visible("lua>tab b>[S] Jitter random", tab == 2 and aatab == 0 and SJC)
        gui.set_visible("lua>tab b>[S] Jitter range", tab == 2 and aatab == 0 and SJC) 
        gui.set_visible("lua>tab b>[S] Fake", tab == 2 and aatab == 0)
        gui.set_visible("lua>tab b>[S] Fake amount", tab == 2 and aatab == 0 and SFC)
        gui.set_visible("lua>tab b>[S] Compensate fake", tab == 2 and aatab == 0 and SFC)
        gui.set_visible("lua>tab b>[S] Freestand fake", tab == 2 and aatab == 0 and SFC)
        gui.set_visible("lua>tab b>[S] Flip fake with jitter", tab == 2 and aatab == 0 and SFC)
        --
        gui.set_visible("lua>tab b>[M] Pitch", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[M] Yaw add", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[M] Yaw", tab == 2 and aatab == 1 and MYC)
        gui.set_visible("lua>tab b>[M] Yaw base", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[M] Spin", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[M] Spin range", tab == 2 and aatab == 1 and MPC)
        gui.set_visible("lua>tab b>[M] Spin speed", tab == 2 and aatab == 1 and MPC)
        gui.set_visible("lua>tab b>[M] Jitter", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[M] Jitter random", tab == 2 and aatab == 1 and MJC)
        gui.set_visible("lua>tab b>[M] Jitter range", tab == 2 and aatab == 1 and MJC)
        gui.set_visible("lua>tab b>[M] Fake", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[M] Fake amount", tab == 2 and aatab == 1 and MFC)
        gui.set_visible("lua>tab b>[M] Compensate fake", tab == 2 and aatab == 1 and MFC)
        gui.set_visible("lua>tab b>[M] Freestand fake", tab == 2 and aatab == 1 and MFC)
        gui.set_visible("lua>tab b>[M] Flip fake with jitter", tab == 2 and aatab == 1 and MFC)
         --
        gui.set_visible("lua>tab b>[A] Pitch", tab == 2 and aatab == 2)
        gui.set_visible("lua>tab b>[A] Yaw add", tab == 2 and aatab == 2)
        gui.set_visible("lua>tab b>[A] Yaw", tab == 2 and aatab == 2 and AYC)
        gui.set_visible("lua>tab b>[A] Yaw base", tab == 2 and aatab == 2)
        gui.set_visible("lua>tab b>[A] Spin", tab == 2 and aatab == 2)
        gui.set_visible("lua>tab b>[A] Spin range", tab == 2 and aatab == 2 and APC)
        gui.set_visible("lua>tab b>[A] Spin speed", tab == 2 and aatab == 2 and APC)
        gui.set_visible("lua>tab b>[A] Jitter", tab == 2 and aatab == 2)
        gui.set_visible("lua>tab b>[A] Jitter random", tab == 2 and aatab == 2 and AJC)
        gui.set_visible("lua>tab b>[A] Jitter range", tab == 2 and aatab == 2 and AJC)
        gui.set_visible("lua>tab b>[A] Fake", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[A] Fake amount", tab == 2 and aatab == 2 and AFC)
        gui.set_visible("lua>tab b>[A] Compensate fake", tab == 2 and aatab == 2 and AFC)
        gui.set_visible("lua>tab b>[A] Freestand fake", tab == 2 and aatab == 2 and AFC)
        gui.set_visible("lua>tab b>[A] Flip fake with jitter", tab == 2 and aatab == 2 and AFC)
        --
        gui.set_visible("lua>tab b>[A+D] Pitch", tab == 2 and aatab == 3)
        gui.set_visible("lua>tab b>[A+D] Yaw add", tab == 2 and aatab == 3)
        gui.set_visible("lua>tab b>[A+D] Yaw", tab == 2 and aatab == 3 and ADYC)
        gui.set_visible("lua>tab b>[A+D] Yaw base", tab == 2 and aatab == 3)
        gui.set_visible("lua>tab b>[A+D] Spin", tab == 2 and aatab == 3)
        gui.set_visible("lua>tab b>[A+D] Spin range", tab == 2 and aatab == 3 and ADPC)
        gui.set_visible("lua>tab b>[A+D] Spin speed", tab == 2 and aatab == 3 and ADPC)
        gui.set_visible("lua>tab b>[A+D] Jitter", tab == 2 and aatab == 3)
        gui.set_visible("lua>tab b>[A+D] Jitter random", tab == 2 and aatab == 3 and ADJC)
        gui.set_visible("lua>tab b>[A+D] Jitter range", tab == 2 and aatab == 3 and ADJC)
        gui.set_visible("lua>tab b>[A+D] Fake", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[A+D] Fake amount", tab == 2 and aatab == 3 and ADFC)
        gui.set_visible("lua>tab b>[A+D] Compensate fake", tab == 2 and aatab == 3 and ADFC)
        gui.set_visible("lua>tab b>[A+D] Freestand fake", tab == 2 and aatab == 3 and ADFC)
        gui.set_visible("lua>tab b>[A+D] Flip fake with jitter", tab == 2 and aatab == 3 and ADFC)
        --
        gui.set_visible("lua>tab b>[SW] Pitch", tab == 2 and aatab == 4)
        gui.set_visible("lua>tab b>[SW] Yaw add", tab == 2 and aatab == 4)
        gui.set_visible("lua>tab b>[SW] Yaw", tab == 2 and aatab == 4 and SWYC)
        gui.set_visible("lua>tab b>[SW] Yaw base", tab == 2 and aatab == 4)
        gui.set_visible("lua>tab b>[SW] Spin", tab == 2 and aatab == 4)
        gui.set_visible("lua>tab b>[SW] Spin range", tab == 2 and aatab == 4 and SWPC)
        gui.set_visible("lua>tab b>[SW] Spin speed", tab == 2 and aatab == 4 and SWPC)
        gui.set_visible("lua>tab b>[SW] Jitter", tab == 2 and aatab == 4)
        gui.set_visible("lua>tab b>[SW] Jitter random", tab == 2 and aatab == 4 and SWJC)
        gui.set_visible("lua>tab b>[SW] Jitter range", tab == 2 and aatab == 4 and SWJC)
        gui.set_visible("lua>tab b>[SW] Fake", tab == 2 and aatab == 1)
        gui.set_visible("lua>tab b>[SW] Fake amount", tab == 2 and aatab == 4 and SWFC)
        gui.set_visible("lua>tab b>[SW] Compensate fake", tab == 2 and aatab == 4 and SWFC)
        gui.set_visible("lua>tab b>[SW] Freestand fake", tab == 2 and aatab == 4 and SWFC)
        gui.set_visible("lua>tab b>[SW] Flip fake with jitter", tab == 2 and aatab == 4 and SWFC)
        --
        gui.set_visible("lua>tab b>[D] Pitch", tab == 2 and aatab == 5)
        gui.set_visible("lua>tab b>[D] Yaw add", tab == 2 and aatab == 5)
        gui.set_visible("lua>tab b>[D] Yaw", tab == 2 and aatab == 5 and DYC)
        gui.set_visible("lua>tab b>[D] Yaw base", tab == 2 and aatab == 5)
        gui.set_visible("lua>tab b>[D] Spin", tab == 2 and aatab == 5)
        gui.set_visible("lua>tab b>[D] Spin range", tab == 2 and aatab == 5 and DPC)
        gui.set_visible("lua>tab b>[D] Spin speed", tab == 2 and aatab == 5 and DPC)
        gui.set_visible("lua>tab b>[D] Jitter", tab == 2 and aatab == 5)
        gui.set_visible("lua>tab b>[D] Jitter random", tab == 2 and aatab == 5 and DJC)
        gui.set_visible("lua>tab b>[D] Jitter range", tab == 2 and aatab == 5 and DJC)
        gui.set_visible("lua>tab b>[D] Fake", tab == 2 and aatab == 5)
        gui.set_visible("lua>tab b>[D] Fake amount", tab == 2 and aatab == 5 and DFC)
        gui.set_visible("lua>tab b>[D] Compensate fake", tab == 2 and aatab == 5 and DFC)
        gui.set_visible("lua>tab b>[D] Freestand fake", tab == 2 and aatab == 5 and DFC)
        gui.set_visible("lua>tab b>[D] Flip fake with jitter", tab == 2 and aatab == 5 and DFC)
        --
        gui.set_visible("lua>tab b>Indicators type", tab == 3)
        gui.set_visible("lua>tab b>Color", tab == 3)
        gui.set_visible("lua>tab b>Other features", tab == 3)
        --
        gui.set_visible("lua>tab b>Logs", tab == 4)
        gui.set_visible("lua>tab b>Script tag", tab == 4)
    end
    pixel = render.font_esp
    screen_center = {
        w = 0,
        h = 0
    }
    
    screen_size_x, screen_size_y = render.get_screen_size()
    x = screen_size_x / 2
    y = screen_size_y / 2
    resolvers = find("rage>aimbot>aimbot>resolver mode")
    function rollresolver()
        if rollres:get_bool() then
            resolvers:set_int(0)
            render.text(render.font_indicator, 10, y + 110 , "ROLLRES", render.color(5,150,195,255), render.align_left, render.align_center)
        else
            resolvers:set_int(1)
            render.text(render.font_indicator, 10, y + 110 , "ROLLRES", render.color(5,150,195,0), render.align_left, render.align_center)
        end
    end
    local function animation(check, name, value, speed) 
        if check then 
            return name + (value - name) * global_vars.frametime * speed / 1.5
        else 
            return name - (value + name) * global_vars.frametime * speed / 1.5
            
        end
    end
    
    function animate(value, cond, max, speed, dynamic, clamp)
    
        -- animation speed
        speed = speed * global_vars.frametime * 20
    
        -- static animation
        if dynamic == false then
            if cond then
                value = value + speed
            else
                value = value - speed
            end
        
        -- dynamic animation
        else
            if cond then
                value = value + (max - value) * (speed / 100)
            else
                value = value - (0 + value) * (speed / 100)
            end
        end
    
        -- clamp value
        if clamp then
            if value > max then
                value = max
            elseif value < 0 then
                value = 0
            end
        end
    
        return value
    end

    offset_scope = 0
    function indicators_render()
    center = render.align_center
    ay = 0
    lp = entities.get_entity(engine.get_local_player())
    if not lp then return end
    if not lp:is_alive() then return end
    scoped = lp:get_prop("m_bIsScoped")
    offset_scope = animation(scoped, offset_scope, 25, 10)
    function Clamp(Value, Min, Max)
        return Value < Min and Min or (Value > Max and Max or Value)
    end
    if indicators:get_int() == 1 then
        alpha2 = math.floor(math.abs(math.sin(global_vars.realtime) * 1) * 255)
            maintext = "cyber.tech"
            buildtext = "[beta]"
            dttext = "DT"
            dmgtext = "damage"
            ostext = "OS"
            aptext = "PA"
            datext = "DA"

            --for texts

            dtkey = find("rage>aimbot>aimbot>double tap"):get_bool()
            dmgkey = find("rage>aimbot>ssg08>scout>override"):get_bool()
            oskey = find("rage>aimbot>aimbot>hide shot"):get_bool()
            pakey = find("misc>movement>peek assist"):get_bool()
            dakey = find("rage>aimbot>aimbot>target dormant"):get_bool()

            leftkey = find("rage>anti-aim>angles>left"):get_bool()
            rightkey = find("rage>anti-aim>angles>right"):get_bool()
            if leftkey or rightkey then maintext = "manual" or "cyber.tech"
            end
            render.text(pixel, x, y + 20, maintext, render.color(255,255, 255, 255), center)
            render.text(pixel, x, y - 10, buildtext, render.color(color:get_color().r, color:get_color().g, color:get_color().b, alpha2), center)
            elseif scoped then
                render.text(pixel, x, y + 20, maintext, render.color(255,255, 255, 255))
                render.text(pixel, x, y - 10, buildtext, render.color(color:get_color().r, color:get_color().g, color:get_color().b, alpha2))
            end
end
            if dtkey and info.fatality.can_fastfire and not scoped then
                render.text(pixel, x, y + 30+ay, dttext, render.color(200, 250, 200, 255), center)
                ay = ay + 10
            else if dtkey and not info.fatality.can_fastfire and not scoped then
                    render.text(pixel, x, y + 30+ay, dttext, render.color(255, 0, 0, 255), center)
                    ay = ay + 10
            else if dtkey and info.fatality.can_fastfire and scoped then
                render.text(pixel, x, y + 30+ay, dttext, render.color(200, 250, 200, 255))
                ay = ay + 10
            else
                if dtkey and not info.fatality.can_fastfire and scoped then
                    render.text(pixel, x, y + 30+ay, dttext, render.color(255, 0, 0, 255))
                    ay = ay + 10
                end
                end
            end
        end
        if oskey and not scoped then
        render.text(pixel, x , y + 30+ay, ostext, render.color(255, 0, 0, 255), center)
        ay = ay + 10
    else if oskey and scoped then
    render.text(pixel, x, y + 30+ay, ostext, render.color(200, 250, 200, 255))
    ay = ay + 10
    end
end
    if dmgkey and not scoped then
        render.text(pixel, x , y + 30+ay, dmgtext, render.color(255, 0, 0, 255), center)
        ay = ay + 10
    else if dmgkey and scoped then
    render.text(pixel, x, y + 30+ay, dmgtext, render.color(200, 250, 200, 255))
    ay = ay + 10
    end
end
if dakey and not scoped then
    render.text(pixel, x , y + 30+ay, datext, render.color(255, 0, 0, 255), center)
    ay = ay + 10
else if dakey and scoped then
render.text(pixel, x, y + 30+ay, datext, render.color(200, 250, 200, 255))
ay = ay + 10
end
end
if pakey and not scoped then
    render.text(pixel, x , y + 30+ay, aptext, render.color(255, 0, 0, 255), center)
    ay = ay + 10
else if pakey and scoped then
render.text(pixel, x, y + 30+ay, aptext, render.color(200, 250, 200, 255))
ay = ay + 10
end
end



    
    
    
    
    
    
    
    
    
    
    
    
        pitch = find("Rage>Anti-Aim>Angles>Pitch");
        yawadd = find("Rage>Anti-Aim>Angles>Yaw add");
        yawaddint = find("Rage>Anti-Aim>Angles>Add");
        yawbase = find("Rage>Anti-aim>Angles>At fov target");
        spin = find("Rage>Anti-Aim>Angles>Spin");
        spinrange = find("Rage>Anti-Aim>Angles>Spin range");
        spinspeed = find("Rage>Anti-Aim>Angles>Spin speed");
        jitter = find("Rage>Anti-Aim>Angles>Jitter");
        jitterrandom = find("Rage>Anti-Aim>Angles>Random");
        jitterrange = find("Rage>Anti-Aim>Angles>Jitter Range");
        enabledesync = find("Rage>Anti-aim>Desync>Fake")
        desync = find("Rage>Anti-Aim>Desync>Fake amount");
        compAngle = find("Rage>Anti-Aim>Desync>Compensate angle");
        freestandFake = find("Rage>Anti-Aim>Desync>Freestand fake");
        flipJittFake = find("Rage>Anti-Aim>Desync>Flip fake with jitter");
    
    function get_local_speed()
     local_player = entities.get_entity(engine.get_local_player())
        if local_player == nil then
          return
        end
      
     velocity_x = local_player:get_prop("m_vecVelocity[0]")
     velocity_y = local_player:get_prop("m_vecVelocity[1]")
     velocity_z = local_player:get_prop("m_vecVelocity[2]")
      
     velocity = math.vec3(velocity_x, velocity_y, velocity_z)
     speed = math.ceil(velocity:length2d())
        if speed < 10 then
            return 0
        else 
            return speed 
        end
    end
    
        playerstate = 0
    function AABUILDER()
     isSW = info.fatality.in_slowwalk
     local_player = entities.get_entity(engine.get_local_player())
     inAir = local_player:get_prop("m_hGroundEntity") == -1
     vel_x = math.floor(local_player:get_prop("m_vecVelocity[0]"))
     vel_y = math.floor(local_player:get_prop("m_vecVelocity[1]"))
     still = math.sqrt(vel_x ^ 2 + vel_y ^ 2) < 5
     cupic = bit.band(local_player:get_prop("m_fFlags"),bit.lshift(2, 0)) ~= 0
     flag = local_player:get_prop("m_fFlags")
    
    
    
        if inAir and cupic then
            playerstate = 5
        else
            if inAir then
                playerstate = 4
            else
                if isSW then
                    playerstate = 3
                else
                    if cupic then
                        playerstate = 6
                    else
                        if still and not cupic then
                            playerstate = 1
                        elseif not still then
                            playerstate = 2
                        end
                    end
                end
            end
        end
    
        --stand
        if playerstate == 1 then
        pitch:set_int(spitch:get_int())
        yawadd:set_bool(syaw:get_bool())
        yawaddint:set_int(syawadd:get_int())
        if stype:get_int() == 0 then
            yawbase:set_bool(false)
        else
            yawbase:set_bool(true)
        spin:set_bool(sspin:get_bool())
        spinrange:set_int(sspinadd:get_int())
        spinspeed:set_int(sspinrange:get_int())
        jitter:set_bool(sjitter:get_bool())
        jitterrandom:set_bool(sjitterrandom:get_bool())
        jitterrange:set_int(sjitterrange:get_int())
        enabledesync:set_bool(sfake:get_bool())
        desync:set_int(sfakeam:get_int())
        compAngle:set_int(scompf:get_int())
        freestandFake:set_int(sfree:get_int())
        flipJittFake:set_bool(sfakejit:get_bool())
        end
    end
        if playerstate == 2 then
        pitch:set_int(mpitch:get_int())
        yawadd:set_bool(myaw:get_bool())
        yawaddint:set_int(myawadd:get_int())
        if mtype:get_int() == 0 then
            yawbase:set_bool(false)
        else
            yawbase:set_bool(true)
        spin:set_bool(mspin:get_bool())
        spinrange:set_int(mspinadd:get_int())
        spinspeed:set_int(mspinrange:get_int())
        jitter:set_bool(mjitter:get_bool())
        jitterrandom:set_bool(mjitterrandom:get_bool())
        jitterrange:set_int(mjitterrange:get_int())
        enabledesync:set_bool(mfake:get_bool())
        desync:set_int(mfakeam:get_int())
        compAngle:set_int(mcompf:get_int())
        freestandFake:set_int(mfree:get_int())
        flipJittFake:set_bool(mfakejit:get_bool())
        end
    end
    if playerstate == 3 then
        pitch:set_int(swpitch:get_int())
        yawadd:set_bool(swyaw:get_bool())
        yawaddint:set_int(swyawadd:get_int())
        if swtype:get_int() == 0 then
            yawbase:set_bool(false)
        else
            yawbase:set_bool(true)
        spin:set_bool(swspin:get_bool())
        spinrange:set_int(swspinadd:get_int())
        spinspeed:set_int(swspinrange:get_int())
        jitter:set_bool(swjitter:get_bool())
        jitterrandom:set_bool(swjitterrandom:get_bool())
        jitterrange:set_int(swjitterrange:get_int())
        enabledesync:set_bool(swfake:get_bool())
        desync:set_int(swfakeam:get_int())
        compAngle:set_int(swcompf:get_int())
        freestandFake:set_int(swfree:get_int())
        flipJittFake:set_bool(swfakejit:get_bool())
        end
    end
    if playerstate == 4 then
        pitch:set_int(apitch:get_int())
        yawadd:set_bool(ayaw:get_bool())
        yawaddint:set_int(ayawadd:get_int())
        if atype:get_int() == 0 then
            yawbase:set_bool(false)
        else
            yawbase:set_bool(true)
        spin:set_bool(aspin:get_bool())
        spinrange:set_int(aspinadd:get_int())
        spinspeed:set_int(aspinrange:get_int())
        jitter:set_bool(ajitter:get_bool())
        jitterrandom:set_bool(ajitterrandom:get_bool())
        jitterrange:set_int(ajitterrange:get_int())
        enabledesync:set_bool(afake:get_bool())
        desync:set_int(afakeam:get_int())
        compAngle:set_int(acompf:get_int())
        freestandFake:set_int(afree:get_int())
        flipJittFake:set_bool(afakejit:get_bool())
        end
    end
    if playerstate == 5 then
        pitch:set_int(adpitch:get_int())
        yawadd:set_bool(adyaw:get_bool())
        yawaddint:set_int(adyawadd:get_int())
        if adtype:get_int() == 0 then
            yawbase:set_bool(false)
        else
            yawbase:set_bool(true)
        spin:set_bool(adspin:get_bool())
        spinrange:set_int(adspinadd:get_int())
        spinspeed:set_int(adspinrange:get_int())
        jitter:set_bool(adjitter:get_bool())
        jitterrandom:set_bool(adjitterrandom:get_bool())
        jitterrange:set_int(adjitterrange:get_int())
        enabledesync:set_bool(adfake:get_bool())
        desync:set_int(adfakeam:get_int())
        compAngle:set_int(adcompf:get_int())
        freestandFake:set_int(adfree:get_int())
        flipJittFake:set_bool(adfakejit:get_bool())
        end
    end
    if playerstate == 6 then
        pitch:set_int(dpitch:get_int())
        yawadd:set_bool(dyaw:get_bool())
        yawaddint:set_int(dyawadd:get_int())
        if dtype:get_int() == 0 then
            yawbase:set_bool(false)
        else
            yawbase:set_bool(true)
        spin:set_bool(dspin:get_bool())
        spinrange:set_int(dspinadd:get_int())
        spinspeed:set_int(dspinrange:get_int())
        jitter:set_bool(djitter:get_bool())
        jitterrandom:set_bool(djitterrandom:get_bool())
        jitterrange:set_int(djitterrange:get_int())
        enabledesync:set_bool(dfake:get_bool())
        desync:set_int(dfakeam:get_int())
        compAngle:set_int(dcompf:get_int())
        freestandFake:set_int(dfree:get_int())
        flipJittFake:set_bool(dfakejit:get_bool())
        end
    end
    end
    
    
    function on_create_move()
        AABUILDER()
    end
    
    function on_paint()
        on_menu_check()
        rollresolver()
        indicators_render()
    end
         
