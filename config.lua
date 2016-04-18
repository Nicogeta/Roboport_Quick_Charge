--------------------------------------------------------------------------------------------
--     roboport_auto_replace_method

--     Valid values for this are: "onresearch", "onbuild", "both", "neither"
--     "onresearch": Whenever a new Roboport Upgrade has been researched, all
--                   previous-version roboports on the map will be replaced with the
--                   newest available version.
--     "onbuild":    Whenever a Roboport of any previous version is placed on the
--                   map (you might have some lying around in storage or on a belt), it
--                   will be upgraded to the newest available version.
--     "both":       Will have the effects of "onresearch" and "onbuild"
--     "neither":    You will have to do all replacing and upgrading of roboports manually.
roboport_auto_replace_method = "both"
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--     roboport_recipe_update


--     Valid values are: true, false
--     true:         Whenever a new Roboport Upgrade has been researched, any
--                   Assembling Machines that are making roboports will automatically
--                   have their recipe changed to the latest available version.
--     false:        You will have to update/set your assembling machines manually
--                   to the newest Roboport Upgrade recipe.
roboport_recipe_update = true
--------------------------------------------------------------------------------------------