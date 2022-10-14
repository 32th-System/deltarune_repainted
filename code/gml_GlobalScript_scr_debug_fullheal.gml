function scr_debug_fullheal() //gml_Script_scr_debug_fullheal
{
    if (global.chapter == 1)
    {
        with (obj_dmgwriter_ch1)
        {
            if (delaytimer >= 1)
                killactive = true
        }
        scr_healallitemspell_ch1(999)
        for (i = 0; i < 3; i++)
        {
            with (global.charinstance[i])
                tu--
        }
    }
    else
    {
        with (obj_dmgwriter)
        {
            if (delaytimer >= 1)
                killactive = true
        }
        scr_healallitemspell(999)
        for (i = 0; i < 3; i++)
        {
            with (global.charinstance[i])
                tu--
        }
    }
    return;
}

