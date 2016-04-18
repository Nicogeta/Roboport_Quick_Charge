data:extend({
  
  {
    type = "recipe",
    name = "qc-roboport-upgrade-1",
	order = "z-a-a",
	energy_required = 0.01,
    enabled = false,
    ingredients =
    {
      {"roboport", 1},
    },
    result = "qc-roboport-upgrade-1"
  },
  {
    type = "recipe",
    name = "qc-roboport-upgrade-2",
	order = "z-a-b",
	energy_required = 0.01,
    enabled = false,
    ingredients =
    {
      {"qc-roboport-upgrade-1", 1},
    },
    result = "qc-roboport-upgrade-2"
  },
  {
    type = "recipe",
    name = "qc-roboport-upgrade-3",
	order = "z-a-c",
	energy_required = 0.01,
    enabled = false,
    ingredients =
    {
      {"qc-roboport-upgrade-2", 1},
    },
    result = "qc-roboport-upgrade-3"
  },
  {
    type = "recipe",
    name = "qc-roboport-upgrade-4",
	order = "z-a-d",
	energy_required = 0.01,
    enabled = false,
    ingredients =
    {
      {"qc-roboport-upgrade-3", 1},
    },
    result = "qc-roboport-upgrade-4"
  },
  {
    type = "recipe",
    name = "qc-roboport-upgrade-5",
	order = "z-a-e",
	energy_required = 0.01,
    enabled = false,
    ingredients =
    {
      {"qc-roboport-upgrade-4", 1},
    },
    result = "qc-roboport-upgrade-5"
  },
  {
    type = "recipe",
    name = "qc-roboport-upgrade-6",
	order = "z-a-f",
	energy_required = 0.01,
    enabled = false,
    ingredients =
    {
      {"qc-roboport-upgrade-5", 1},
    },
    result = "qc-roboport-upgrade-6"
  },
  {
    type = "recipe",
    name = "qcm-roboport-upgrade-1",
	order = "z-b-a",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 45},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "qc-roboport-upgrade-1",
    energy_required = 15
  },
  {
    type = "recipe",
    name = "qcm-roboport-upgrade-2",
	order = "z-b-b",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 45},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "qc-roboport-upgrade-2",
    energy_required = 15
  },
  {
    type = "recipe",
    name = "qcm-roboport-upgrade-3",
	order = "z-b-c",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 45},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "qc-roboport-upgrade-3",
    energy_required = 15
  },
  {
    type = "recipe",
    name = "qcm-roboport-upgrade-4",
	order = "z-b-d",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 45},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "qc-roboport-upgrade-4",
    energy_required = 15
  },
  {
    type = "recipe",
    name = "qcm-roboport-upgrade-5",
	order = "z-b-e",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 45},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "qc-roboport-upgrade-5",
    energy_required = 15
  },
  {
    type = "recipe",
    name = "qcm-roboport-upgrade-6",
	order = "z-b-f",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 45},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "qc-roboport-upgrade-6",
    energy_required = 15
  },
  
})