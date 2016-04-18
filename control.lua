require "util"
require "defines"
require "config"

local itemList = {"roboport", "qc-roboport-upgrade-1", "qc-roboport-upgrade-2", "qc-roboport-upgrade-3", "qc-roboport-upgrade-4", "qc-roboport-upgrade-5", "qc-roboport-upgrade-6"}
local recipeList = {"roboport", "qcm-roboport-upgrade-1", "qcm-roboport-upgrade-2", "qcm-roboport-upgrade-3", "qcm-roboport-upgrade-4", "qcm-roboport-upgrade-5", "qcm-roboport-upgrade-6"}

script.on_event(defines.events.on_research_finished, function(event)
  
	local tech = event.research
	if string.sub(tech.name, 1, 19) == "qc-roboport-upgrade" then
		local upgradeNumber = string.sub(tech.name, 21, -1)
		if roboport_auto_replace_method == "both" or roboport_auto_replace_method == "onresearch" or roboport_recipe_update then
			upgradeRoboports(upgradeNumber)
		end
	end
	
end)

if roboport_auto_replace_method == "both" or roboport_auto_replace_method == "onbuild" then
	script.on_event(defines.events.on_built_entity, function(event)
		onBuiltEntity(event)
	end)
	
	script.on_event(defines.events.on_robot_built_entity, function(event)
		onBuiltEntity(event)
	end)
end

function onBuiltEntity(event)
	local entity = event.created_entity
	if entity.type == "roboport" then
		local versionNumber = getVersion()
		
		if versionNumber > 0 then
			local pos = entity.position
			local backerName = entity.backer_name
			entity.destroy()
			newRobo = game.players[1].surface.create_entity({name=itemList[versionNumber], position=pos, force="player"})
			newRobo.backer_name = backerName
		end
	end
end

function getVersion()
	local versionNumber = 0
	for i = 7, 2, -1 do
		if game.players[1].force.recipes[recipeList[i]].enabled then
			versionNumber = i
			break
		end
	end
	return versionNumber
end

function upgradeRoboports(upgrade)

	local surface = game.players[1].surface
	for c in surface.get_chunks() do
		--replace all roboports preserving contents
		if roboport_auto_replace_method == "both" or roboport_auto_replace_method == "onresearch" then
			for _, entity in ipairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name=itemList[upgrade+0]})) do
				local pos = entity.position
				local countC = entity.get_inventory(1).get_item_count("construction-robot")
				local countL = entity.get_inventory(1).get_item_count("logistic-robot")
				local countR = entity.get_inventory(2).get_item_count("repair-pack")
				local backerName = entity.backer_name
				entity.destroy()
				newRobo = surface.create_entity({name=itemList[upgrade+1], position=pos, force="player"})
				if countC > 0 then
					newRobo.get_inventory(1).insert({name="construction-robot", count=countC})
				end
				if countL > 0 then
					newRobo.get_inventory(1).insert({name="logistic-robot", count=countL})
				end
				if countR > 0 then
					newRobo.get_inventory(2).insert({name="repair-pack", count=countR})
				end
				newRobo.backer_name = backerName
			end
		end
		--change any roboport assembling machines to have upgraded recipe and conver any old roboports in the output slot to new ones
		if roboport_recipe_update then
			for _, entity in ipairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, type="assembling-machine"})) do
				if entity.recipe.name == recipeList[upgrade+0] then
					local itemcount = entity.get_output_inventory().get_item_count(itemList[upgrade+0])
					entity.recipe=game.players[1].force.recipes[recipeList[upgrade+1]]
					if itemcount > 0 then
						entity.get_output_inventory().clear()
						entity.get_output_inventory().insert({name=itemList[upgrade+1], count=itemcount})
					end
				end
			end
		end
	end
	
end

--TODO:
--Update request chests, request player slot