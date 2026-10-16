//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//										---------------------------------------- ver. 5.7 							                \\
//																																    \\
//						If this config helped you, you wanna be extra nice, let me know by giving a little back or					\\
//										check out my YouTube and Twitch! -dacooderr													\\
//											https://streamlabs.com/dacooderr/tip               										\\
//__________________________________________________________________________________________________________________________________\\	

"GameInfo"
{
	game 		"citadel"
	title 		"Citadel"
	type		multiplayer_only
	nomodels 1
	nohimodel 1
	nocrosshair 0
	hidden_maps
	{
		"test_speakers"			1
		"test_hardware"			1
	}
	nodegraph 0
	perfwizard 0
	tonemapping 0
	GameData	"citadel.fgd"

	PGIVersion "39A735A413003C88A806B364C32DFC6D077E551B9E4EC6C7B11D41E8E67BFA0C"

	Localize
	{
		DuplicateTokensAssert	1
	}

	SupportedLanguages
	{
		"brazilian" "3"
		"czech" "3"
		"english" "3"
		"french" "3"
		"german" "3"
		"italian" "3"
		"indonesian" "3"
		"japanese" "3"
		"koreana" "3"
		"latam" "3"
		"polish" "3"
		"russian" "3"
		"schinese" "3"
		"spanish" "3"
		"thai" "3"
		"turkish" "3"
		"ukrainian" "3"
	}
	
    FileSystem
    {
        //
        // The code that loads this file automatically does a few things here:
        //
        // 1. For each "Game" search path, it adds a "GameBin" path, in <dir>\bin
        // 2. For each "Game" search path, it adds another "Game" path in front of it with _<language> at the end.
        //    For example: c:\hl2\cstrike on a french machine would get a c:\hl2\cstrike_french path added to it.
        // 3. If no "Mod" key, for the first "Game" search path, it adds a search path called "MOD".
        // 4. If no "Write" key, for the first "Game" search path, it adds a search path called "DEFAULT_WRITE_PATH".
        //

        //
        // Search paths are relative to the exe directory\..\
        //

        

// Deadlock Mod Manager - Start

		SearchPaths
		{
			Game		citadel/grimoire
			Game		citadel/addons
			Game_UILanguage		citadel_*LANGUAGE*
			Game_LowViolence		citadel_lv
            Game_Language       citadel_*LANGUAGE*
            Mod                 citadel
            Write               citadel          
            Game                citadel
            Mod                 core
            Write               core
            Game                core
		}
// Deadlock Mod Manager - End
    }
	
	MaterialSystem2
	{
		RenderModes
		{
			game Default
			game Forward
			game Deferred
			game Outline
			game Depth
			game FrontDepth
			game ShadowSilhouette

			dev ToolsVis // Visualization modes for all shaders (lighting only, normal maps only, etc.)
			dev ToolsWireframe // This should use the ToolsVis mode above instead of being its own mode\

			tools ToolsUtil // Meant to be used to render tools sceneobjects that are mod-independent, like the origin grid
		}
	}

	MaterialEditor
	{
		"DefaultShader" "environment_texture_set"
	}

	NetworkSystem
    {
        BetaUniverse
        {
            FakeLag             "0" 
            FakeLoss            "0" 
            // FakeReorderPct   "0.05"
            // FakeReorderDelay "10"
            // FakeJitter       "low"
            // Turning off fake jitter for now while I work on making the CQ totally solid
            FakeReorderPct   "0"
            FakeReorderDelay "0"
            FakeJitter       "off"
        }

		"SkipRedundantChangeCallbacks"	"1"
	}

    RenderSystem
    {
        // Stolen from CS2
        AllowPartialMipChainImmediateTexLoads "1"
        UseHardwareGammaRamp                  "0" // Fullscreen gamma controlled in postprocessing
        // End of stolen from CS2

        GraphicsPipelineLibrary            "1"    
        IndexBufferPoolSizeMB              "64"   
        LowLatency                         "1"    
        MinStreamingPoolSizeMB             "512"  
        MinStreamingPoolSizeMBTools        "2048" 
        SwapChainSampleableDepth           "1"    
        Use32BitDepthBuffer                "0"    
        Use32BitDepthBufferWithoutStencil  "0"  
        UseReverseDepth                    "1"    
        VulkanAdditionalShaderCache        "vulkan_shader_cache.foz"
        VulkanDefrag                       "1"  
        VulkanMutableSwapchain             "1"   
        VulkanOnlyTestProbability          "0"  
        VulkanOnly_Linux                   "0"  
        VulkanRequireDescriptorIndexing    "1"   
        VulkanRequireSubgroupWaveOpSupport "1"   
        VulkanStagingPMBSizeLimitMB        "384" 
        VulkanSteamAppShaderCache          "1"         
        VulkanSteamDownloadedShaderCache   "1"       
        VulkanSteamShaderCache             "1"        



        //MinDXLevel                            "80"
        //MaxPreloadTextureResolution           "2"
        //VulkanRequestSM6                      "true"
        // VulkanUseExternalSubpassDependency "true"
        // VulkanRequireFullGPURayTracing     "true"


        //AllowPartialMipChainImmediateTexLoads "true"


    }

	NVNGX
	{
		AppID 103371621
		SupportsDLSS 1
	}

	Engine2
	{
		HasModAppSystems 1
		Capable64Bit 1
		URLName citadel
		RenderingPipeline
		{
			SupportsMSAA 0
			DistanceField 1
		}
		PauseSinglePlayerOnGameOverlay 1
		PauseOnCtrlConsole 0 // Src2 issues a 'setpause' on holding down CTRL + toggleconsole key, disable this for Deadlock.
		DefensiveConCommands 1
		DisableLoadingPlaque 1
		LocalServerClientAccess 1

		"MapMaxCoord" "32768"
	}

	ContentBuilder
	{
		ResourceCompilerDirectXUsesWARP "0"
	}

	SoundSystem
	{
		SteamAudioEnabled            "1"
		WaveDataCacheSizeMB          "256"
		"UsePlatTime"            "1"
	}
	Sounds
	{
		HierarchicalEncodingFiles	 "1"
	}

	ToolsEnvironment
	{
		"Engine"	"Source 2"
		"ToolsDir"	"../sdktools"	// NOTE: Default Tools path. This is relative to the mod path.
	}
	
	pulse
	{
		"pulse_enabled"					"1"
	}

	Hammer
	{
		"fgd"					"citadel.fgd"	// NOTE: This is relative to the 'game' path.
		"GameFeatureSet"		"Citadel"
		"DefaultSolidEntity"	"trigger_multiple"
		"DefaultPointEntity"	"info_player_start"
		"NavMarkupEntity"		"func_nav_markup"
		"OverlayBoxSize"			"8"
		"TileMeshesEnabled"			"1"
		"RenderMode"				"ToolsVis"
		"CreateRenderClusters"		"1"
		"DefaultMinDrawVolumeSize"	"2048"
		"DefaultMinTrianglesPerCluster"	"16384"
		"TileGridSupportsBlendHeight"	"1"
		"TileGridBlendDefaultColor"	"0 255 0"
		"LoadScriptEntities" "0"
		"UsesBakedLighting" "0"
		"UseAnalyticGrid" "0"
		"SupportsDisplacementMapping" "0"
		"SteamAudioEnabled"				"1"
		"LatticeDeformerEnabled"		"1"
		"ShadowAtlasWidth" "0"
		"ShadowAtlasHeight" "0"
		"TimeSlicedShadowMapRendering" "1"
	}

	SoundTool
	{
		"DefaultSoundEventType" "src1_3d"

		SoundEventBaseOptions
		{
			"Base.Announcer.VO.2d" ""
			"Base.World.VO.Emitter.3d" ""
			"Base.Hero.VO.Ping.2d" ""
			"Base.Hero.VO.2d" ""
			"Base.Hero.VO.3d" ""
			"Base.Hero.VO.Ability.3d" ""
			"Base.Hero.VO.Ultimate.3d" ""
			"Base.Hero.VO.Dash.3d" ""
			"Base.Hero.VO.Effort.3d" ""
			"Base.Hero.VO.Pain.3d" ""
			"Base.Hero.VO.Melee.3d" ""
			"Base.Hero.VO.Death.3d" ""
		}
	}

	RenderPipelineAliases
	{
	}

	ResourceCompiler
	{
		// Overrides of the default builders as specified in code, this controls which map builder steps
		// will be run when resource compiler is run for a map without specifiying any specific map builder
		// steps. Additionally this controls which builders are displayed in the hammer build dialog.
		DefaultMapBuilders
		{
			"bakedlighting"	"0"	// Enable lightmapping during compile time		
			"envmap"	"0" // turned off since it currently causes an assert and doesn't work due to some build issue
			"nav"		"1"	// Generate nav mesh data
			"sareverb"      "0" // Bake Steam Audio reverb
			"sapaths"	"0" // Bake Steam Audio pathing
			"sacustomdata"	"1"	// Bake Steam Audio custom data
		}

		// Game specific steps run after the map has been built, in the order they are listed here
		GameSpecificPostMapBuildSteps
		{
			"pve_nav_cache"	"1"	// Bake the spots the PVE directors spawn things on
		}

		MeshCompiler
		{
			OptimizeForMeshlets 1
			TrianglesPerMeshlet 32	// Maximum valid value currently is 126
			UseMikkTSpace 1
			EncodeVertexBuffer 1
            EncodeVertexBufferVersion 1
            EncodeVertexBufferLevel 3
			EncodeIndexBuffer 1
			SplitDepthStream 1
		}

		WorldRendererBuilder
		{
			VisibilityGuidedMeshClustering      "1"
			MinimumTrianglesPerClusteredMesh    "8192"
			MinimumVerticesPerClusteredMesh     "8192"
			MinimumVolumePerClusteredMesh       "8192"       // ~20x20x20 cube
			MaxPrecomputedVisClusterMembership  "96"
			MaxCullingBoundsGroups              "128"
			UseAggregateInstances				"1"
			AggregateInstancingMeshlets			"1"
			BakePropsWithExtraVertexStreams		"1"
			MergeTranslucents					"1"
		}

		BakedLighting
		{
			Version 4
			ImportanceVolumeTransitionRegion 128            // distance we transition from high to low resolution charts 
			LightmapChannels
			{
				direct_light_shadows 0
				debug_chart_color 1
				directional_irradiance_sh2_dc 0
				
				directional_irradiance_sh2_r
				{
					CompressedFormat DXT1
				}
				
				directional_irradiance_sh2_g
				{
					CompressedFormat DXT1
				}
				
				directional_irradiance_sh2_b
				{
					CompressedFormat DXT1
				}
			}
			LightmapGutterSize 0 // For bicubic filtering
			UseStaticLightProbes 0
			LPVAtlas 1
		}

		SteamAudio
		{
			ReverbDefaults
			{
				GridGenerationType	"0"						// 0: Automatic, Everywhere, 1: Automatic, Use Probe Generation Volume, 2: Manual
				FilterUsingVolumes	"1"						// Filter Using Probe Exclusion Volumes ( boolean )
				FilterUsingNavMesh	"0"						// Filter Using NavMesh
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				NumRays				"32768"
				NumBounces			"64"
				IRDuration			"1.0"
				AmbisonicsOrder		"1"
				ClusteringEnabled	"0"
				ClusteringCubemapResolution	"16.0"
				ClusteringDepthThreshold	"10.0"
			}
			PathingDefaults
			{
				GridGenerationType	"0"						// 0: Automatic, Everywhere, 1: Automatic, Use Probe Generation Volume, 2: Manual
				FilterUsingVolumes	"1"						// Filter Using Probe Exclusion Volumes ( boolean )
				FilterUsingNavMesh	"0"						// Filter Using NavMesh
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				NumVisSamples		"1"
				ProbeVisRadius		"0"
				ProbeVisThreshold	"0.1"
				ProbeVisPathRange	"1000.0"
			}
			CustomDataDefaults
			{
				GridGenerationType	"0"						// 0: Automatic, Everywhere, 1: Automatic, Use Probe Generation Volume, 2: Manual
				FilterUsingVolumes	"1"						// Filter Using Probe Exclusion Volumes ( boolean )
				FilterUsingNavMesh	"1"						// Filter Using NavMesh
				GridSpacing		"6"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				BakeOcclusion		"0"						// 0: Disabled, 1: Enabled
				BakeDimensions		"1"						// 0: Disabled, 1: Enabled
				BakeMaterials		"0"						// 0: Disabled, 1: Enabled
				OcclusionPathing			"1"
				OcclusionReflection			"0"
				OcclusionReflectionRays		"16384"
				OcclusionReflectionBounces	"16"
				DimensionsOutsideThreshold	"0.02"
				
			}
			ProbeGenerationVolumeDefaults
			{
				Spacing			"3.0"
				Height			"1.5"
				HeightSpacing		"12"
				UseForReverb		"0"
				UseForPathing		"0"
				UseForCustomData	"1"
				FilterUsingVolumes	"1"
				FilterUsingNavMesh	"1"
			}
		}
		SoundEventScripts
		{
			OmitMetadataAndLineText "1"
		}
		SoundStackScripts
		{
			CompileStacksStrict "1"
		}
		VisBuilder
		{
			MaxVisClusters "4096"
			PreMergeOpenSpaceDistanceThreshold "128.0"
			PreMergeOpenSpaceMaxDimension "2048.0"
			PreMergeOpenSpaceMaxRatio "8.0"
			PreMergeSmallRegionsSizeThreshold "20.0"
		}

		VDataLocalization
		{
			GameOutputPath	"resource/localization/citadel_vdata"
			TokenPrefix		"Citadel_VData_"
		}
		
		TextureCompiler
		{
			//Compressor              "lz4"
			//CompressMipsOnDisk      "1"
			//CompressMinRatio        "95"
			AllowNP2Textures		"1"
			AllowPanoramaMipGeneration	"1"
			//PublicToolsDefaultMaxRes "2048"
		}
	}

	Source1Import
	{
		"forcevtxfileupconvert" 1
	}

	WorldRenderer
	{
		EnvironmentMaps					1
		EnvironmentMapFaceSize			256
		EnvironmentMapRenderSize		1024
		EnvironmentMapFormat			BC6H
		EnvironmentMapPreviewFormat 		BC6H
		EnvironmentMapColorSpace		linear
		EnvironmentMapMipProcessor		GGXCubeMapBlur
		// Build cubemaps into a cube array instead of individual cubemaps.
		"EnvironmentMapUseCubeArray" 	1
		"EnvironmentMapCacheSizeTools"  300
		BindlessSceneObjectDesc			CitadelBindlessDesc
		GrassCastsShadows				0
	}

	SceneSystem
	{
		GpuLightBinner 1
		FogCachedShadowAtlasWidth 0
		FogCachedShadowAtlasHeight 0
		FogCachedShadowTileSize 0
		GpuLightBinnerSunLightFastPath 1
		CSMCascadeResolution 0
		SunLightManagerCount 0
		SunLightManagerCountTools 0
		DefaultShadowTextureWidth 0
		DefaultShadowTextureHeight 0
		DynamicShadowResolution 1

		TransformTextureRowCount	1024
		TransformTextureRowCountToolsMode 6144
		SunLightMaxCascadeSize		0
		SunLightShadowRenderMode	Depth
		NonTexturedGradientFog		0
		CubemapFog 0
		VolumetricFog 0
		FrameBufferCopyFormat R11G11B10F
		Tonemapping 0
		
		
        // Stolen from CS2
        GpuLightBinnerBinEnvMaps "1"
        GpuLightBinnerBinLPVs    "1"

        LightCookieAllocGranularity "1"
        LightCookieMinAllocSize     "0"
        DisableShadowFullSort       "1"
        SparseShadowTrees           "1" 
        PointLightShadowsEnabled    "0"
		
		WellKnownLightCookies
		{
			"blank" "materials/effects/lightcookies/blank.vtex"
			"flashlight" "materials/effects/lightcookies/flashlight.vtex"
		}

		ComputeShaderSkinning 1
	}

	NavSystem
	{
		"NavTileSize" "128.0"
		"NavCellSize" "1.5"
		"NavCellHeight" "2.0"

		// Hull definitions live in scripts/nav_hulls.vdata
		// Preset definitions live in scripts/nav_hulls_presets.vdata
		"NavHullsPreset" "default"

		"NavRegionMinSize" "8"
		"NavRegionMergeSize" "20"
		"NavEdgeMaxLen" "1200"
		"NavEdgeMaxError" "51.0"
		"NavVertsPerPoly" "4"
		"NavDetailSampleDistance" "120.0"
		"NavDetailSampleMaxError" "2.0"
		"NavSmallAreaOnEdgeRemovalSize" "81.0"
	}

	AnimationSystem
	{
		"DisableServerInterpCompensation"	"1"
		"DisableAnimationScript" 	"1"
		"ServerPoseRecipeHistorySize"	"60"
		"ClientPoseRecipeHistorySize"	"60"

	}

	ModelDoc
	{
		"models_gamedata"			"models_gamedata.fgd"
		"features"					"modelconfig;gamepreview;wireframe_backfaces;distancefield"
	}

	Particles
	{
		"EnableParticleShaderFeatureBranching"	"1"
		"Float16HDRBackBuffer" "1"
		"PET_SupportFadingOpaqueModels" "1"
		"BindlessParticleShader" "1"
		"Features" "non_homogenous_forward_layer_only"
	}

	Physics
	{
		"EnableWorldCompounds"			"1"
	}
	
	ConVars
	{
					   // ----------------------- OptiLock -- ver. 5.7  ---------------------- \\
							   //        OptiLock: https://gamebanana.com/mods/690233          \\
							  //         QOL Lite: https://gamebanana.com/mods/690233           \\
							 //     Downloaded from: https://github.com/dacooderr/OptiLock       \\
							//      Tutorial: https://www.youtube.com/watch?v=Kpoet2ebl70         \\
						   //	      	   Discord: https://discord.gg/UxjsJB5Rp5				   \\
						  //																	    \\
						 //        If you would like to donate as a means of showing thanks          \\
						//                 https://streamlabs.com/dacooderr/tip                       \\

		// ================ PREFERENCES ================

		// --Outlines--
		citadel_trooper_glow_disabled                           "1"  // 1 = Disable friendly/enemy minion glow.                          [def: "0"]
		citadel_boss_glow_disabled                              "1"  // Disables boss and walker glow/highlight effect.                  [def: "0]
		r_citadel_npr_outlines_max_dist                         "600"  // Limits outline distance to reduce unnecessary processing.        [def: "1000"]
		r_citadel_selection_outline2_alpha                      "0.8"  // Outlines on enemy players and abilities on a scale of 0-1.       [def: "0.8"]
		r_citadel_npr_outlines                                  "true"  // Enable outlines on enemy players.                                [def: "true"]
		r_citadel_outlines                                      "1"  // Enables enemy outlines for better visibility.
		citadel_player_glow_disabled                            "0"  // Disables player glow/highlight effect when pinged.               [def: "0"]
		citadel_trooper_friendly_glow_disabled                  "1" 
		cl_glow_brightness                                      "0"  

		// --Field of View--
		r_aspectratio                                           "2.15"  // 1.75=80fov | 2.15=90fov | 2.49=100fov      [def: "0"]
		citadel_camera_hero_fov                                 "100"  // The field of view angle of the camera when following a hero.     [def: "90"]

		// --Crosshair/Hud--
		citadel_unit_status_use_new                             "1"  // Enables new healthbars. May be needed for certain mods or they will cause crashes. (Change to 0 or False to use Old Healthbars)
		citadel_hideout_ball_show_juggle_count                  "1"  // Shows a fun juggle count minigame for hideout ball.              [def: "0"]
		citadel_hideout_ball_show_juggle_fx                     "1"  // Shows juggle visual FX for hideout ball minigame.                [def: "0"]
		//citadel_crosshair_hit_marker_duration                   "0.01"  // Removes the hitmarker when shooting people.                      [def: "0.1"]
		citadel_damage_report_enable                            "1"  // Enables/Disables incoming/outgoing damage tab. [def: "1"]
		citadel_damage_text_show_effectiveness                  "0"  // Shows extra “effectiveness” info in damage text (e.g., resist/weakness style feedback). [def: "0"]
		citadel_hud_objective_health_enabled                    "2"  // 0=Off, 1=Shrines, 2=T1/T2, 3=Barracks.                           [def: "2"]
		citadel_hud_objective_health_idle_timeout               "4"
		citadel_in_world_item_panel_dpi                         "0.75"
		citadel_minimap_use_canvas_for_neutrals                 "0"  // Uses an alternate “canvas” rendering path for neutral icons on the minimap (render path toggle). [def: "1"]
		citadel_minimap_use_canvas_for_shop                     "0"  // Uses an alternate “canvas” rendering path for shop icons on the minimap (render path toggle). [def: "1"]
		citadel_portrait_world_renderer_off                     "false"  // Set true to disable hero hud
		citadel_unit_status_old_update_rate                     "15" 
		citadel_reduce_camera_shake								"true"
		
		//  --IMPORTANT--
		mat_colorcorrection 									"false"  //  Color Accuracy
		r_postprocess_enable                                    "true"  //  Disable postprocessing effects game-wide. Makes your game REALLY dark. (Controls all of these convars in Post-Processing section as they are post-processing effects)
		r_farz                                                  "10000" 
		r_mapextents                                            "100"   
		r_nearz 												"10"

		// --Lighting & Shadows--
		sc_disable_baked_lighting                               "true"
		lb_allow_time_sliced_shadow_map_rendering               "false"
		lb_enable_shadow_casting                                "false"
		lb_enable_dynamic_lights                                "true"  // Must be used in conjunction with lb_enable_lights for Hero Sillohouttes. (Will cause performance drop)
		lb_enable_stationary_lights                             "false"
		lb_dynamic_shadow_penumbra                              "true"
		lb_dynamic_shadow_resolution                            "true"
		lb_dynamic_shadow_resolution_base                       "32"
		lb_dynamic_shadow_resolution_base_cmp_shadowmapsize     "true"
        lb_dynamic_shadow_resolution_quantization              	"32" 
		lb_shadow_map_cull_empty_mixed                          "true"
		lb_enable_baked_shadows                                 "false"
		lb_enable_binning                                       "true"
		r_citadel_shadow_quality                                "0"
		r_citadel_gpu_culling_shadows                           "1"
		lb_csm_override_staticgeo_cascades                      "1"
		lb_csm_override_staticgeo_cascades_value                "1"
		lb_sun_csm_size_cull_threshold_texels                   "30"
		sparseshadowtree_enable_rendering                       "0"
		sparseshadowtree_disable_for_viewmodel                  "1"
		lb_enable_lights                                        "true"  // Enables lights across the game. Must be used in conjunction with lb_enable_dynamic_lights for Hero Sillohouttes. (Will cause performance drop)
		lb_enable_newsum                                        "false"
		r_indirectlighting                                      "true"
		lb_csm_draw_alpha_tested                                "0"
		lb_csm_draw_translucent                                 "0"
		lb_mixed_shadows                                        "false"
		lb_precomputed_shadowmap_enable                         "false"
		lb_precomputed_shadowmap_depth_bias                     "1"
		lb_shadow_texture_height_override                       "1"
		lb_shadow_texture_width_override                        "1"
		lb_timesliced_shadows_dynamic_size                      "true"
		mat_depthbias_shadowmap                                 "0.00000001"
		mat_slopescaledepthbias_shadowmap                       "1"
		r_citadel_distancefield_shadows                         "false"
		mat_set_shader_quality                                  "0"
		csm_viewmodel_shadows                                   "false"
		r_citadel_gpu_preview_baked_shadows                     "false"
		r_citadel_shadowdb                                      "64"
		r_hair_shadowtile                                       "false"
		r_mixed_shadows_fade_out_time                           "0.0001"

		// --Skybox Rendering--
        fog_enableskybox   "0"
        r_draw3dskybox     "0" // Enables drawing the 3D skybox layer (distant geometry).         [def: "1"]
        r_monitor_3dskybox "0"

		// --Object Culling--
		r_size_cull_threshold                                   "0.8"

		// --Camera Tweaks--
		r_citadel_clip_sphere_min_opacity                       "0"  // Removes the blur from the pinhole camera                         [def: "40"]
		citadel_camera_soft_collision "0"
        citadel_camera_wobble_disable "1"

		// --UI--
		r_citadel_enable_pano_world_blur                        "true"
		r_dashboard_render_quality                              "0"
		panorama_disable_box_shadow                             "1"  // Disables UI box shadows in the UI (less GPU/UI cost).            [def: "0"]
		panorama_disable_blur                                   "1"  // Disables UI blur effects in the UI.                              [def: "0"]
		panorama_allow_transitions                              "false"  // Turns off UI anim (shop,etc)                                     [def: "1"]
		panorama_use_new_occlusion_invalidation                 "1"
		panorama_temp_comp_layer_min_dimension                  "128"

		// --RAGDOLLS--
		cl_ragdoll_limit                                        "1"  // Limits number of ragdolls active at once.
		ragdoll_parallel_pose_control                           "1"  // Multithreaded ragdoll handling, better performance (if ragdolls aren't disabled). [def: "0"]
		cl_disable_ragdolls                                     "0"  // Keep set to 0 - enabling this (disabling ragdolls) can cause issue with doorman's ultimate. [def: "0"]

		// --MODELS--
		r_hair_ao                                               "false"
		ik_final_fixup_enable                                   "0"
		ik_fabrik_align_chain                                   "0"
		animgraph_enable_parallel_preupdate                     "1"
		animgraph_enable_parallel_op_evaluation                 "1"
		cloth_sim_on_tick                                       "false"
		phys_threaded_cloth_bone_update                         "true"
		props_break_max_pieces_perframe                         "0.5"
		cloth_update                                            "1"

		// --INPUT--
		cl_input_enable_raw_keyboard                            "1"
		m_rawinput                                              "1"

		// --PARTICLES--
		r_particle_max_draw_distance							"5000"
		cl_particle_newinit                                     "true"
		r_particle_max_size_cull                                "64"
		r_particle_max_detail_level                             "0"
		particle_cluster_nodraw                                 "1"
		r_physics_particle_op_spawn_scale                       "0"
		r_RainParticleDensity                                   "0"
		cl_particle_fallback_base                               "1"
		cl_particle_fallback_multiplier                         "10"
		cl_particle_sim_fallback_base_multiplier                "100"
		cl_particle_sim_fallback_threshold_ms                   "0"
		r_particle_skip_postsim                                 "true"
		r_particle_timescale                                    "1.1"
		cl_particle_batch_mode                                  "1"
		r_particle_max_texture_layers                           "4"
		r_particle_cables_cast_shadows                          "false"
		r_particle_cables_culling                               "1"
		r_particle_cables_render                                "false"
		cl_aggregate_particles                                  "1"
		func_break_max_pieces                                   "1"
		r_particle_cables_render_meshlets                       "false"
		r_particle_model_new8                                   "false"
		r_particle_mixed_resolution_viewstart                   "800"
		r_limit_particle_job_duration                           "true"
		r_particle_min_timestep                                 "0.001"
		fx_drawmetalspark                                       "false"
		particle_cluster_use_collision_hulls                    "false" 
		r_particle_model_per_thread_count                       "32" 

		// --Lod & Culling--
		cl_enable_eye_occlusion                                 "true"
		skeleton_instance_lod_optimization                      "1"
		sc_instanced_mesh_lod_bias                              "15"
		sc_instanced_mesh_lod_bias_shadow                       "0.10"
		sc_instanced_mesh_motion_vectors                        "0"
		sc_instanced_mesh_size_cull_bias_shadow                 "10"
		sc_fade_distance_scale_override                         "5"
		sc_aggregate_bvh_threshold                              "16"
		sc_layer_batch_threshold                                "16"
		sc_layer_batch_threshold_fullsort                       "20"
		sv_remove_ent_from_pvs                                  "1"
		citadel_use_pvs_for_players                             "true"
		sv_waterdist                                            "0"
		lb_ssss_samples                                         "0"
		r_aoproxy_cull_dist                                     "0.01"
		r_aoproxy_min_dist                                      "9999"
		r_character_decal_monitor_render_res                    "256"
		r_haircull_percent                                      "100"

		// --Misc--
		r_low_latency                                           "1"
		think_limit                                             "10"
		zipline_use_new_latch                                   "0"
		engine_low_latency_sleep_after_client_tick              "true"
		engine_allow_multiple_simulates_per_frame               "true"
		engine_accurate_input_processing_delta_time             "true"
		cl_bone_cache_optimization                              "1"
		cl_interp_parallel                                      "1"
		cl_batch_entity_list_ops_during_latch                   "1"
		sc_dithered_lod_transition_amt                          "0"
		dsp_slow_cpu                                            "1"
		cl_phys_sleep_enable                                    "1"
		r_enable_rigid_animation                                "0"
		cl_simulate_dormant_entities                            "0"
		phys_expensive_shape_threshold                          "100"
		props_break_apply_radial_forces                         "0"
		sc_force_materials_batchable                            "true"
		sc_allow_dithered_lod                                   "false"
		enable_priority_boost                                   "true"
		r_ambientmin                                            "0.35"
		r_ambientfactor                                         "12"
		r_ambientboost                                          "1"
		mm_prefer_solo_only                                     "true"
		mat_tonemapping_occlusion_use_stencil                   "0"
		r_fastzreject                                           "1"
		r_force_ambient                                         "2"
		mat_tonemap_boost                                       "1.15"
		cl_entityiter_allow_world_occlusion                     "0"
		sv_force_transmit_players                               "1"
		r_lod                                                   "-5"
		r_texture_pool_size                                     "256" 
		r_max_portal_render_targets                             "2"  
		citadel_damage_text_lifetime                            "0.5"
		citadel_unit_status_delta_decay_delay                   "0"
		citadel_unit_status_delta_decay_rate                    "10"
		snd_steamaudio_enable_reverb                            "0"
		snd_steamaudio_enable_perspective_correction            "0"
		snd_spatialize_lerp                                     "0"
		snd_mixahead                                            "0.05"
		fog_enable                                              "0"
		fog_enableskybox                                        "0"
		cl_smooth                                               "true"  
		cl_phys_enabled                                         "true"
		csm_max_shadow_dist_override                            "0"
		r_aoproxy_min_dist_box                                  "9999"
		r_drawparticles                                         "true"  
		r_particle_batch_collections                            "true"  
		r_render_portals                                        "true"  
		r_texture_lod_scale                                     "0" 
		r_translucent                                           "true" 
		sc_hdr_enabled_override                                 "0"  

		// --LIGHTING & SHADOWS--
		lb_csm_receiver_plane_depth_bias                        "0.00002" 
		lb_csm_receiver_plane_depth_bias_transmissive_backface  "0.0002"  
		lb_enable_fog_mixed_shadows                             "0" 
		sc_disable_shadow_materials                             "1"  
		lb_enable_sunlight                                      "false" 

		// --PARTICLES & EFFECTS--
		r_citadel_screenspace_particles_full_res                "0"  // 
		r_muzzleflashbrightness                                 "0.01"  

		// --MODELS, LOD, CULLING & MAP EXTENTS--
		r_monitor_3dskybox                                      "0"  
		r_propsmaxdist                                          "600"  
		sc_instanced_mesh_size_cull_bias                        "10"  
		sv_pvs_max_distance                                     "4000"  
		r_citadel_distancefield_down_sample                     "6"  
		sc_clutter_density_none_size                            "0.1"  
		sc_enable_discard                                       "true"  
		sc_clutter_density_full_size                            "0.5"  
		r_strip_invisible_during_sceneobject_update             "1"  
		mesh_calculate_curvature_smooth_pass_count              "0"  
		sc_max_framebuffer_copies_per_layer                     "0" 
		r_world_wind_frequency_grass                            "0"  
		r_world_wind_frequency_trees                            "0"  

		// --PHYSICS, CLOTH & DECALS--
		presettle_cloth_iterations                              "0"  
		pred_cloth_pos_max                                      "0"  
		pred_cloth_pos_strength                                 "0"  
		pred_cloth_rot_high                                     "0"  
		pred_cloth_rot_low                                      "0"  
		pred_cloth_rot_multiplier                               "0"  
		cl_phys_timescale                                       "1"  
		phys_threaded_kinematic_bone_update                     "1"  
		phys_threaded_transform_update                          "1"  
		cl_physics_highlight_active                             "0"  
		phys_highlight_expensive_objects_strength               "0"  
		phys_cull_internal_mesh_contacts                        "true"  
		cl_phys_networked_start_sleep                           "true"  
		phys_multithreading_enabled                             "1"  
		phys_dynamic_scaling                                    "false"  

		// --ANIMATION--
		anim_decode_forcewritealltransforms                     "true"  
		animgraph_footlock_enabled                              "false"  
		r_morphing_enabled                                      "false"  
		r_smooth_morph_normals                                  "0"  
		animgraph_slowdownonslopes_enabled                      "false"  

		// --GAMEPLAY, CAMERA & ENTITY HIGHLIGHTS--
		citadel_damage_offscreen_indicator_disabled             "1"  
		citadel_show_new_damage_feedback_numbers                "0"  
		citadel_camera_soft_collision                           "0"  
		citadel_camera_wobble_disable                           "1"  
		r_citadel_glow_health_bars                              "false"
		citadel_player_outline_enemies                          "true"
		citadel_trooper_outline_enabled                         "false"

		// --AUDIO--
		audio_enable_vmix_mastering                             "0"  
		dsp_volume                                              "0"  
		snd_occlusion_bounces                                   "0" 
		snd_steamaudio_num_threads                              "4"  
		snd_mix_async                                           "1"  
		soundsystem_update_async                                "1" 
		update_voices_low_priority								"true"
		snd_use_baked_occlusion                      			"1"
		snd_steamaudio_enable_reverb                 			"0"
		snd_steamaudio_enable_perspective_correction 			"0"
		snd_occlusion_bounces                        			"0"                              
		snd_spatialize_lerp                          			"0"
		snd_mixahead                                 			"0.05"
		dsp_slow_cpu                                 			"1"

		// --PIDJAN--
		mm_idle_enabled                                         "false"
		citadel_match_details_lane_stats_time                   "360"

		// --FPS Caps & Minimized Throttling--
        engine_low_latency_sleep_after_client_tick 				"1"  
        engine_no_focus_sleep                      				"0"  
        fps_max                                    				"0"  
        panorama_max_fps                           				"15" 
        panorama_max_overlay_fps                   				"15" 

		// --Texture Quality --
        mat_set_shader_quality           						"0" 
        r_fallback_texture_lod_scale     						"4"
        r_texture_budget_dynamic         						"1"    
        r_texture_budget_threshold       						"0.7" 
        r_texture_budget_update_period   						"0.5" 
        r_texture_lod_scale              						"4"   
        r_texture_pool_reduce_rate       						"512"
        r_texture_pool_size              						"256" 
        r_texture_stream_max_resolution  						"128"
        r_texture_stream_mip_bias        						"8" 
        r_texture_stream_resolution_bias 						"0.01"
        r_texturefilteringquality        						"0" 

		// --UI--
        closecaption                            				"false" 
        hud_free_cursor                         				"0"    
        mm_idle_enabled                         				"false"
        mm_idle_show_warning_at_s               				"999"   
        panorama_allow_transitions              				"false" 
        panorama_async_compute_mipgen           				"1"
        panorama_disable_blur                   				"1"     
        panorama_disable_box_shadow             				"1"     
        panorama_temp_comp_layer_min_dimension  				"128"   
        panorama_transition_time_factor         				"2"     
        panorama_use_new_occlusion_invalidation 				"1"     
        // r_citadel_enable_pano_world_blur     				"false" 
        r_dashboard_render_quality              				"0"    

		// --Shadows--
        cl_globallight_shadow_mode                             	"0" 
        lb_barnlight_shadow_use_precomputed_vis                	"0"
        lb_barnlight_shadowmap_scale                           	"0.001" 
        lb_csm_cascade_size_override                           	"0.25" 
        lb_csm_cross_fade_override                             	"0"
        lb_csm_distance_fade_override                          	"0"
        lb_csm_draw_alpha_tested                               	"0" 
        lb_csm_draw_translucent                                	"1"
        lb_csm_override_staticgeo_cascades                     	"1" 
        lb_csm_override_staticgeo_cascades_value               	"0" 
        lb_csm_receiver_plane_depth_bias                       	"0.00002"
        lb_csm_receiver_plane_depth_bias_transmissive_backface 	"0.0002"
        lb_enable_fog_mixed_shadows                            	"0"
        lb_enable_shadow_casting                               	"0"
        lb_mixed_shadows                                       	"false"
        lb_precomputed_shadowmap_enable                        	"false"
        lb_shadow_map_cull_empty_mixed                         	"true"
        lb_ssss_samples                                        	"0"     
        lb_sun_csm_size_cull_threshold_texels                  	"30"    
        r_citadel_distancefield_shadows                        	"false" 
        r_citadel_gpu_culling_shadows                          	"true" 
        r_citadel_shadow_quality                               	"0"   
        r_citadel_shadowdb                                     	"256"   
        r_shadows                                              	"0"                                            
        r_size_cull_threshold_shadow                           	"200"   
        sc_disable_shadow_materials                            	"1"
        sc_disable_spotlight_shadows                           	"1"  
        sc_instanced_mesh_lod_bias_shadow                      	"10"
        sc_instanced_mesh_size_cull_bias_shadow                	"10" 
        sparseshadowtree_disable_for_viewmodel                 	"1" 
        sparseshadowtree_enable_rendering                      	"0"
        sparseshadowtree_parallel_generation                  	"2"
        // lb_enable_envmaps                                  	"0"
		csm_cascade0_override_dist                              "1"
		csm_cascade1_override_dist                              "1"
		csm_cascade2_override_dist                              "1"
		csm_cascade3_override_dist                              "1"
		csm_max_dist_between_caster_and_receiver                "0"
		csm_max_num_cascades_override                           "0"
		csm_max_visible_dist                                    "10"
		csm_res_override_0                                      "1"
		csm_res_override_1                                      "1"
		csm_res_override_2                                      "1"
		csm_res_override_3                                      "1"
		csm_bias_override_0										"1"
		csm_bias_override_1                                     "1"
		csm_bias_override_2                                     "1"
		csm_bias_override_3                                     "1"

		// --Lighting--
        cl_retire_low_priority_lights               			"1"    
        lb_cubemap_normalization_max                			"1"    
        lb_cubemap_normalization_roughness_begin    			"0.01"
        lb_max_visible_barn_lights_override         			"1"
        lb_max_visible_envmaps_override             			"10" 
        mat_async_shader_load                       			"1" 
        mat_max_lighting_complexity                 			"1"
        mat_tonemap_bloom_scale                     			"0"
        r_arealights                                			"false"
        r_citadel_disable_npr_lighting              			"false"
        r_citadel_distancefield_farfield_enable     			"0"     
        r_citadel_ssao_bent_normals                 			"false"
        r_citadel_ssao_denoise_passes               			"0"
        r_citadel_ssao_quality                      			"0" // SSAO quality level (0 = lowest/off-ish).                         [def: "3"]
        r_citadel_ssao_radius                       			"0"
        r_citadel_ssao_thin_occluder_compensation   			"0"     // Disables special handling for thin occluders in SSAO (cheaper).  [def: "0.5"]
        r_citadel_sun_shadow_slope_scale_depth_bias 			"1.0"   // \\                                                               [def: "3.54"]
        r_directlighting                            			"false"  // Set to true to have your characters not be black in the shop     [def:"true"]
        r_directional_lightmaps                     			"false" // default true
        r_distancefield_enable                      			"0"     // Disables/ Enables distance-field system (used by some lighting/shadowing/occlusion features). [def: "1"]
        r_environment_map_roughness_range           			"0.01"  // Default: 0.2 0.3 Fade region for sampling environment maps on lightmapped nonmetals... BASICALLY TURN OFF REFLECTIONS ON MAP I THINK
        r_flashlightbrightness                      			"0"
        r_flashlightfar                             			"0"
        r_flashlightshadowatten                     			"0"
        r_gbuffer_disable_npr_lighting              			"true"  // might change to true
        r_light_flickering_enabled                  			"false" // Enables light flicker effects where used.                        [def: "1"]
        r_light_sensitivity_mode                    			"true"
        r_lightmap_bicubic_filtering                			"1"     // Enables bicubic filtering on lightmaps.                          [def: "1"]
        r_lightmap_size                             			"4"     // Maximum lightmap resolution..                                    [def: "65536"]
        r_lightmap_size_directional_irradiance      			"0"     // Sets directional irradiance lightmap data size (lower = less detail) (-1 = uses value of r_lightmap_size ). [def: "-1"]
        r_multiscattering                           			"1"     // Enables multi-scattering lighting approximation.                 [def: "1"]
        r_rendersun                                 			"false" // Disables sun lighting.                                           [def: "1"]
        r_ssao                                      			"0"     // Disables screen-space ambient occlusion.                         [def: "1"]
        r_ssao_blur                                 			"0"
        r_ssao_strength                             			"0"     // AO strength multiplier (0 = no AO contribution).                 [def: "1.2"]
        sc_cache_envmap_lpv_lookup                  			"false" // was true
        thumper_use_plane_reflection                			"false" // Default: true
        vis_sunlight_enable                         			"0"

		// --Ragdolls--
        ai_use_async_ragdoll_fixup    							"true" // doesnt really need tbh since ragdoll is disabled
        cl_disable_ragdolls           							"0"    // Keep set to 0 - enabling this (disabling ragdolls) can cause issue with doorman's ultimate. [def: "0"]
        cl_ragdoll_limit              							"1"    // Limit of how many ragdolls can be rendered at once.              [def: "-1"]
        g_ragdoll_important_maxcount  							"1"
        ragdoll_parallel_pose_control 							"1" // Multithreaded ragdoll handling, better performance (if ragdolls aren't disabled). [def: "0"]

		// --Models--
		cl_fasttempentcollision                                 "999999"  // Limits/controls fast collision processing for temporary entities (impacts/tracers/etc.); higher usually = more work. [def: "5"]
		enable_boneflex                                         "false"  // Disables bone flexes (procedural facial/mesh flex drivers).      [def: "1"]
		r_hair_indirect_transmittance                           "false"
		r_render_hair                                           "0"
		anim_decode_forcewritealltransforms        				"true" // Default: false Force BatchAnimationDecode to write transformations for all bones
        animgraph_enable_parallel_op_evaluation    				"1" // Allows animgraph operator evaluation to run in parallel (performance).   [def: "0"]
        animgraph_enable_parallel_preupdate        				"1" // Allows animgraph pre-update work to run in parallel (performance).       [def: "0"]
        animgraph_footlock_enabled                 				"false"
        animgraph_slowdownonslopes_enabled         				"false"
        cl_bone_cache_optimization                 				"1"
        cloth_sim_on_tick                          				"0"      // Update the cloth simulation every tick                           [def: "1"]
        cloth_update                               				"1"      // Enables cloth system updates. [def: "1"]
        enable_boneflex                            				"false"  // Disables bone flexes (procedural facial/mesh flex drivers).      [def: "1"]
        func_break_max_pieces                      				"1"      // lets try 0 and 1
        ik_fabrik_align_chain                      				"0"      // Disables FABRIK chain alignment in IK (cheaper).                 [def: "1"]
        ik_final_fixup_enable                      				"0"      // Disables final IK fixup pass (cheaper animations, potentially less accurate). [def: "1"]
        mesh_calculate_curvature_smooth_pass_count 				"0"
        phys_threaded_cloth_bone_update            				"1"   // I am inclined to believe this makes the cloth update threaded    [def: "0"]
        phys_threaded_kinematic_bone_update        				"1"   // I am inclined to believe this makes the cloth kinematics threaded    [def: "0"]
        phys_threaded_transform_update             				"1"   // Same as above                                                    [def: "0"]
        pred_cloth_pos_max                         				"0"   // Reduce cloth prediction was 1
        pred_cloth_pos_multiplier                  				"0"   // was 0.3
        pred_cloth_pos_strength                   				"0"   // was 0.1
        pred_cloth_rot_high                        				"0"   // was 0.05
        pred_cloth_rot_low                         				"0"   // was 0.005
        pred_cloth_rot_multiplier                  				"0"   // was 0.2
        presettle_cloth_iterations                 				"0"   // default 3
        props_break_apply_radial_forces            				"0"   // default: 1
        props_break_max_pieces_perframe            				"0.1" // Makes boxes and troopers break into a single piece               [def: "16"]
        r_hair_ao                                  				"0"   // Disables hair ambient occlusion/shading pass.                    [def: "1"]
        r_hair_indirect_transmittance              				"false"
        r_hair_shadowtile                          				"false"
        r_haircull_percent                         				"100"
        r_morphing_enabled                         				"false"
        r_render_hair                              				"0"
        r_smooth_morph_normals                     				"0"

        // --Visual Clarity--
        // r_dopixelvisibility                        			"false" // Default true, enables or disables pixel visibility calculations
        // r_draw_overlays                            			"false" // Removes the walker line on the ground too, do not recommend
        citadel_per_weapon_per_surface_impact_effects 			"true"
        cl_impacteffects                              			"0"
        cl_show_splashes                              			"0" // Disables splash effects (water/impact splashes).                 [def: "1"]
        fog_enable                                    			"0"
        fx_drawmetalspark                             			"false" // Default: true Draw metal spark effects.
        mat_colcorrection_disableentities             			"1"     // Allows entity-based color correction. [def: "0"]
        r_character_decal_resolution                  			"256"  // Resolution of character decal texture.                           [def: "1024"]
        r_citadel_antialiasing                        			"0"     // default 1
        r_citadel_depthoffield_enable                 			"false"
        r_citadel_distancefield_blur                  			"false" // default: true
        r_citadel_fog_quality                         			"0"     // Deadlock/Citadel fog quality (0 = lowest). [def: "1"]
        r_decals                                     			"1"     // Maximum number of decals allowed. (lower = fewer bullet holes/blood/impact marks). [def: "2048"]
        r_depth_of_field                              			"0" // Disables depth of field.                                         [def: "1"]
        r_drawdecals                                  			"1" // *Render decals.                                                  [def: "1"]
        r_effects_bloom                               			"0"     // Disables effects bloom.                                          [def: "1"]
        r_enable_cubemap_fog                          			"0"     // Disables cubemap-based fog. [def: "1"]
        r_enable_gradient_fog                         			"0"     // Disables gradient fog. [def: "1"]
        r_enable_volume_fog                           			"0"     // Disables volumetric fog. [def: "1"]
        r_fullscreen_gamma                            			"2.2"   // recommended ppl to use this to make the game brighter, bigge number = darker
        r_muzzleflashbrightness                       			"0.01"  // default 0.4 idk if this does anything
        r_post_bloom                                  			"0"     // Disables post-process bloom.                                     [def: "1"]
        sc_clutter_enable                             			"0"     // Disables clutter props, improves visibility & FPS.               [def: "true"]
        violence_ablood                               			"false" // Disables alien/other blood effects.                              [def: "1"]
        violence_agibs                                			"false" // Disables alien/other gibs.                                       [def: "1"]
        violence_hblood                               			"false" // Disables human blood effects.                                    [def: "1"]
        violence_hgibs                                			"false" // Disables human gibs.                                             [def: "1"]
        volume_fog_intermediate_textures_hdr          			"0"     // See below                                            [def: "1"]

		// --Network--
		cl_async_usercmd_send                                   "true"  // Makes the client send updates asyncronously I belive. Seems to smooth over network jank, although you will need to remove it from lower down in the gameinfo.gi [def: "false"]
		cl_eye_yaw_multiplier                                   "0"
		cl_parallel_readpacketentities                          "1"
		cl_parallel_readpacketentities_threshold                "2"
		cl_prediction_savedata_postentitypacketreceived         "1"
		cl_resend                                               "15"  // Delay in seconds between reconnect attempts (higher = less frequent, helps avoid kicks/timeouts on unstable connections). [def: "0.5"]
		cl_smooth_draw_debug                                    "0"
		cl_smoothtime                                           "0.01"  // Smooth client's view after prediction error over this many seconds (Lower = snappier but more abrupt, higher = smoother but floaty). [def: "0.2"]
		cl_updaterate                                           "128"  // Client snapshot update rate requested from the server (higher = more frequent updates).      [def: "128"]
		net_async_clientconnect                                 "1"
		r_frame_sync_enable                                     "0"  // was 0
		sv_parallel_sendsnapshot                                "2"

		// --System Related--
		battery_saver                                           "0"  // Disables battery saver mode (no automatic throttling).                   [def: "0"]
		cpu_level                                               "1"  // CPU level.                                                               [def: "2"]
		engine_max_ticks_to_simulate                            "33"  // Max number of ticks to simulate per frame, after which simulation will start to slow down compared to real time. [Def: "-1"]
		gpu_level                                               "1"  // GPU level literally doesn't matter, gets set to 2 in the engine
		gpu_mem_level                                           "1"  // GPU Memory level.                                                        [def: "2"]

		// --Lod & Culling--
		mat_viewportscale                                       "1"  // Scale down the main viewport I belive this gets overwritten by video.txt [def: "1"]
		sc_instanced_mesh_mesh_shader                           "false"  // default true Toggles mesh shader rendering for instanced meshes
		sc_instanced_mesh_opaque_fade                           "false"
		sc_screen_size_lod_scale_override                       "0.8"  // Controls LOD scale. Lower values will have less polys            [def: "-1"]

		// --Misc--
		citadel_cinematic_intro_duration_npc                    "0.01"
		citadel_cinematic_intro_duration_player                 "0.01"
		citadel_cinematic_intro_enabled                         "-1"
		citadel_hideout_enable_testing_tools                    "true"  
		nav_obstruction_async_update                            "true"  
		r_async_compute_fog                                     "true" 
		r_citadel_depth_prepass_dynamic_objects                 "false" 
		r_drawropes                                             "0" 
		r_pipeline_stats_use_flush_api                          "false"
		r_renderdoc_auto_shader_pdbs                            "0"  
		r_ropetranslucent                                       "0"  
		rope_collide                                            "0" 
		rope_smooth_enlarge                                     "0"
		rope_smooth_maxalpha                                    "0" 
		rope_smooth_maxalphawidth                               "0"  
		rope_smooth_minalpha                                    "0"  
		rope_smooth_minwidth                                    "0" 
		rope_subdiv                                             "0"  
		rope_wind_dist                                          "0" 
		wind_system_default_resolution_xy                       "64"
		wind_system_temporal_smoothing                          "false"

		// --Grass--
		r_grass_end_fade                                        "0"  
		r_grass_quality                                         "0"  
		r_grass_start_fade                                      "0" 

		// --Creep AI--
		ai_async_queue_max_jobs                                 "1"
		ai_expression_optimization                              "1"
		ai_foot_sweep_enable                                    "false"
		ai_gather_conditions_async                              "true"  
		ai_strong_optimizations_no_checkstand                   "1"  
		ai_think_interval                                       "0.3"
		ai_think_interval_lod_low                               "1"
		citadel_npc_disable_cockroaches                         "true"
		citadel_npc_disable_floor_point_caching                 "false"
		citadel_npc_force_animate_every_tick                    "false"
		nav_pathfind_multithread                                "1"  
		citadel_npc_force_animate_every_tick    				"false"

		// --Audio--
		snd_use_baked_occlusion                                 "1"

		// --SHADER & RENDERING--
		sv_hide_ent_in_pvs                                      "1"
		ai_lod_auto_enabled                                     "true"  
		g_ragdoll_maxcount                                      "1"
		r_texture_nonstreaming_load                             "1"
		minimap_update_rate_hz                                  "30"
		ai_think_interval_lod_med                               "0.4"
		r_citadel_selection_outline2_offset                     "2"
		r_citadel_selection_outline2_width                      "50"
		r_late_particle_job_sync                                "1"
		thread_pool_option                                      "-1"
		r_flush_on_pooled_ib_resize                             "false"
		r_texture_stream_throttle_count_over_budget             "0"
		cl_skel_constraints_enable                              "0"
		ik_enable                                               "0"
		panorama_disable_descendant_filtering                   "true"
		cl_pred_optimize                                        "true"
		cl_pred_parallel_postnetwork                            "true"
		sc_instanced_mesh_gpu_culling                           "true"
		sc_aggregate_gpu_culling                                "true"
		cl_phys_animated_hierarchy                              "false"
		phys_continuous_kinematic_update                        "0"
		snd_disable_mixer_duck                                  "1"
		sparseshadowtree_disable_add_layers                     "1"  
		sc_allow_dynamic_constant_batching                      "1"
		sc_disable_culling_boxes                                "1" 
		r_flashlightambient                                     "0" 
		r_flashlightconstant                                    "0" 
		sc_allow_precomputed_vismembers                         "1"
		sc_barnlight_enable_precomputed_vis                     "1"
		sc_force_single_display_list_per_layer                  "1"
		sc_aggregate_gpu_occlusion_culling                      "1"
		sc_aggregate_gpu_vis_culling                            "1"
		r_threaded_particles                                    "1"
		panorama_draw_text_fast_path                            "1" 
		panorama_draw_text_fast_path_text_shadow                "1"  
		panorama_hsbc_through_fast_path                         "1" 
		panorama_use_backbuffer_directly                        "1" 
		panorama_script_cache_enabled                           "1"  
		citadel_unit_status_hide_names                          "1"  
		citadel_camera_parrot_smoothing_rate                    "0"  
		steam_inputhandler_enabled                              "0"  
		panorama_clear_frames_on_device_restore                 "0"
		r_grass_density_mode                                    "0"  
		r_grass_alpha_test                                      "0" 
		shake_show                                              "false"
		citadel_melee_shake_amplitude                           "0" 
		citadel_melee_shake_duration                            "0"
		r_citadel_cloak_refract_amount                          "0" 
		r_citadel_cloak_blur_amount                             "0"  
		cl_hud_telemetry_frametime_show                         "0"  
		cl_skip_hierarchy_update_for_unchanged_entities         "true"  
		animgraph_enable_dirty_netvar_optimization              "true"  
		r_impacts_alt_orientation                               "false" 
		v8_maximum_heap_size_mb                                 "512" 
		
	    // --TEST--
		r_particle_parallel_simulation                          "1"
		r_particle_batch_simulate                               "1"
		threadpool_thread_limit                                 "0"
		r_world_wind_strength                                   "0"
		fs_async_threads                                        "-1"
		csm_sst_max_visible_dist								"10"
		csm_max_visible_dist									"1"
		csm_sst_shadow_focus_region_maxz						"-1000"
		csm_sst_shadow_focus_region_minz						"-2000"
		csm_sst_vertical_depth_shear_enable						"false"
		csm_viewmodel_max_shadow_dist							"1"
		lb_shadow_map_culling 									"1"
		mat_shading_complexity_max_instruction_count			"1"
		mat_shading_complexity_max_register_count				"1"
		csm_cascade_viewdir_shadow_bias_scale					"0.1"
		csm_sst_pushback_distance                               "100"
		csm_sst_shadow_focus_region_caster_headroom 			"8"
		csm_viewmodel_max_visible_dist                          "100"
		csm_viewmodel_nearz										"0.1"
		citadel_player_model_force_highest_lod					"false"
		citadel_video_preset									"0"
		citadel_zipline_render_mode								"0"
		lb_cull_offscreen_bounce_light_shadows					"true"
		lb_cull_onscreen_bounce_light_shadows					"true"
		lb_csm_override_staticgeo_cascades_animated_verts		"false"
		r_aoproxy_default_ambient_strength						"0"
		r_citadel_distancefield_occlusion_length				"0"
		r_citadel_distancefield_ray_origin_bias_max 			"0"
		r_citadel_distancefield_ray_origin_bias_min				"0"
		r_impacts_decal_grazing_incidence_cutoff				"0.0001"
		r_impacts_decal_grazing_incidence_variance				"0.0001"
		r_particle_mixed_resolution_viewstart                   "100" // Change from 800 to 100
		r_particle_model_per_thread_count						"1"
		rtx_texture_resolution									"0"
		sc_aggregate_gpu_culling								"true"
		sc_aggregate_gpu_occlusion_culling						"true"
		sc_instanced_mesh_gpu_culling							"true"
		sc_instanced_mesh_gpu_density_culling					"true"
		sc_instanced_mesh_gpu_occlusion_culling					"true"
		sc_instanced_mesh_gpu_vis_culling						"true"
		sc_instanced_mesh_opaque_fade							"true"
		sc_instanced_mesh_shadows_batch_across_materials		"false"
		r_citadel_distancefield_max_distance					"0"
		sc_clutter_desity_override								"true"
		sc_clutter_density_full_size							"0.0001"
		sc_clutter_density_none_size							"0.0001"		
		sc_mesh_backface_culling								"true"
		sc_mesh_gpu_volume_culling								"true"
		sc_mesh_gpu_occlusion_culling							"true"
		sc_mesh_shadows_batch_across_materials					"false"
		sc_shadow_slopescale_depth_bias							"0"
		sc_shadow_depth_bias_state_override						"true"
		sc_shadow_depth_bias									"0"
		r_citadel_gpu_preview_denoise							"false"
		r_size_cull_threshold_shadow							"1.2"
		sc_screen_size_lod_scale_override						"0.30"


				 //CREDITS																				    \\
				// dacooder   Config Creator            													 \\
			   // Xeraa		  Helped fix a major issue with console spam and fps drops late game			  \\
			  // Boot		  ConVar Contribution           												   \\
			 // Kaiz		  ConVar Contribution                                                               \\
			// Ethanal        Config Bugfixing                                                                   \\
		   // simcasting 	  Benchmarking																		  \\
		  // Artemon121       Made the Citadel cvar unhider														   \\
		 // Pidjan            Worked on further gameinfo changes and let us integrate                               \\
		// Piggy              Video.txt contributer and cool streamer guy                                            \\
	   // ----------------------------------------- END OF CONFIG OptiLock -- ver. 5.7 ------------------------------ \\

		"rate"
		{
			"min"		"98304"
			"default"	"786432"
			"max"		"1000000"
		}

		// Networking - General
		"sv_minrate"	"98304"
		"sv_maxunlag"	"0.500"
		"sv_maxunlag_player" "0.200"
		"sv_lagcomp_filterbyviewangle" "false"
		"cl_usesocketsforloopback" "1"
		"cl_poll_network_early" "0"
		"cq_buffer_bloat_msecs_max" "120"						// 7.68 ticks @64hz max cq bloat

		// Networking - Induced latency (pred offset)
		"cl_tickpacket_recvmargin_desired" "5" 					// 5 ms base, min. floor for protecting against thrashing the queue
		"cl_tickpacket_desired_queuelength" "1"					
		"cl_async_usercmd_send_disabled_recvmargin_min" "0.5"	// Additional frame since we do not use the async usercmd send (potentially unneccessary)
		"cl_clock_buffer_ticks"	"1"								// Buffer added to the simulation clock margin ( affects pred offset and cadence of client world ticks )
		"cl_interp_ratio" "0"
		"cl_async_usercmd_send" "false"							// We don't support early prediction at the moment, which async send requires

		// Nav gen
		"nav_gen_connect_dist_a" "2.0"

		// Spew warning when adding/removing classes to/from the top of the hierarchy
		"panorama_classes_perf_warning_threshold_ms" "0.75"

		// Panorama - enable minidumps on JS exceptions
		"panorama_js_minidumps" "1"
		// Enable the render target cache optimization.
		"panorama_disable_render_target_cache" "0"

		// Enable the composition layer optimization
		"panorama_skip_composition_layer_content_paint" "1"

		// Steam audio loading data
		"snd_steamaudio_load_reverb_data"		"0"
		"snd_steamaudio_load_pathing_data"		"0"
		"snd_steamaudio_load_occlusion_data"	"0"
		"snd_steamaudio_load_dimensions_data"	"1"
		"snd_steamaudio_load_materials_data"	"0"

		// Steam Audio project specific convars
		"snd_steamaudio_enable_custom_hrtf"			"0"
		"snd_steamaudio_active_hrtf"				"0"
		"snd_steamaudio_pathing_order"				"3"
		"snd_steamaudio_pathing_order_rendering"	"3"
		"snd_steamaudio_enable_pathing"				"0"
		"snd_steamaudio_enable_reverb"				"0"
		"snd_steamaudio_reverb_level_db"			"-6"
		"snd_steamaudio_enable_pathing"				"0"
		"snd_steamaudio_invalid_path_length"		"0.0"
		"snd_steamaudio_max_probes_customdata_dimensions"	"100000"
		"snd_steamaudio_dimensions_grid_height_max"			"100"
		"snd_steamaudio_baked_dimensions_probelookup_usealternate"	"1"
		"snd_steamaudio_custombake_dimensions_size_and_inout_bake_enabled" "1"
		"snd_steamaudio_custombake_dimensions_outsidefield_bake_enabled" "0"
		"snd_steamaudio_custombake_dimensions_smallsizefield_bake_enabled" "0"
		"snd_steamaudio_dimensions_max_ray_length"			"2500"
		"cl_disconnect_soundevent"				"citadel.convar.stop_all_game_layer_soundevents"
		"snd_event_browser_default_stack"		"citadel_default_3d"
		
		// voip
		"voice_in_process"			            "1"

		// Sound debugging
		"snd_report_audio_nan" "1"

		// Audio system settings
		"snd_sos_max_event_base_depth" "10"
		"sos_use_guid_filter" "1"

		"voice_always_sample_mic"               
		{
			"version"	"2"
			"default"	"0"
		}

		"reset_voice_on_input_stallout"         "0"
		"voice_input_stallout"                  "0.5"
		
		"audio_enclosure_calc_enabled"		"0"

		"sc_layer_batch_threshold_fullsort" "10"

		// Perf/Parallelism
		"iv_parallel_restore" "1"

		// For perf reasons, since we don't use source-based DSP:
		"disable_source_soundscape_trace"       "1"
	

		"fps_max"		"0"
		"fps_max_ui"	"60"

		"in_button_double_press_window" "0.3"

		// Convars that control spatialization of UI audio.
		"snd_ui_positional"								"1"
		"snd_ui_spatialization_spread"					"2.4"
		
		// sound volume rate change limiting
		"snd_envelope_rate"								"100.0"
		"snd_soundmixer_update_maximum_frame_rate" 		"0"

		//don't let people mess with speaker config settings.
		"speaker_config"
		{
			"min"		"0"
			"default"	"0"
			"max"		"2"
		}


		"snd_soundmixer"						"Default_Mix"
		"cloth_filter_transform_stateless" "0"

		"cl_joystick_enabled" "0"
		"panorama_joystick_enabled" "0"

		"snd_event_browser_focus_events" "true"

		"cl_max_particle_pvs_aabb_edge_length" "10"
		
		// Particles
		"cl_aggregate_particles" "true"
		"r_particle_batch_collections" "1"
		
		"citadel_enable_vdata_sound_preload" "true"

		"r_add_views_in_pre_output"		"1"

		// Disable Cubemap Brightening
		"lb_cubemap_normalization_max" 		"0"

		"update_all_keyframed_in_spatial_partition_update"	"0"
		"parallel_update_surrounding_bounds_in_spatial_partition_update"	"1"
		"always_perform_full_spatial_partition_update" "1"
		"cl_interp_parallel" "1"
		"parallel_perform_invalidate_physics" "1"
		"phys_agg_world_compounds" "0"

		"cl_updaterate" "128"
		"sv_parallel_checktransmit" "2"
		"net_gather_child_fields_only" "1"
	}

	Memory
	{
		"EstimatedMaxCPUMemUsageMB"	"1"
		"EstimatedMinGPUMemUsageMB"	"1"

		"ShowInsufficientPageFileMessageBox" "1"
		"ShowLowAvailableVirtualMemoryMessageBox" "1"
	}
}
