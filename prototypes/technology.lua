data:extend(
{
{
    type = "technology",
    name = "qc-roboport-upgrade-1",
    icon = "__Roboport_Quick_Charge__/graphics/technology/roboport-speed.png",
	icon_size = 128,
    prerequisites = {"logistic-robotics", "construction-robotics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "qcm-roboport-upgrade-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "qc-roboport-upgrade-1"
      },
    },
    unit =
		{
			count = 50,
			ingredients =
				{
					{"science-pack-1", 3},
					{"science-pack-2", 3}
				},
			time = 30
		},
	upgrade = true,
	order = "c-k-h-a"
},
{
    type = "technology",
    name = "qc-roboport-upgrade-2",
    icon = "__Roboport_Quick_Charge__/graphics/technology/roboport-speed.png",
	icon_size = 128,
    prerequisites = {"qc-roboport-upgrade-1"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "qcm-roboport-upgrade-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "qc-roboport-upgrade-2"
      },
    },
    unit =
		{
			count = 100,
			ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 2}
				},
			time = 30
		},
	upgrade = true,
	order = "c-k-h-a"
},
{
    type = "technology",
    name = "qc-roboport-upgrade-3",
    icon = "__Roboport_Quick_Charge__/graphics/technology/roboport-speed.png",
	icon_size = 128,
    prerequisites = {"qc-roboport-upgrade-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "qcm-roboport-upgrade-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "qc-roboport-upgrade-3"
      },
    },
    unit =
		{
			count = 150,
			ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
					{"alien-science-pack", 1}
				},
			time = 50
		},
	upgrade = true,
	order = "c-k-h-a"
},
{
    type = "technology",
    name = "qc-roboport-upgrade-4",
    icon = "__Roboport_Quick_Charge__/graphics/technology/roboport-speed.png",
	icon_size = 128,
    prerequisites = {"qc-roboport-upgrade-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "qcm-roboport-upgrade-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "qc-roboport-upgrade-4"
      },
    },
    unit =
		{
			count = 200,
			ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
					{"science-pack-3", 1},
					{"alien-science-pack", 1}
				},
			time = 60
		},
	upgrade = true,
	order = "c-k-h-a"
},
{
    type = "technology",
    name = "qc-roboport-upgrade-5",
    icon = "__Roboport_Quick_Charge__/graphics/technology/roboport-speed.png",
	icon_size = 128,
    prerequisites = {"qc-roboport-upgrade-4"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "qcm-roboport-upgrade-5"
      },
	  {
        type = "unlock-recipe",
        recipe = "qc-roboport-upgrade-5"
      },
    },
    unit =
		{
			count = 300,
			ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 2},
					{"science-pack-3", 2},
					{"alien-science-pack", 2}
				},
			time = 60
		},
	upgrade = true,
	order = "c-k-h-a"
},
{
    type = "technology",
    name = "qc-roboport-upgrade-6",
    icon = "__Roboport_Quick_Charge__/graphics/technology/roboport-speed.png",
	icon_size = 128,
    prerequisites = {"qc-roboport-upgrade-5"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "qcm-roboport-upgrade-6"
      },
	  {
        type = "unlock-recipe",
        recipe = "qc-roboport-upgrade-6"
      },
    },
    unit =
		{
			count = 400,
			ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 2},
					{"science-pack-3", 2},
					{"alien-science-pack", 2}
				},
			time = 60
		},
	upgrade = true,
	order = "c-k-h-a"
},
}
)