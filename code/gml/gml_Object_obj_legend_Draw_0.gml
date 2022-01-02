if (os_type == os_macosx)
    draw_screen = skiptimer < 19
if draw_screen
{
    if (con == 1)
    {
        textimer += 1
        if (textimer == 6)
        {
            global.typer = 41
            global.msg[0] = stringsetloc("Once upon a time, a FANFIC&was whispered among REDDIT.", "obj_legend_slash_Draw_0_gml_13_0")
            w = instance_create(40, 160, obj_writer)
            w.depth = -10
        }
        if (textimer == 220)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("It was&a LEGEND&of CRINGE.", "obj_legend_slash_Draw_0_gml_21_0")
            w = instance_create(40, 160, obj_writer)
            w.depth = -10
            global.msg[0] = stringsetloc("It was&a LEGEND&of BASED.", "obj_legend_slash_Draw_0_gml_24_0")
            w = instance_create(220, 160, obj_writer)
            w.depth = -10
        }
        if (textimer == 340)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("It was&a LEGEND&of UNDER.", "obj_legend_slash_Draw_0_gml_32_0")
            w = instance_create(40, 160, obj_writer)
            w.depth = -10
            global.msg[0] = stringsetloc("It was&a LEGEND&of TALE.", "obj_legend_slash_Draw_0_gml_35_0")
            w = instance_create(220, 160, obj_writer)
            w.depth = -10
        }
        if (textimer == 460)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("This is the legend of&^3DELTA NUTS IN YO FACE", "obj_legend_slash_Draw_0_gml_43_0")
            w = instance_create(80, 160, obj_writer)
            w.depth = -10
        }
        draw_sprite(pic, 0, 60, (48 + yoff))
        ytimer += 1
        if (ytimer >= 4 && yoff > -260)
        {
            ytimer = 0
            yoff -= 2
        }
        if (yoff <= -260)
        {
            contimer += 1
            if (contimer == 40)
                audio_pause_sound(global.currentsong[1])
            if (contimer == 100)
            {
                con = 2
                contimer = 0
                chunkfade = 1
                alarm[4] = 90
            }
        }
    }
    if (con == 2)
    {
        draw_sprite(pic, 0, 60, (48 + yoff))
        contimer += 1
        if (contimer == 40)
        {
            with (obj_writer)
                instance_destroy()
        }
    }
    if (con == 3)
    {
        pic = spr_introimage1
        audio_sound_set_track_position(global.currentsong[1], 19.656)
        audio_resume_sound(global.currentsong[1])
        con = 4
        contimer = 0
        chunkfade = 0
        global.typer = 40
        global.msg[0] = stringsetloc("For millenia, REDDITORS and TWITTER USERS have lived in peace^6,%", "obj_legend_slash_Draw_0_gml_98_0")
        global.msg[1] = stringsetloc("Bringing shitty memes to&[ZA WARUDO].", "obj_legend_slash_Draw_0_gml_99_0")
        w = instance_create(40, 160, obj_writer)
    }
    if (con == 4)
    {
        draw_sprite(pic, 0, 60, 28)
        contimer += 1
        if (contimer == 270)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("But if somebody&were to get cancelled...", "obj_legend_slash_Draw_0_gml_113_0")
            w = instance_create(70, 160, obj_writer)
        }
        if (contimer >= 276)
        {
            c_chunkamt = 0
            contimer = 0
            con = 5
        }
    }
    if (con == 5)
    {
        if (contimer <= 200)
            draw_sprite(pic, 0, 60, 28)
        con_alph = 0
        c_chunkamt += 0.05
        if (c_chunkamt >= 0.25)
            con_alph = 0.25
        if (c_chunkamt >= 0.5)
            con_alph = 0.5
        if (c_chunkamt >= 0.75)
            con_alph = 0.75
        if (c_chunkamt >= 1)
            con_alph = 1
        if (contimer <= 200)
            draw_sprite_ext(pic, 1, 60, 28, 1, 1, 0, c_white, con_alph)
        contimer += 1
        if (contimer == 120)
            chunkfade = 1
        if (contimer == 130)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("A terrible cumlamity would occur.", "obj_legend_slash_Draw_0_gml_151_0")
            w = instance_create(40, 80, obj_writer)
        }
        if (contimer == 210)
        {
            chunkfade = 0
            fadespeed = 0.2
        }
        if (contimer == 230)
        {
            chunkfade = 1
            fadespeed = 0.03
            fadecolor = c_white
        }
        if (contimer == 275)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("The sky will literally&start shitting on the&ground", "obj_legend_slash_Draw_0_gml_170_0")
            w = instance_create(80, 185, obj_writer)
            fadespeed = 0.05
            con = 6
            chunkfade = 0
            contimer = 0
            border = 0
            c_chunkamt = 0
            pic = spr_introimage2
        }
    }
    if (con == 6)
    {
        draw_sprite(pic, 0, 0, 0)
        con_alph = 0
        if (contimer >= 276)
            c_chunkamt += 0.05
        if (c_chunkamt >= 0.25)
            con_alph = 0.25
        if (c_chunkamt >= 0.5)
            con_alph = 0.5
        if (c_chunkamt >= 0.75)
            con_alph = 0.75
        if (c_chunkamt >= 1)
            con_alph = 1
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph)
        contimer += 1
        if (contimer == 138)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("And the land will&fard with fear.", "obj_legend_slash_Draw_0_gml_205_0")
            w = instance_create(80, 185, obj_writer)
        }
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Then^1, her cheeks pounding...", "obj_legend_slash_Draw_0_gml_212_0")
            w = instance_create(60, 185, obj_writer)
        }
        if (contimer == 414)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("DEVIANTART USERS will finally&draw normal porn.", "obj_legend_slash_Draw_0_gml_219_0")
            w = instance_create(40, 185, obj_writer)
        }
        if (contimer == 520)
        {
            fadespeed = 0.04
            fadecolor = c_black
            chunkfade = 1
        }
        if (contimer == 551)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Only then^1, shining like a diamond...", "obj_legend_slash_Draw_0_gml_233_0")
            w = instance_create(50, 185, obj_writer)
            contimer = 0
            c_chunkamt = 0
            chunkfade = 0
            con = 7
            c_chunkamt = 0
            pic = spr_introimage3
        }
    }
    if (con == 7)
    {
        draw_sprite(pic, 0, 0, 0)
        if (contimer == 138)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Three BEES in a TURTLENECK SWEATER will change everything.", "obj_legend_slash_Draw_0_gml_253_0")
            w = instance_create(40, 185, obj_writer)
        }
        con_alph = 0
        if (contimer >= 138)
            c_chunkamt += 0.05
        if (c_chunkamt >= 0.25)
            con_alph = 0.25
        if (c_chunkamt >= 0.5)
            con_alph = 0.5
        if (c_chunkamt >= 0.75)
            con_alph = 0.75
        if (c_chunkamt >= 1)
            con_alph = 1
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph)
        contimer += 1
        if (contimer == 246)
        {
            fadespeed = 0.04
            fadecolor = c_black
            chunkfade = 1
        }
        if (contimer >= 277)
        {
            with (obj_writer)
                instance_destroy()
            contimer = 0
            c_chunkamt = 0
            chunkfade = 0
            con = 8
            c_chunkamt = 0
            pic = spr_introimage4
        }
    }
    if (con == 8)
    {
        draw_sprite(pic, 0, 0, 0)
        con_alph = 0
        if (contimer == 4)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("A FEMBOY,", "obj_legend_slash_Draw_0_gml_301_0")
            w = instance_create(20, 185, obj_writer)
        }
        if (contimer == 69)
        {
            global.msg[0] = stringsetloc("A CRACK ADDICT,", "obj_legend_slash_Draw_0_gml_309_0")
            w = instance_create(95, 185, obj_writer)
        }
        if (contimer == 138)
        {
            global.msg[0] = stringsetloc("And a&UWU OWO.", "obj_legend_slash_Draw_0_gml_317_0")
            w = instance_create(220, 185, obj_writer)
        }
        if (contimer >= 69 && contimer <= 138)
        {
            c_chunkamt += 0.05
            if (c_chunkamt >= 0.25)
                con_alph = 0.25
            if (c_chunkamt >= 0.5)
                con_alph = 0.5
            if (c_chunkamt >= 0.75)
                con_alph = 0.75
            if (c_chunkamt >= 1)
                con_alph = 1
            if (c_chunkamt > 1)
                c_chunkamt = 1
        }
        if (contimer >= 138)
        {
            con_alph = 1
            c_chunkamt += 0.05
            if (c_chunkamt >= 1.25)
                con_alph = 1.25
            if (c_chunkamt >= 1.5)
                con_alph = 1.5
            if (c_chunkamt >= 1.75)
                con_alph = 1.75
            if (c_chunkamt >= 2)
                con_alph = 2
        }
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph)
        draw_sprite_ext(pic, 2, 0, 0, 1, 1, 0, c_white, (con_alph - 1))
        contimer += 1
        if (contimer == 246)
        {
            fadespeed = 0.04
            fadecolor = c_black
            chunkfade = 1
        }
        if (contimer >= 277)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Only they can consume the cum fountains", "obj_legend_slash_Draw_0_gml_356_0")
            w = instance_create(40, 185, obj_writer)
            contimer = 0
            c_chunkamt = 0
            chunkfade = 0
            con = 9
            pic = spr_introimage5
        }
    }
    if (con == 9)
    {
        draw_sprite(pic, 0, 0, 0)
        con_alph = 0
        if (contimer >= 276)
            c_chunkamt += 0.05
        if (c_chunkamt >= 0.25)
            con_alph = 0.25
        if (c_chunkamt >= 0.5)
            con_alph = 0.5
        if (c_chunkamt >= 0.75)
            con_alph = 0.75
        if (c_chunkamt >= 1)
            con_alph = 1
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph)
        contimer += 1
        if (contimer == 138)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("And banish [Made In Heaven]", "obj_legend_slash_Draw_0_gml_387_0")
            w = instance_create(60, 185, obj_writer)
        }
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Only then will VALVE&update TF2,", "obj_legend_slash_Draw_0_gml_394_0")
            w = instance_create(80, 185, obj_writer)
        }
        if (contimer == 414)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("And bring another HALF LIFE&that isn't VR", "obj_legend_slash_Draw_0_gml_401_0")
            w = instance_create(40, 185, obj_writer)
            fadespeed = 0.04
            fadecolor = c_black
            chunkfade = 1
        }
        if (contimer >= 552)
        {
            xoff = 0
            yoff = 0
            fadespeed = 0.02
            contimer = 0
            c_chunkamt = 0
            chunkfade = 0
            con = 10
            c_chunkamt = 0
            pic = spr_introimage6
            border = 1
            ytimer = 0
            xtimer = 0
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Today, the SQUIRTER OF DARKNESS-", "obj_legend_slash_Draw_0_gml_426_0")
            w = instance_create(40, 160, obj_writer)
        }
    }
    if (con == 10)
    {
        draw_sprite(pic, 0, (60 + xoff), (28 + yoff))
        ytimer += 1
        if (ytimer >= 4 && yoff > -110)
        {
            ytimer = 0
            yoff -= 2
        }
        contimer += 1
        if (contimer == 138)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("The geyser that&gives this land form-", "obj_legend_slash_Draw_0_gml_451_0")
            w = instance_create(80, 160, obj_writer)
        }
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("Stands tall at the&center of the mansion.", "obj_legend_slash_Draw_0_gml_459_0")
            w = instance_create(80, 160, obj_writer)
        }
        if (contimer == 444)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("But recently, another UPDATE&for ANIMAL CROSSING NEW HORIZON appeared...", "obj_legend_slash_Draw_0_gml_466_0")
            w = instance_create(40, 160, obj_writer)
        }
        if (contimer == 640)
        {
            with (obj_writer)
                instance_destroy()
            global.msg[0] = stringsetloc("And with it^1, the balance of&CRINGE and BASED begins to (under)fell", "obj_legend_slash_Draw_0_gml_473_0")
            w = instance_create(50, 160, obj_writer)
        }
        if (contimer >= 444)
        {
            xtimer += 1
            if (xoff > -60 && xtimer >= 4)
            {
                xtimer = 0
                xoff -= 2
            }
        }
        if (contimer == 760)
        {
            fadespeed = 0.02
            chunkfade = 1
        }
        if (contimer == 880 && skipped == false)
        {
            snd_free(global.currentsong[0])
            global.flag[6] = 0
            f = instance_create(0, 0, obj_fadeout)
            f.fadespeed = 0.02
        }
        if (contimer == 960 && skipped == false)
        {
            if (global.plot == 20)
            {
                instance_create(0, 0, obj_persistentfadein)
                room_goto(room_castle_front)
            }
            else
                room_goto(PLACE_LOGO)
        }
    }
    if (border == 1)
    {
        draw_set_color(c_black)
        draw_rectangle(-10, -10, 330, 27, false)
        draw_rectangle(-10, -10, 59, 300, false)
        draw_rectangle(400, -10, 260, 300, false)
        draw_rectangle(-10, 400, 330, 138, false)
    }
    if (chunkfade == 0 && chunkamt > 0)
        chunkamt -= fadespeed
    if (chunkfade == 1 && chunkamt < 1)
        chunkamt += fadespeed
    draw_set_color(fadecolor)
    alph = 0
    if (chunkamt >= 0.25)
        alph = 0.25
    if (chunkamt >= 0.5)
        alph = 0.5
    if (chunkamt >= 0.75)
        alph = 0.75
    if (chunkamt >= 1)
        alph = 1
    draw_set_alpha(alph)
    draw_rectangle(-10, -10, 330, 330, false)
}
draw_set_alpha(1)
if (ingame == false)
{
    if (button1_p() && skipped == false)
    {
        skipped = true
        skiptimer = 0
        f = instance_create(0, 0, obj_fadeout)
        f.fadespeed = 0.08
        mus_volume(global.currentsong[1], 0, 15)
    }
    if (skipped == true)
        skiptimer += 1
    if (skiptimer == 19)
    {
        snd_free(global.currentsong[0])
        global.flag[6] = 0
    }
    if (skiptimer == 20)
        room_goto(PLACE_LOGO)
}
