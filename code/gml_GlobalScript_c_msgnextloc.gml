function c_msgnextloc(argument0, argument1) //gml_Script_c_msgnextloc
{
    var str = argument0
    var localized_string_id = argument1
    str = scr_84_get_lang_string(localized_string_id)
    c_msgnext(str)
}

