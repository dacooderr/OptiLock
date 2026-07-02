//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//										---------------------------------------- ver. 4.0 							                \\
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

	DisallowGameInfoConditionals 1
	PGIVersion "6E09D3ED5A47F6A97443813F0E00F90BAA435918F82DF0C9B5DA46D27A33D903"

	Localize
	{
		DuplicateTokensAssert	1
		DisallowTokenContexts	1
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
            Game_Language "citadel_*LANGUAGE*"
            Game          "citadel/addons"
            Mod           "citadel"
            Write         "citadel"
            Game          "citadel"
            Mod           "core"
            Write         "core"
            Game          "core"
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

        SkipRedundantChangeCallbacks "1"
        UseSerializedEntityPool      "1"
    }

    RenderSystem
    {
        // Stolen from CS2
        AllowPartialMipChainImmediateTexLoads "1"
        UseHardwareGammaRamp                  "0"
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
        AppID "103371621"
        //DLSSDefaultPreset    
        //ReflexLateWarp
        SupportsDLSS "1"
    }

    Engine2
    {
        SinglePlayerAsyncRendering "1"
        HasModAppSystems           "1"
        Capable64Bit               "1"
        URLName                    "citadel"
        RenderingPipeline
        {
            SupportsMSAA            "0" 
            DistanceField           "0" 
            AmbientOcclusionProxies "0" 
        }
        PauseSinglePlayerOnGameOverlay "1"
        DefensiveConCommands           "1"
        DisableLoadingPlaque           "1"
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
		"UsesBakedLighting" "1"
		"UseAnalyticGrid" "0"
		"SupportsDisplacementMapping" "0"
		"SteamAudioEnabled"				"1"
		"LatticeDeformerEnabled"		"1"
		"ShadowAtlasWidth" "16384"
		"ShadowAtlasHeight" "16384"
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
			"bakedlighting"	"1"	// Enable lightmapping during compile time		
			"envmap"	"0" // turned off since it currently causes an assert and doesn't work due to some build issue
			"nav"		"1"	// Generate nav mesh data
		}

		MeshCompiler
		{
			OptimizeForMeshlets 1
			TrianglesPerMeshlet 64	// Maximum valid value currently is 126
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
		}

		BakedLighting
		{
			Version 4
			ImportanceVolumeTransitionRegion 512            // distance we transition from high to low resolution charts 
			LightmapChannels
			{
				direct_light_shadows 1
				debug_chart_color 1
				directional_irradiance_sh2_dc 1
				
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
			LightmapGutterSize 2 // For bicubic filtering
			UseStaticLightProbes 0
			LPVAtlas 1
			BC6HHueShiftFixup 0 // Causes more artifacts than it solves atm
			Repack2 1
		}

		SteamAudio
		{
			ReverbDefaults
			{
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				NumRays				"32768"
				NumBounces			"64"
				IRDuration			"1.0"
				AmbisonicsOrder		"1"
			}
			PathingDefaults
			{
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				NumVisSamples		"1"
				ProbeVisRadius		"0"
				ProbeVisThreshold	"0.1"
				ProbeVisPathRange	"1000.0"
			}
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
		// this is just copied from the left4dead3 gameinfo.gi
		"forcevtxfileupconvert" 1
	}

    WorldRenderer
    {


        // Build cubemaps into a cube array instead of individual cubemaps.
        BindlessSceneObjectDesc      "CitadelBindlessDesc"
        EnvironmentMapCacheSizeTools "300"                                                              
        EnvironmentMapColorSpace     "linear"                                                  
        EnvironmentMapFaceSize       "256"                                                                                       
        EnvironmentMapFormat         "BC6H"   
        EnvironmentMapMipProcessor   "GGXCubeMapBlur"
        EnvironmentMapPreviewFormat  "BC6H"   
        EnvironmentMapRenderSize     "1024" 
        EnvironmentMapUseCubeArray   "1"   
        EnvironmentMaps              "1"                                                                                                       
        GrassCastsShadows            "0"

        EnvironmentMapCacheSize "256"

        // These are stolen from CS2
        LPVEdgeBlending "0" 

        // EnvironmentMapPreviewFormat "RGBA16161616F" 

    }


    SceneSystem
    {


        HairShading                  "false"
        // MeshletBufferCPUSlotCount "0"
        ParticleBufferSize           "256"
        // RenderMeshlets            "1"


        //CMTAtlasHeight             "512"
        //CMTAtlasWidth              "512"
        //CSMCascadeResolution       "0" 
        //CharacterDecals            "0"
        //CubemapFog                 "0"
        //DefaultShadowTextureHeight "0" 
        //DefaultShadowTextureWidth  "0" 
        DisableLateAllocatedTransformBuffer         "1"          
        DynamicShadowResolution                     "1"        
        FogCachedShadowAtlasHeight                  "0"       
        FogCachedShadowAtlasWidth                   "0"         
        FogCachedShadowTileSize                     "0"         
        FrameBufferCopyFormat                       "R11G11B10F" 
        GpuLightBinner                              "1"          
        GpuLightBinnerSupportViewModelCascade       "0"
        HDRFrameBuffer                              "0"
        LayerBatchThresholdFullsort                 "80"    
        MinimumLateAllocatedVertexCacheBufferSizeMB "64"    
        NonTexturedGradientFog                      "0"    
        SunLightManagerCount                        "0"     
        SunLightManagerCountTools                   "0"    
        SunLightMaxCascadeSize                      "2"     
        SunLightShadowRenderMode                    "Depth" 
        SupportsInstancedFade                       "0"
        Tonemapping                                 "0"    
        TransformTextureRowCount                    "1024" 
        TransformTextureRowCountToolsMode           "6144"
        VolumetricFog                               "0"   

        // Stolen from CS2
        GpuLightBinnerBinEnvMaps "1"
        GpuLightBinnerBinLPVs    "1"

        LightCookieAllocGranularity "1"
        LightCookieMinAllocSize     "0"
        DisableShadowFullSort       "1"
        SparseShadowTrees           "1" 
        PointLightShadowsEnabled    "1"


        WellKnownLightCookies
        {
            blank      "materials/effects/lightcookies/blank.vtex"
            flashlight "materials/effects/lightcookies/flashlight.vtex"
        }

        ComputeShaderSkinning "1"
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
		"features"					"animgraph;modelconfig;gamepreview;wireframe_backfaces;distancefield"
	}

    Particles
    {
        EnableParticleShaderFeatureBranching "1"
        Float16HDRBackBuffer                 "1"
        PET_SupportFadingOpaqueModels        "1"
        Features                             "non_homogenous_forward_layer_only"
        ParticlesFoggedByDefault             "0"
        PerVertexLighting                    "0"
        GpuImplicitRendererManifest          "1"
        EnableMixedResolution                "1"
    }

	ConVars
	{	 
	   // ---------------------- OptiLock -- ver. 4.0  -------------------------- \\
             //        OptiLock: https://gamebanana.com/mods/690233         \\
		    //         QOL Lite: https://gamebanana.com/mods/690233          \\
           //     Downloaded from: https://github.com/dacooderr/OptiLock      \\
          //      Tutorial: https://www.youtube.com/watch?v=Kpoet2ebl70        \\
		 //	      	   Discord: https://discord.gg/UxjsJB5Rp5				    \\
	    //																	     \\
	   //        If you would like to donate as a means of showing thanks         \\
	  //                 https://streamlabs.com/dacooderr/tip                      \\


// Press ctrl+f and type * to highlight the more visually impactful commands that you could adjust
// ================ PREFERENCES ================

// --- 1. Outlines ---
citadel_trooper_glow_disabled                           "1"  // 1 = Disable friendly/enemy minion glow.                          [def: "0"]
citadel_boss_glow_disabled                              "1"  // Disables boss and walker glow/highlight effect.                  [def: "0]
r_citadel_npr_outlines_max_dist                         "600"  // Limits outline distance to reduce unnecessary processing.        [def: "1000"]
r_citadel_selection_outline2_alpha                      "0.8"  // Outlines on enemy players and abilities on a scale of 0-1.       [def: "0.8"]
r_citadel_npr_outlines                                  "true"  // Enable outlines on enemy players.                                [def: "true"]
r_citadel_outlines                                      "1"  // Enables enemy outlines for better visibility.
citadel_player_glow_disabled                            "0"  // Disables player glow/highlight effect when pinged.               [def: "0"]
citadel_trooper_friendly_glow_disabled                  "1" 
cl_glow_brightness                                      "0"  

// --- 2. Field of View ---
r_aspectratio                                           "2.00"  // 1.75=80fov | 2.15=90fov | 2.49=100fov      [def: "0"]
citadel_camera_hero_fov                                 "100"  // The field of view angle of the camera when following a hero.     [def: "90"]

// --- 3. Crosshair/Hud ---
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
citadel_unit_status_old_update_rate                     "15"  // might fuck with health bars

// --- 4. Lighting & Shadows ---
sc_disable_baked_lighting                               "true"
lb_allow_time_sliced_shadow_map_rendering               "false"
lb_enable_shadow_casting                                "false"
lb_enable_dynamic_lights                                "false"  // Must be used in conjunction with lb_enable_lights for Hero Sillohouttes. (Will cause performance drop)
lb_enable_stationary_lights                             "false"
lb_dynamic_shadow_penumbra                              "true"
lb_dynamic_shadow_resolution                            "true"
lb_dynamic_shadow_resolution_base                       "64"
lb_dynamic_shadow_resolution_base_cmp_shadowmapsize     "true"
lb_shadow_map_cull_empty_mixed                          "true"
lb_enable_baked_shadows                                 "false"
lb_enable_binning                                       "false"
r_citadel_shadow_quality                                "0"
r_citadel_gpu_culling_shadows                           "1"
lb_barnlight_shadowmap_scale                            "0.1"
lb_csm_cascade_size_override                            "0.25"
lb_csm_override_staticgeo_cascades                      "0"
lb_csm_override_staticgeo_cascades_value                "0"
lb_sun_csm_size_cull_threshold_texels                   "30"
sparseshadowtree_enable_rendering                       "0"
sparseshadowtree_disable_for_viewmodel                  "1"
lb_enable_lights                                        "false"  // Enables lights across the game. Must be used in conjunction with lb_enable_dynamic_lights for Hero Sillohouttes. (Will cause performance drop)
lb_enable_newsum                                        "false"
r_indirectlighting                                      "true"
cl_globallight_shadow_mode                              "0"
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
mat_async_shader_load                                   "1"
r_citadel_sun_shadow_slope_scale_depth_bias             "0.5"
cl_retire_low_priority_lights                           "1"
r_multiscattering                                       "1"
r_light_flickering_enabled                              "0"
r_lightmap_size                                         "1"  // Maximum lightmap resolution..                                    [def: "65536"]
r_lightmap_size_directional_irradiance                  "0"
r_lightmap_bicubic_filtering                            "1"
r_ssao                                                  "0"
r_ssao_blur                                             "false"
r_ssao_strength                                         "0"
r_citadel_ssao_quality                                  "0"
r_citadel_ssao_thin_occluder_compensation               "0"
mat_set_shader_quality                                  "0"
r_distancefield_enable                                  "false"
r_citadel_distancefield_farfield_enable                 "false"
csm_viewmodel_shadows                                   "false"
r_citadel_gpu_preview_baked_shadows                     "false"
r_citadel_shadowdb                                      "64"
r_hair_shadowtile                                       "false"
r_mixed_shadows_fade_out_time                           "0.0001"

// --- 5. Skybox Rendering ---
r_draw3dskybox                                          "0"  //  Enables drawing the 3D skybox layer (distant geometry).         [def: "1"]

// --- 7. Object Culling ---
r_size_cull_threshold                                   "0.8"

// --- 8. Camera Tweaks ---
r_citadel_clip_sphere_min_opacity                       "0"  // Removes the blur from the pinhole camera                         [def: "40"]

// ================= UI ================
r_citadel_enable_pano_world_blur                        "true"
r_dashboard_render_quality                              "0"
panorama_disable_box_shadow                             "1"  // Disables UI box shadows in the UI (less GPU/UI cost).            [def: "0"]
panorama_disable_blur                                   "1"  // Disables UI blur effects in the UI.                              [def: "0"]
panorama_allow_transitions                              "false"  // Turns off UI anim (shop,etc)                                     [def: "1"]
panorama_use_new_occlusion_invalidation                 "1"
panorama_temp_comp_layer_min_dimension                  "128"

// ================ RAGDOLLS ================
cl_ragdoll_limit                                        "1"  // Limits number of ragdolls active at once.
ragdoll_parallel_pose_control                           "1"  // Multithreaded ragdoll handling, better performance (if ragdolls aren't disabled). [def: "0"]
cl_disable_ragdolls                                     "0"  // Keep set to 0 - enabling this (disabling ragdolls) can cause issue with doorman's ultimate. [def: "0"]

// ================ MODELS ================
r_hair_ao                                               "false"
ik_final_fixup_enable                                   "0"
ik_fabrik_align_chain                                   "0"
animgraph_enable_parallel_preupdate                     "1"
animgraph_enable_parallel_op_evaluation                 "1"
cloth_sim_on_tick                                       "false"
phys_threaded_cloth_bone_update                         "true"
props_break_max_pieces_perframe                         "0.5"
cloth_update                                            "1"

// ================ TEXTURES & VISUAL CLARITY ================
citadel_video_preset                                    "0"
r_texture_stream_mip_bias                               "4"  // Must be adjusted in Video.txt instead (Roblox Graphics)
r_texturefilteringquality                               "0"  // Texture filtering, has very low fps impact. 0: Bilinear, 1: Trilinear, 2: Aniso 2x, 3: Aniso 4x, 4: Aniso 8x, 5: Aniso 16x
mat_colorcorrection                                     "true"
r_texture_budget_dynamic                                "true"
r_drawdecals                                            "true"
r_decals                                                "true"
r_character_decal_resolution                            "64"
r_depth_of_field                                        "false"
r_effects_bloom                                         "false"
r_post_bloom                                            "false"
cl_show_splashes                                        "0"
sc_clutter_enable                                       "false"
volume_fog_intermediate_textures_hdr                    "false"
r_drawtracers                                           "1"
violence_ablood                                         "false"
violence_agibs                                          "false"
r_fallback_texture_lod_scale                            "4"
r_texture_stream_max_resolution                         "64"
r_citadel_depthoffield_enable                           "false"
r_citadel_distancefield_blur                            "false"
r_texture_budget_threshold                              "0.5"
r_texture_hookup_uses_threadpool                        "true"

// ================ INPUT ================
cl_input_enable_raw_keyboard                            "1"
m_rawinput                                              "1"

// ================ PARTICLES ================
cl_particle_max_count                                   "0"
cl_particle_newinit                                     "true"
r_particle_max_size_cull                                "600"
r_particle_max_detail_level                             "0"
particle_cluster_nodraw                                 "1"
r_physics_particle_op_spawn_scale                       "0"
r_RainParticleDensity                                   "0"
cl_particle_fallback_base                               "1"
cl_particle_fallback_multiplier                         "1"
cl_particle_sim_fallback_base_multiplier                "40"
cl_particle_sim_fallback_threshold_ms                   "1"
r_particle_skip_postsim                                 "true"
r_particle_timescale                                    "1.1"
cl_particle_batch_mode                                  "1"
r_draw_particle_children_with_parents                   "false"
r_particle_max_texture_layers                           "4"
r_particle_cables_cast_shadows                          "false"
r_particle_cables_culling                               "1"
r_particle_cables_render                                "false"
cl_aggregate_particles                                  "1"
func_break_max_pieces                                   "1"
r_particle_cables_render_meshlets                       "false"
r_particle_model_new8                                   "false"
r_particle_mixed_resolution_viewstart                   "200"
r_limit_particle_job_duration                           "true"
r_particle_min_timestep                                 "0.001"
cl_impacteffects                                        "0"
fx_drawmetalspark                                       "false"

// ================ Lod & Culling ================
cl_enable_eye_occlusion                                 "true"
skeleton_instance_lod_optimization                      "1"
sc_instanced_mesh_lod_bias                              "15"
sc_instanced_mesh_lod_bias_shadow                       "0.10"
sc_instanced_mesh_motion_vectors                        "0"
sc_instanced_mesh_size_cull_bias_shadow                 "10"
sc_fade_distance_scale_override                         "0"
sc_aggregate_bvh_threshold                              "16"
sc_layer_batch_threshold                                "16"
sc_layer_batch_threshold_fullsort                       "20"
sv_remove_ent_from_pvs                                  "1"
r_farz                                                  "10000"
r_mapextents                                            "10000"
citadel_use_pvs_for_players                             "true"
sv_waterdist                                            "0"
lb_ssss_samples                                         "0"
r_aoproxy_cull_dist                                     "0.01"
r_aoproxy_min_dist                                      "9999"
r_character_decal_monitor_render_res                    "128"
r_haircull_percent                                      "100"

// ================ Misc ================
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
csm_cascade0_override_dist                              "0"
csm_cascade1_override_dist                              "0"
csm_cascade2_override_dist                              "0"
csm_cascade3_override_dist                              "0"
csm_max_dist_between_caster_and_receiver                "0"
csm_max_num_cascades_override                           "0"
csm_max_visible_dist                                    "0"
csm_res_override_0                                      "1"
csm_res_override_1                                      "1"
csm_res_override_2                                      "1"
csm_res_override_3                                      "1"
anim_disable                                            "true"
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
r_texture_pool_size                                     "256"  // either 256 or 512
r_max_portal_render_targets                             "2"  // might set to 2 or more
citadel_damage_text_lifetime                            "0.5"
citadel_unit_status_delta_decay_delay                   "0"
citadel_unit_status_delta_decay_rate                    "10"
snd_steamaudio_enable_reverb                            "0"
snd_steamaudio_enable_perspective_correction            "0"
snd_spatialize_lerp                                     "0"
snd_mixahead                                            "0.05"
fog_enable                                              "0"
fog_enableskybox                                        "0"
cl_smooth                                               "true"  // might change to false again
cl_phys_enabled                                         "true"
csm_max_shadow_dist_override                            "0"
r_aoproxy_min_dist_box                                  "9999"
r_citadel_disable_npr_lighting                          "false"  // default: false - might change to true
r_drawparticles                                         "true"  // default: true - might change to false again
r_particle_batch_collections                            "true"  // default: false
r_render_portals                                        "true"  // default: true
r_rendersun                                             "false"  // default: true
r_texture_lod_scale                                     "4"  // default: 1
r_translucent                                           "true"  // default: true ; false gives fps but you cant see any trails, nor aoe effect, nothing
sc_hdr_enabled_override                                 "0"  // default: -1

// --- LIGHTING & SHADOWS ---
lb_csm_receiver_plane_depth_bias                        "0.00002"  // kai's cfg
lb_csm_receiver_plane_depth_bias_transmissive_backface  "0.0002"  // kai's cfg
lb_enable_fog_mixed_shadows                             "0"  // kai's cfg
sc_disable_shadow_materials                             "1"  // kai's cfg
lb_max_visible_barn_lights_override                     "1"  // kai's cfg
r_directional_lightmaps                                 "false"  // kai's cfg - default true
mat_max_lighting_complexity                             "1"  // kai's cfg - default 8
lb_enable_sunlight                                      "false"  // kai's cfg - Default: true<br>SceneSystem/LightBinner/Enable Sunlight
r_arealights                                            "false"  // kai's cfg - was true
r_flashlightbrightness                                  "0"  // kai's cfg
r_flashlightfar                                         "0"  // kai's cfg
r_flashlightshadowatten                                 "0"  // kai's cfg

// --- PARTICLES & EFFECTS ---
r_particle_max_draw_distance                            "1"  // kai's cfg - Lower = less particle range
r_citadel_screenspace_particles_full_res                "0"  // kai's cfg
r_muzzleflashbrightness                                 "0.01"  // kai's cfg - default 0.4 idk if this does anything

// --- MODELS, LOD, CULLING & MAP EXTENTS ---
r_monitor_3dskybox                                      "0"  // kai's cfg
r_propsmaxdist                                          "700"  // kai's cfg
sc_instanced_mesh_size_cull_bias                        "10"  // kai's cfg - Bias for size culling of instanced meshes
sv_pvs_max_distance                                     "6500"  // kai's cfg - default 4000, unrender things(boxes, creeps, objs,etc) behind walls or out of viewing distance, does not affect player model.
r_citadel_distancefield_down_sample                     "6"  // kai's cfg - default 1
sc_clutter_density_none_size                            "0.1"  // kai's cfg - Default 0.0035
sc_enable_discard                                       "true"  // kai's cfg - default true
sc_clutter_density_full_size                            "0.5"  // kai's cfg
r_strip_invisible_during_sceneobject_update             "1"  // kai's cfg - Default: false<br>
mesh_calculate_curvature_smooth_pass_count              "0"  // kai's cfg
sc_max_framebuffer_copies_per_layer                     "0"  // kai's cfg - no idea what this does ngl
r_world_wind_frequency_grass                            "0"  // kai's cfg
r_world_wind_frequency_trees                            "0"  // kai's cfg

// --- PHYSICS, CLOTH & DECALS ---
presettle_cloth_iterations                              "0"  // kai's cfg - default 3
pred_cloth_pos_max                                      "0"  // kai's cfg - Reduce cloth prediction was 1
pred_cloth_pos_multiplier                               "0"  // kai's cfg - was 0.3
pred_cloth_pos_strength                                 "0"  // kai's cfg - was 0.1
pred_cloth_rot_high                                     "0"  // kai's cfg - was 0.05
pred_cloth_rot_low                                      "0"  // kai's cfg - was 0.005
pred_cloth_rot_multiplier                               "0"  // kai's cfg - was 0.2 changing these values does fucking nothing
cl_phys_timescale                                       "1"  // kai's cfg - [FPS IMPACT] 0=Disable physics (max FPS) | 1=Normal physics | Lower = slower physics, less CPU
phys_threaded_kinematic_bone_update                     "1"  // kai's cfg
phys_threaded_transform_update                          "1"  // kai's cfg
cl_physics_highlight_active                             "0"  // kai's cfg - Turns on the absbox for all active physics objects.<br>  0 : un-highlight.<br>
phys_highlight_expensive_objects_strength               "0"  // kai's cfg - Default: 0.02<br>Highlight expensive physics objects strength, no need since expensive obj is disabled by default
phys_cull_internal_mesh_contacts                        "true"  // kai's cfg - default false
cl_phys_networked_start_sleep                           "true"  // kai's cfg - try on and off, this is probably what causing result screen to pop up when idling
phys_multithreading_enabled                             "1"  // kai's cfg - default true, alr enabled no need to include ngl
phys_dynamic_scaling                                    "false"  // kai's cfg - default true

// --- ANIMATION ---
anim_decode_forcewritealltransforms                     "true"  // kai's cfg - Default: false<br>Force BatchAnimationDecode to write transformations for all bones
animgraph_footlock_enabled                              "false"  // kai's cfg
r_morphing_enabled                                      "false"  // kai's cfg
r_smooth_morph_normals                                  "0"  // kai's cfg
animgraph_slowdownonslopes_enabled                      "false"  // kai's cfg

// --- GAMEPLAY, CAMERA & ENTITY HIGHLIGHTS ---
citadel_damage_offscreen_indicator_disabled             "1"  // kai's cfg - Set 1 to disable
citadel_show_new_damage_feedback_numbers                "0"  // kai's cfg - Set 1 to enable
citadel_camera_soft_collision                           "0"  // kai's cfg
citadel_camera_wobble_disable                           "1"  // kai's cfg
r_citadel_glow_health_bars                              "false"
citadel_player_outline_enemies                          "true"
citadel_trooper_outline_enabled                         "true"

// --- AUDIO ---
audio_enable_vmix_mastering                             "0"  // kai's cfg - [FPS IMPACT] 0=Off (saves CPU, +FPS) | 1=On (audio mastering enabled)"
dsp_volume                                              "0"  // kai's cfg - idk
snd_occlusion_bounces                                   "0"  // kai's cfg
snd_steamaudio_num_threads                              "4"  // kai's cfg - [ADJUST] Audio thread count - 1=Low CPU usage | Higher = better audio quality, more CPU By default, it might only use 1 thread. Increasing this allows the heavy sound math to spread out, preventing it from stalling the main game loop during loud teamfights
snd_mix_async                                           "1"  // kai's cfg
soundsystem_update_async                                "1"  // kai's cfg

// --- PIDJAN ---
mm_idle_enabled                                         "false"
citadel_match_details_lane_stats_time                   "360"

// ================ Test Group 4 ================
r_particle_parallel_simulation                          "1"
r_particle_batch_simulate                               "1"
threadpool_thread_limit                                 "0"
r_world_wind_strength                                   "0"
fs_async_threads                                        "-1"

// --- 6. FPS Caps & Minimized Throttling ---
engine_no_focus_sleep                                   "0"  // Milliseconds the engine sleeps per frame when unfocused (0 = no sleep, not recommended for low-end PC). [def: "20"]
fps_max                                                 "0"  // Max FPS while in game, limit fps to your monitor refresh rate. [def: "400"]
panorama_max_fps                                        "15"  // Menu FPS.                                                        [def: "120"]
panorama_max_overlay_fps                                "15"  // Fps In the settings/esc menu.                                    [def: "60"]

// --- 9. Texture Quality ---
r_texture_budget_update_period                          "0.5"  // Time (in seconds) between updating texture memory budget.        [def: "0.1"]
r_texture_pool_reduce_rate                              "512"
r_texture_stream_resolution_bias                        "0.01"

// ================ UI ================
closecaption                                            "false"  // I assume this does what it says on the tin                       [def: "false"]
hud_free_cursor                                         "0"  // Reduces UI input delay in minimap/spectator modes (not sure if this is true)
mm_idle_show_warning_at_s                               "999"  // How many seconds to wait before showing the idle warning dialog
panorama_async_compute_mipgen                           "1"
panorama_transition_time_factor                         "2"  // faster transition for the stuff that doesnt use animation

// ================ Shadows ================
lb_barnlight_shadow_use_precomputed_vis                 "0"
lb_csm_cross_fade_override                              "0"
lb_csm_distance_fade_override                           "0"
lb_dynamic_shadow_resolution_quantization               "32"  // 64
r_shadows                                               "0"  // Disables dynamic shadows.                                        [def: "1"]
r_size_cull_threshold_shadow                            "200"  // Threshold of shadow map size percentage below which objects get culled (higher = cull more to save shadow cost). [def: "0.2"]
sc_disable_spotlight_shadows                            "1"  // Disables spotlight shadows.                                      [def: "0"]
sparseshadowtree_parallel_generation                    "2"

// ================ Lighting ================
mat_tonemap_bloom_scale                                 "0"
r_citadel_ssao_bent_normals                             "false"
r_citadel_ssao_denoise_passes                           "0"
r_citadel_ssao_radius                                   "0"
r_directlighting                                        "true"  // Set to true to have your characters not be black in the shop     [def:"true"]
r_environment_map_roughness_range                       "0.01"  // Default: 0.2 0.3 Fade region for sampling environment maps on lightmapped nonmetals... BASICALLY TURN OFF REFLECTIONS ON MAP I THINK
r_gbuffer_disable_npr_lighting                          "true"  // might change to true
r_light_sensitivity_mode                                "true"
sc_cache_envmap_lpv_lookup                              "false"  // was true
thumper_use_plane_reflection                            "false"  // Default: true
vis_sunlight_enable                                     "0"

// ================ Ragdolls ================
ai_use_async_ragdoll_fixup                              "true"  // doesnt really need tbh since ragdoll is disabled
cl_ragdoll_default_scale                                "0"  // default 1 doesnt matter since ragdoll disabled
g_ragdoll_important_maxcount                            "1"

// ================ Models ================
cl_fasttempentcollision                                 "999999"  // Limits/controls fast collision processing for temporary entities (impacts/tracers/etc.); higher usually = more work. [def: "5"]
enable_boneflex                                         "false"  // Disables bone flexes (procedural facial/mesh flex drivers).      [def: "1"]
r_hair_indirect_transmittance                           "false"
r_render_hair                                           "0"

// ================ Visual Clarity ================
citadel_per_weapon_per_surface_impact_effects           "false"
mat_colcorrection_disableentities                       "0"  // Allows entity-based color correction. [def: "0"]
r_citadel_antialiasing                                  "0"  // default 1
r_citadel_fog_quality                                   "0"  // Deadlock/Citadel fog quality (0 = lowest). [def: "1"]
r_decals_default_fade_duration                          "0.001"  // How quickly decals (bullet holes) fade                           [def: "3"]
r_decals_default_start_fade                             "0.001"
r_decals_max_on_deformables                             "0"
r_decals_overlap_threshold                              "5"
r_drawmodeldecals                                       "0"  // does not exist in master convar
r_drawtracers_firstperson                               "0"
r_enable_cubemap_fog                                    "0"  // Disables cubemap-based fog. [def: "1"]
r_enable_gradient_fog                                   "0"  // Disables gradient fog. [def: "1"]
r_enable_volume_fog                                     "0"  // Disables volumetric fog. [def: "1"]
r_fullscreen_gamma                                      "2.2"  // recommended ppl to use this to make the game brighter, bigge number = darker
r_postprocess_enable                                    "true"  // default true
violence_hblood                                         "false"  // Disables human blood effects.                                    [def: "1"]
violence_hgibs                                          "false"  // Disables human gibs.                                             [def: "1"]

// ================ Network ================
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

// ================ System Related ================
battery_saver                                           "0"  // Disables battery saver mode (no automatic throttling).                   [def: "0"]
cpu_level                                               "1"  // CPU level.                                                               [def: "2"]
engine_max_ticks_to_simulate                            "33"  // Max number of ticks to simulate per frame, after which simulation will start to slow down compared to real time. [Def: "-1"]
gpu_level                                               "1"  // GPU level literally doesn't matter, gets set to 2 in the engine
gpu_mem_level                                           "1"  // GPU Memory level.                                                        [def: "2"]

// ================ Particles ================
particle_cluster_use_collision_hulls                    "false"  // REPLICATED CONVAR, MIGHT NEED TO MATCH WITH SERVER
r_particle_model_per_thread_count                       "32"  // I believe it is how many particle models a thread is allowed to handle.  [def: "32"]

// ================ Lod & Culling ================
mat_viewportscale                                       "1"  // Scale down the main viewport I belive this gets overwritten by video.txt [def: "1"]
sc_instanced_mesh_mesh_shader                           "false"  // default true Toggles mesh shader rendering for instanced meshes
sc_instanced_mesh_opaque_fade                           "false"
sc_screen_size_lod_scale_override                       "1"  // Controls LOD scale. Lower values will have less polys            [def: "-1"]

// ================ Misc ================
citadel_cinematic_intro_duration_npc                    "0.01"
citadel_cinematic_intro_duration_player                 "0.01"
citadel_cinematic_intro_enabled                         "-1"
citadel_hideout_enable_testing_tools                    "true"  // default false doesnt work
nav_obstruction_async_update                            "true"  // Not fully sure but async good wowie                              [def: "false"]
r_async_compute_fog                                     "true"  // Just whether to asyncroniously render fog                        [def: "false"]
r_citadel_depth_prepass_dynamic_objects                 "false"  // Should be not prepassing entities that move                      [def: "true"]
r_drawropes                                             "0"  // Draw ropes. [def: "1"]
r_pipeline_stats_use_flush_api                          "false"
r_renderdoc_auto_shader_pdbs                            "0"  // Automatically generate shader debug info on capture.             [def: "true"]
r_ropetranslucent                                       "0"  // Disables translucent rope rendering. [def: "1"]
rope_collide                                            "0"  // Disables rope collision simulation. [def: "1"]
rope_smooth_enlarge                                     "0"  // How much to enlarge ropes in screen space for antialiasing effect. [def: "1.4"]
rope_smooth_maxalpha                                    "0"  // Alpha for rope antialiasing effect. [def: "0.5"]
rope_smooth_maxalphawidth                               "0"  // Disables rope smoothing width-based alpha. [def: "1.75"]
rope_smooth_minalpha                                    "0"  // Disables rope minimum smoothing alpha. [def: "0.2"]
rope_smooth_minwidth                                    "0"  // Disables rope minimum smoothing width. [def: "0.3"]
rope_subdiv                                             "0"  // Sets rope subdivision (0 = minimal geometry). [def: "2"]
rope_wind_dist                                          "0"  // Disables rope wind influence. [def: "1000"]
wind_system_default_resolution_xy                       "64"
wind_system_temporal_smoothing                          "false"

// ================ Grass ================
r_grass_end_fade                                        "0"  // When to cull grass when far                                      [def: "300"]
r_grass_quality                                         "0"  // Quality of the grass                                             [def: "2"]
r_grass_start_fade                                      "0"  // When to cull grass when it's close I think                       [def: "0"]

// ================ Creep AI ================
ai_async_queue_max_jobs                                 "1"
ai_expression_optimization                              "1"
ai_foot_sweep_enable                                    "false"
ai_gather_conditions_async                              "true"  // default false
ai_strong_optimizations_no_checkstand                   "1"  // Not fully sure what exactly this does, but I would imagine given the name of the convar it optimizes ai. [def: "0"]
ai_think_interval                                       "0.3"
ai_think_interval_lod_low                               "1"
citadel_npc_disable_cockroaches                         "true"
citadel_npc_disable_floor_point_caching                 "false"
citadel_npc_force_animate_every_tick                    "false"  // Don't change this, it does what it says on the tin.              [def: "true"]
nav_pathfind_multithread                                "1"  // default false test 1 and 0, moves npc pathing to separate thread

// ================ Audio ================
snd_use_baked_occlusion                                 "1"

// ================ SHADER & RENDERING ================
sv_hide_ent_in_pvs                                      "1"
ai_lod_auto_enabled                                     "true"  //default 0, idk about this
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
sparseshadowtree_disable_add_layers                     "1"  // Completely breaks Sparse Shadow Tree layering
sc_allow_dynamic_constant_batching                      "1"
sc_disable_culling_boxes                                "1"  // Skips calculating bounding boxes for culling
r_flashlightambient                                     "0"  // Disables ambient lighting math on flashlights/muzzle flashes
r_flashlightconstant                                    "0"  // Disables constant lighting math
sc_allow_precomputed_vismembers                         "1"
sc_barnlight_enable_precomputed_vis                     "1"
sc_force_single_display_list_per_layer                  "1"
sc_aggregate_gpu_occlusion_culling                      "1"
sc_aggregate_gpu_vis_culling                            "1"
r_threaded_particles                                    "1"
panorama_draw_text_fast_path                            "1"  // Forces text rendering through a hardware fast-path
panorama_draw_text_fast_path_text_shadow                "1"  // Forces text shadows through a hardware fast-path
panorama_hsbc_through_fast_path                         "1"  // Forces UI hue/saturation/brightness changes through a fast-path
panorama_use_backbuffer_directly                        "1"  // Skips copying the UI buffer to memory and writes directly to the backbuffer
panorama_script_cache_enabled                           "1"  // Aggressively caches UI Javascript to prevent mid-game recompilation
citadel_unit_status_hide_names                          "1"  // Removes player names from health bars (text rendering is heavy).
citadel_camera_parrot_smoothing_rate                    "0"  // Stops the camera from running math to "smooth" itself back into place after hitting a wall.
steam_inputhandler_enabled                              "0"  // Completely disables Steam Input API polling. Huge for 1% lows if you only use Keyboard/Mouse.
panorama_clear_frames_on_device_restore                 "0"
r_grass_density_mode                                    "0"  // 0 = Density logic completely disabled. Skips checking if grass blades exist.
r_grass_alpha_test                                      "0"  // Skips transparency rendering math for foliage
shake_show                                              "false"
citadel_melee_shake_amplitude                           "0"  // Removes camera shake on melee
citadel_melee_shake_duration                            "0"
r_citadel_cloak_refract_amount                          "0"  // Disables the GPU-heavy refraction effect when heroes go invisible (Wraith/Invis item)
r_citadel_cloak_blur_amount                             "0"  // Disables blur on invis characters
cl_hud_telemetry_frametime_show                         "0"  // If you use an external FPS counter (Steam/RivaTuner), disable the in-game one to save Panorama updates
cl_skip_hierarchy_update_for_unchanged_entities         "true"  // Skips updating bones/hierarchy for networked entities that haven't moved. Massive CPU saver.
animgraph_enable_dirty_netvar_optimization              "true"  // Only updates the animation graph if the network variables actually changed.
r_impacts_alt_orientation                               "false"  // Skips complex grazing/glancing blow math for decals
v8_maximum_heap_size_mb                                 "1024"  // (Default is 512) Doubles UI memory heap to prevent CPU GC stutters


         //CREDITS																				      \\
        // dacooder    Config Creator            													   \\
	   // Xeraa		   Helped fix a major issue with console spam and fps drops late game				\\
      // Boot		   ConVar Contribution           												     \\
	 // Kaiz		   ConVar Contribution                                                                \\
	// simcasting 	   Benchmarking																		   \\
   // Artemon121       Made the Citadel cvar unhider														\\
  // Pidjan            Worked on further gameinfo changes and let us integrate                               \\
 // Piggy              Video.txt contributer and cool streamer guy                                            \\
// ----------------------------------------- END OF CONFIG OptiLock -- ver. 4.0 ------------------------------ \\
		"rate"
		{
            min     "98304"
            default "786432"
            max     "1000000"
        }
        sv_minrate                   "98304"
        sv_maxunlag                  "0.500"
        sv_maxunlag_player           "0.200"
        sv_lagcomp_filterbyviewangle "false"


        panorama_classes_perf_warning_threshold_ms "0.75"


        panorama_js_minidumps "1"

        panorama_disable_render_target_cache "0"


        panorama_skip_composition_layer_content_paint "1"


        snd_steamaudio_load_reverb_data  "0"
        snd_steamaudio_load_pathing_data "0"


        snd_steamaudio_enable_custom_hrtf  "0"
        snd_steamaudio_active_hrtf         "0"
        snd_steamaudio_reverb_update_rate  "10.0"
        snd_steamaudio_ir_duration         "1.0"
        snd_steamaudio_enable_pathing      "0"
        snd_steamaudio_invalid_path_length "0.0"
        cl_disconnect_soundevent           "citadel.convar.stop_all_game_layer_soundevents"
        snd_event_browser_default_stack    "citadel_default_3d"

        // voip
        voice_in_process "1"

        // Sound debugging
        // snd_report_audio_nan "1"

        // Audio system settings
        snd_sos_max_event_base_depth "10"
        sos_use_guid_filter          "1"

        voice_always_sample_mic
        {
            version "2"
            default "0"
        }

        reset_voice_on_input_stallout "0"
        voice_input_stallout          "0.5"
        cl_usesocketsforloopback      "1"
        cl_poll_network_early         "0"

        // Perf/Parallelism
        iv_parallel_restore "1"


        disable_source_soundscape_trace "1"

        // Networking - Induced latency (pred offset)
        cl_tickpacket_recvmargin_desired              "5"   // 5 ms base, min. floor for protecting against thrashing the queue
        cl_tickpacket_desired_queuelength             "0"   // 0 = attempt to always reach the queue's min floor
        cl_async_usercmd_send_disabled_recvmargin_min "0.5" // Additional frame since we do not use the async usercmd send (potentially unneccessary)
        cl_clock_buffer_ticks                         "1"
        cl_interp_ratio                               "0"
        cl_async_usercmd_send                         "false"

        fps_max_ui "120"

        in_button_double_press_window "0.3"

        // Convars that control spatialization of UI audio.
        snd_ui_positional            "false"
        snd_ui_spatialization_spread "2.4"

        // sound volume rate change limiting
        snd_envelope_rate                        "100.0"
        snd_soundmixer_update_maximum_frame_rate "0"


        speaker_config
        {
            min     "0"
            default "0"
            max     "2"
        }

        cq_buffer_bloat_msecs_max "120"

        snd_soundmixer                   "Default_Mix"
        cloth_filter_transform_stateless "0"

        cl_joystick_enabled       "1"
        panorama_joystick_enabled "1"

        snd_event_browser_focus_events "true"

        cl_max_particle_pvs_aabb_edge_length "100"

        // Allow aggregation of particles (for perf)
        // cl_aggregate_particles "true"

        citadel_enable_vdata_sound_preload "true"
        r_add_views_in_pre_output          "1"



    }

    Memory
    {
        EstimatedMaxCPUMemUsageMB "1"
        EstimatedMinGPUMemUsageMB "1"

        ShowInsufficientPageFileMessageBox      "1"
        ShowLowAvailableVirtualMemoryMessageBox "1"
    }
}
