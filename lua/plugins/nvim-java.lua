return {
	"nvim-java/nvim-java",
	config = false,
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			opts = {
				servers = {
					-- Your JDTLS configuration goes here
					jdtls = {
						settings = {
							java = {
								configuration = {
									runtimes = {
										{
											name = "openjdk-17",
											path = "/usr/lib/jvm/java-17-openjdk-amd64/bin",
										},
									},
								},
							},
						},
					},
				},
				setup = {
					jdtls = function()
						-- Your nvim-java configuration goes here
						require("java").setup({
							root_markers = {
								"settings.gradle",
								"settings.gradle.kts",
								"pom.xml",
								"build.gradle",
								"mvnw",
								"gradlew",
								"build.gradle",
								"build.gradle.kts",
							},
						})
						require("lspconfig").jdtls.setup({
							settings = {
								java = {
									configuration = {
										runtimes = {
											{
												name = "JavaSE-21",
												path = "/opt/jdk-21",
												default = true,
											},
										},
									},
								},
							},
						})
					end,
				},
			},
		},
	},
}
