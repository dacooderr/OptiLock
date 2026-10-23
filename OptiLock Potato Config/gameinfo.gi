//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//										---------------------------------------- ver. 6.1b 							                \\
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

	PGIVersion "48C04ECAFC6448F8D3F41F0AA3A15D065501751CF45FBE32DF6CB951BC4F7F6E"

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
            Game_UILanguage     citadel_*LANGUAGE*
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



        MinDXLevel                            "80"
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

			// Precomputed static shadowmaps for fog
			BakePrecomputedShadows				"0"
			BakePrecomputedShadowsForDirectionalLights "0"
			BakePrecomputedDepthPyramids		"0"
			PrecomputedShadowmapAtlas			"0" // so precomputed shadows work without bindless (dx11)
			PrecomputedShadowmapAtlasBorder		"0"
			PrecomputedShadowmapResolutionDefault "0" // should match SceneSystem/FogCachedShadowTileSizeTools
		}

		BakedLighting
		{
			Version 5
			ImportanceVolumeTransitionRegion 100            // distance we transition from high to low resolution charts 
			LightmapChannels
			{
				direct_light_shadows 0
				debug_chart_color 1
				directional_irradiance_sh2_dc 0
				
				directional_irradiance_sh2_lum
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
				BakeDimensions		"0"						// 0: Disabled, 1: Enabled
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
		FogCachedShadowAtlasWidthTools 0
		FogCachedShadowAtlasHeightTools 0
		FogCachedShadowTileSizeTools 0 // should match WorldRendererBuilder/PrecomputedShadowmapResolutionDefault
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
        SparseShadowTrees           "0" 
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
						   // ----------------------- OptiLock -- ver. 6.1b  ---------------------- \\
							   //        OptiLock: https://gamebanana.com/mods/690233          \\
							  //         QOL Lite: https://gamebanana.com/mods/690233           \\
							 //     Downloaded from: https://github.com/dacooderr/OptiLock       \\
							//      Tutorial: https://www.youtube.com/watch?v=Kpoet2ebl70         \\
						   //	      	   Discord: https://discord.gg/UxjsJB5Rp5				   \\
						  //																	    \\
						 //        If you would like to donate as a means of showing thanks          \\
						//                 https://streamlabs.com/dacooderr/tip                       \\

	// --Outlines/Objectives--
	citadel_trooper_glow_disabled                           "true"  	// Disable friendly/enemy minion glow.                          [def: "false"]
	citadel_boss_glow_disabled                              "true"  	// Disables boss and walker glow/highlight effect.              [def: "false"] 
	citadel_trooper_friendly_glow_disabled                  "true"
	r_citadel_glow_health_bars                              "false"
	citadel_player_outline_enemies                          "true"
	citadel_trooper_outline_enabled                         "false"
	
	// --Field of View--
	r_aspectratio                                           "2.15"  	// 1.75=80fov | 2.15=90fov | 2.49=100fov   
	citadel_camera_hero_fov                                 "100"  		// The field of view angle of the camera when following a hero.     [def: "90"]
	
	// --UI--
	panorama_allow_transitions								"false"		// UI elements are mostly CPU demanding
	panorama_box_shadow_no_comp_layer						"false"
	panorama_disable_blur									"true"
	panorama_disable_box_shadow								"true"
	panorama_use_new_occlusion_invalidation                 "1"
	panorama_temp_comp_layer_min_dimension                  "128"
	panorama_disable_descendant_filtering                   "true"
	r_dashboard_render_quality                              "0" 
	hud_free_cursor                         				"0"    
	panorama_async_compute_mipgen							"true"
	citadel_hud_objective_health_idle_timeout               "4"		  
	citadel_damage_text_lifetime							"0.5"
	citadel_unit_status_delta_decay_delay					"0"
	citadel_unit_status_delta_decay_rate					"10"
	minimap_update_rate_hz									"30"
	panorama_draw_text_fast_path							"true"
	panorama_draw_text_fast_path_text_shadow                "1"  
	panorama_hsbc_through_fast_path                         "1" 
	panorama_use_backbuffer_directly                        "1" 
	panorama_script_cache_enabled                           "1" 
	panorama_clear_frames_on_device_restore					"0"
	
	// --Render Distance/Culling--
	r_farz													"8500"		// Override the far clipping plane. Distance from your Hero in which things are rendered. 7000 is as low as I'd go before it gets too distracting and an actual disadvantage. 
	r_mapextents											"200"
	r_nearz													"10"
	r_size_cull_threshold 									"0.8"
	r_size_cull_threshold_fade								"10"
	r_haircull_percent                  					"100"
	r_propsmaxdist											"600"
	sc_instanced_mesh_size_cull_bias						"5"
	sv_pvs_max_distance										"3000"
	lb_csm_override_staticgeo_cascades                      "true"
	lb_csm_override_staticgeo_cascades_value                "1"
	cl_enable_eye_occlusion									"true"
	sc_fade_distance_scale_override							"0.001"
	phys_cull_internal_mesh_contacts						"true"
	lb_shadow_map_culling									"true"
	
	// --Lighting--
	mat_colorcorrection										"false"
	sc_disable_baked_lighting                               "true"
	lb_sun_csm_size_cull_threshold_texels                   "30"
	lb_csm_draw_translucent                                 "false"
    cl_retire_low_priority_lights               			"1"    
    lb_cubemap_normalization_max                			"1"    
    lb_cubemap_normalization_roughness_begin    			"0" 
    r_arealights                                			"false" 
	vis_sunlight_enable										"false"
    r_citadel_distancefield_farfield_enable     			"0"     
    r_citadel_ssao_quality                      			"0" 
    r_citadel_sun_shadow_slope_scale_depth_bias 			"0.01"                                                           
    r_directional_lightmaps                     			"false"     
    r_light_flickering_enabled                  			"false"
    r_light_sensitivity_mode                    			"true"   
    r_lightmap_size                             			"0"    
    r_lightmap_size_directional_irradiance      			"0"         
    r_ssao                                      			"false"    
    r_ssao_blur                                 			"false"  
    thumper_use_plane_reflection                			"false" 
	mat_max_lighting_complexity								"0"
	
	//--Textures--
	sc_screen_size_lod_scale_override						"0.01"		// Make models looked cursed
    r_texture_budget_dynamic         						"1"   
    r_texture_budget_threshold       						"0.85"
    r_texture_budget_update_period   						"0.5"
    r_texture_pool_reduce_rate       						"256" 
    r_texture_stream_max_resolution  						"64"
    r_texturefilteringquality        						"0" 
	r_citadel_antialiasing									"0"
	r_texture_nonstreaming_load                             "1"
	r_texture_stream_throttle_count_over_budget             "0"
	r_fallback_texture_lod_scale							"0.0001"
	
	// --Shadows--
	lb_dynamic_shadow_penumbra                             	"true"
    lb_dynamic_shadow_resolution                           	"true" 
    lb_dynamic_shadow_resolution_base                      	"256"		// Apparently the engines lowest recognized values for dynamic resolution convars is 256 and I believe setting this to 0 just makes the engine default it back to 256 
    lb_dynamic_shadow_resolution_quantization              	"256"    
	lb_dynamic_shadow_resolution_base_cmp_shadowmapsize     "true"
    lb_enable_shadow_casting                               	"false" 
    lb_precomputed_shadowmap_enable                        	"false"
    lb_ssss_samples                                        	"0"     
    lb_sun_csm_size_cull_threshold_texels                  	"30"   
	lb_csm_receiver_plane_depth_bias                       	"0"
    lb_csm_receiver_plane_depth_bias_transmissive_backface 	"0"
    lb_barnlight_shadow_use_precomputed_vis                	"0"
    lb_barnlight_shadowmap_scale                           	"0" 
    lb_csm_cascade_size_override                           	"0" 
    lb_csm_cross_fade_override                             	"0"
    lb_csm_distance_fade_override                          	"0"
    lb_csm_draw_alpha_tested                               	"false" 
	csm_max_num_cascades_override							"0"
	csm_max_shadow_dist_override							"1"
	lb_csm_override_bulb_radius								"0"
	lb_cubemap_normalization_max							"0.001"
	r_citadel_distancefield_shadows							"false"
	r_citadel_drop_shadow_update_frequency					"0"
	r_citadel_shadowdb										"0"
	r_citadel_sun_shadow_slope_scale_depth_bias				"0"
	sc_instanced_mesh_lod_bias								"0.000001"
    sc_instanced_mesh_lod_bias_shadow                      	"0.000001" 
    sparseshadowtree_disable_for_viewmodel                 	"true"  
    sparseshadowtree_enable_rendering                      	"false"
	sparseshadowtree_leaf_precision_viewmodel				"false"
	lb_precomputed_shadowmap_depth_bias                     "0.00001"
	lb_shadow_texture_height_override                       "0.00001"
	lb_shadow_texture_width_override                        "0.00001"
	r_citadel_shadow_quality                                "0"
	mat_set_shader_quality                                  "0"
	csm_viewmodel_shadows                                   "false"
	r_citadel_gpu_preview_baked_shadows                     "false"
	r_hair_shadowtile                                       "false"
	r_mixed_shadows_fade_out_time                           "0.000001"
	sc_instanced_mesh_size_cull_bias_shadow					"5"
	lb_timesliced_shadows_dynamic_size						"0.0001"
	lb_mixed_shadows										"false"
	
	// --Particles--
	//cl_particle_max_count									"800"		// Lowering this anymore than 800 along with lowering r_particle_max_draw_distance causes particle console spam and in turn major FPS drops
	r_particle_max_draw_distance							"300000"
	cl_particle_newinit                     				"true"
	r_limit_particle_job_duration							"true"
	r_particle_max_detail_level								"0"	
	r_particle_max_size_cull								"800"
	r_citadel_disable_particle_lights						"true"
	particle_cluster_nodraw                 				"true"
	r_physics_particle_op_spawn_scale       				"0.0001"
	r_RainParticleDensity                  					"0"
	cl_particle_fallback_base               				"4"
	cl_particle_fallback_multiplier         				"2"
	cl_particle_sim_fallback_base_multiplier				"2"
	r_draw_particle_children_with_parents					"false"
	cl_particle_sim_fallback_threshold_ms                   "0"
	r_particle_skip_postsim                                 "true"
	r_particle_timescale                                    "0.7"
	cl_particle_batch_mode                                  "1"
	r_particle_max_texture_layers                           "4"
	r_particle_cables_cast_shadows                          "false"
	r_particle_cables_render                                "false"
	cl_aggregate_particles                                  "1"
	func_break_max_pieces                                   "1"
	r_particle_cables_render_meshlets                       "false"
	r_particle_mixed_resolution_viewstart                   "1"
	fx_drawmetalspark                                       "false"
	particle_cluster_use_collision_hulls					"false"
	r_late_particle_job_sync                                "1"
	r_threaded_particles                                    "1"
	r_particle_model_new8									"false"
	r_particle_enable_fastpath								"true"
	
	// --Post Processing/Decals--
	r_postprocess_enable									"false"			// Game dark
	r_decals												"0"
	r_distancefield_enable									"false"
	r_citadel_distancefield_blur							"false"
	citadel_per_weapon_per_surface_impact_effects 			"false"
    cl_impacteffects                              			"0"
    cl_show_splashes                              			"0" 
    mat_colcorrection_disableentities             			"1"     
    r_citadel_depthoffield_enable                 			"false"
    r_citadel_fog_quality                         			"0"     
    r_decals_default_fade_duration                			"0.000001"
    r_decals_default_start_fade                   			"0.000001"
    r_decals_overlap_threshold                    			"0.01"
    r_depth_of_field                              			"0" 
    r_drawtracers_firstperson                     			"0"
    r_effects_bloom                               			"0"          
    r_fullscreen_gamma                            			"2.2"   
    r_post_bloom                                  			"0"    
    sc_clutter_enable                             			"0"     
    violence_ablood                               			"false"
    violence_agibs                                			"false" 
    violence_hblood                               			"false"
    violence_hgibs                                			"false" 
    volume_fog_intermediate_textures_hdr          			"false" 
    r_citadel_distancefield_down_sample						"6"		
	mat_tonemap_bloom_scale									"0"
	
	// --Character--
	r_character_decal_resolution							"0.001"
	r_character_decal_monitor_render_res					"0.001"
	cl_fasttempentcollision                                 "999999"		// Random spamming of 9s, could probably change to something more reasonable.
	enable_boneflex                                         "false"  
	r_hair_indirect_transmittance                           "false" 
    animgraph_slowdownonslopes_enabled         				"false"
    cl_bone_cache_optimization                 				"1"
    cloth_sim_on_tick                          				"0"      
    cloth_update                               				"1"           
    ik_fabrik_align_chain                      				"0"     
    ik_final_fixup_enable                      				"0"     
    phys_threaded_cloth_bone_update            				"1"  
    phys_threaded_kinematic_bone_update        				"1"   
    phys_threaded_transform_update             				"1"                                                     
    pred_cloth_pos_max                         				"0"   
    pred_cloth_pos_multiplier                  				"0"   
    pred_cloth_pos_strength                   				"0"  
    pred_cloth_rot_high                        				"0"  
    pred_cloth_rot_low                         				"0"  
    pred_cloth_rot_multiplier                  				"0"  
    presettle_cloth_iterations                 				"0"   
    props_break_apply_radial_forces            				"false"   
    props_break_max_pieces_perframe            				"0.1" 
    r_hair_ao                                  				"false"   
	
	// --- ANIMATION ---
	anim_decode_forcewritealltransforms                     "true"  
	animgraph_footlock_enabled                              "false"  
	r_smooth_morph_normals                                  "false"  
	animgraph_slowdownonslopes_enabled                      "false"  
	animgraph_footlock_ik_enable							"false"
	animgraph_footlock_calculate_tilt						"false"
	animgraph_footlock_ground_roll							"false"
	animgraph_footlock_hip_offset_enable					"false"
	animgraph_footlock_trace_ground_enabled 				"false"
    animgraph_slowdownonslopes_enabled 						"false"
	
	// --CSM--
	csm_sst_vertical_depth_shear_enable						"false"		// Most if not all CSM ConVars have cheat flags but this doesn't matter. As long as the ConVar adjustment sticks when checking Console without -dev or -insecure, it works.
	csm_sst_pushback_distance								"25"
	csm_sst_max_visible_dist								"10"
	csm_res_override_0 										"1"
    csm_res_override_1 										"1"
    csm_res_override_2 										"1"
    csm_res_override_3 										"1"
	csm_viewmodel_max_shadow_dist							"0"
	csm_viewmodel_max_visible_dist							"0"
	csm_max_visible_dist									"0"
	csm_max_num_cascades_override                           "0"
	csm_cascade_viewdir_shadow_bias_scale					"0.0001"
	csm_cascade0_override_dist								"0"
	csm_cascade1_override_dist 								"0"
    csm_cascade2_override_dist 								"0"
    csm_cascade3_override_dist 								"0"
	csm_max_dist_between_caster_and_receiver				"0.0001"
	csm_viewmodel_nearz										"200"
	csm_sst_shadow_focus_region_caster_headroom				"8"
    csm_sst_shadow_focus_region_maxz 						"-1000"
    csm_sst_shadow_focus_region_minz 						"-2000"
	
	// --RAGDOLLS--
	ai_use_async_ragdoll_fixup    							"true" 
	cl_ragdoll_limit                                        "-1"		// Making this 0 causes issues with Doorman ult
	ragdoll_parallel_pose_control                           "1"  
	g_ragdoll_important_maxcount  							"1"
	
	// ---Camera Tweaks---
	citadel_camera_soft_collision 							"0"
    citadel_camera_wobble_disable 							"1"
	citadel_damage_offscreen_indicator_disabled             "1"
	shake_show												"false"
	citadel_melee_shake_amplitude                           "0" 
	citadel_melee_shake_duration                            "0"
	
	// --Network--
	cl_async_usercmd_send                                   "true"  
	cl_parallel_readpacketentities                          "1"
	cl_parallel_readpacketentities_threshold                "2"
	cl_prediction_savedata_postentitypacketreceived         "1"
	cl_resend                                               "15" 
	cl_smoothtime                                           "0.01"  
	cl_updaterate                                           "128"  
	net_async_clientconnect                                 "1"
	r_frame_sync_enable                                     "0"  
	sv_parallel_sendsnapshot                                "2"
	
	// --INPUT--
	cl_input_enable_raw_keyboard                            "1"
	
	// --AI--
	ai_async_queue_max_jobs									"1"
	ai_foot_sweep_enable									"false"
	ai_gather_conditions_async								"true"
	ai_strong_optimizations_no_checkstand                   "1"
	ai_think_interval                                       "0.3"
    ai_think_interval_lod_very_low							"1"
	citadel_npc_disable_cockroaches							"true"
	ai_lod_auto_enabled 									"true"
	ai_think_interval_lod_med                               "0.4"
	
	// --Misc--
	sc_layer_batch_threshold								"16"
	r_grass_quality											"0"
	r_grass_end_fade                                        "0"  
	r_grass_quality                                         "0"  
	r_grass_start_fade                                      "0" 
	r_low_latency                                           "1"			// NVIDIA Low Latency/AMD Anti-Lag 2 (0 = off, 1 = on, 2 = NV-only, on + boost) just use 1 for AMD probably
	r_update_particles_on_render_only_frames				"true"
	think_limit                                             "10"
	zipline_use_new_latch                                   "0"
	engine_low_latency_sleep_after_client_tick              "true"
	engine_allow_multiple_simulates_per_frame               "true"
	engine_accurate_input_processing_delta_time             "true"
	cl_interp_parallel                                      "1"
	cl_batch_entity_list_ops_during_latch                   "1"
	sc_dithered_lod_transition_amt                          "0"
	r_enable_rigid_animation                                "true"
	cl_smooth                                               "true" 
    r_aoproxy_cull_dist                                     "0.000001"	
	r_aoproxy_min_dist										"9999"
	r_aoproxy_min_dist_box                                  "9999"
	r_particle_batch_collections                            "true"    
	citadel_hideout_enable_testing_tools                    "true"  
	nav_obstruction_async_update                            "true" 
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
	r_world_wind_strength                                   "0"
	fs_async_threads                                        "-1"
	sc_instanced_mesh_motion_vectors						"0"
	sv_remove_ent_from_pvs									"1"
	sv_hide_ent_in_pvs										"1"
	citadel_use_pvs_for_players								"true"
	sv_waterdist											"0"
	cl_simulate_dormant_entities							"false"
	sc_force_materials_batchable							"true"
	sc_allow_dithered_lod									"false"
	enable_priority_boost									"true"
	r_max_portal_render_targets 							"2"
	r_strip_invisible_during_sceneobject_update				"1"
	mesh_calculate_curvature_smooth_pass_count              "0"
	sc_max_framebuffer_copies_per_layer						"0"
	cl_physics_highlight_active								"0"
	cl_phys_networked_start_sleep                           "true"  
	phys_multithreading_enabled								"true"
	thread_pool_option										"-1"  		// Can improve performance on Intel CPUs but does basically nothing on AMD [test 0 or 4 if on Intel] (The set value of -1 should default to your whats appropriate for your CPU)
	cl_pred_optimize                                        "true"
	cl_pred_parallel_postnetwork                            "true"
	cl_phys_animated_hierarchy                              "false"
	phys_continuous_kinematic_update                        "0"
	sparseshadowtree_disable_add_layers                     "1"  
	sc_allow_dynamic_constant_batching                      "true"
    sc_allow_precomputed_vismembers                         "1"
	sc_barnlight_enable_precomputed_vis                     "1"
	sc_force_single_display_list_per_layer                  "1"
	sc_aggregate_gpu_occlusion_culling                      "1"
	steam_inputhandler_enabled								"true"
	cl_skip_hierarchy_update_for_unchanged_entities         "true"  
	animgraph_enable_dirty_netvar_optimization              "true"  
	r_impacts_alt_orientation                               "false" 
	v8_maximum_heap_size_mb                                 "512" 
	
	// --Physics--
	cl_phys_enabled 										"true"		// Probably breaks the game havent tested
	phys_expensive_shape_threshold							"120"
	phys_highlight_expensive_objects_strength				"0"
	
	// --TEST--
	citadel_player_model_force_highest_lod					"false"
	citadel_video_preset									"0"
	citadel_zipline_render_mode								"0"
	lb_cull_offscreen_bounce_light_shadows					"true"
	lb_cull_onscreen_bounce_light_shadows					"true"
	lb_csm_override_staticgeo_cascades_animated_verts		"false"
	lb_allow_time_sliced_shadow_map_rendering				"false"
	r_aoproxy_default_ambient_strength						"0"
	r_citadel_distancefield_occlusion_length				"0"
	r_citadel_distancefield_ray_origin_bias_max 			"0"
	r_citadel_distancefield_ray_origin_bias_min				"0"
	r_citadel_gpu_preview_denoise_shadow_passes				"false"
	r_citadel_gpu_preview_denoise_passes					"false"
	r_impacts_decal_grazing_incidence_cutoff				"0.0001"
	r_impacts_decal_grazing_incidence_variance				"0.0001"
	r_particle_model_per_thread_count						"1"
	r_use_memory_budget_model								"true"
	rtx_texture_resolution									"0"
	sc_aggregate_gpu_culling								"true"
	sc_instanced_mesh_gpu_culling							"true"
	sc_instanced_mesh_gpu_density_culling					"true"
	sc_instanced_mesh_opaque_fade							"true"
	sc_instanced_mesh_shadows_batch_across_materials		"false"
	sc_instanced_mesh_enable								"false"
	r_citadel_distancefield_max_distance					"0"
	sc_clutter_desity_override								"true"
	sc_clutter_density_full_size							"0.0001"
	sc_clutter_density_none_size							"0.0001"
	sc_aggregate_rtproxy_unique_geo							"false"
	sc_aggregate_render_mesh_shader							"false"
	sc_aggregate_rtproxy_instanced_geo						"false"
	sc_aggregate_bvh_threshold								"10"
	sc_mesh_backface_culling								"true"
	sc_mesh_shadows_batch_across_materials					"false"
	sc_shadow_slopescale_depth_bias							"0"
	sc_shadow_depth_bias_state_override						"true"
	sc_shadow_depth_bias									"0"
	r_citadel_gpu_preview_denoise							"false"
	r_size_cull_threshold_shadow							"75"
	r_citadel_gpu_culling_shadows							"true"
	sc_mesh_gpu_volume_culling								"true"
	sc_mesh_gpu_occlusion_culling							"true"
	sc_instanced_mesh_opaque_fade							"false"
	vprof_on												"0"
	sv_enable_donttransmit									"1"
	sparseshadowtree_parallel_generation					"2"
	sparseshadowtree_cs_exclude_next_cascade_region			"1"
	vis_enable												"1"			// This should be enabled by default but some people may have disabled in the past and some ConVars stick so I'm adding it here because it's really imporant to have on. It skips rendering objects off your screen that aren't needed.
	snd_occlusion_rays										"0"
	snd_occlusion_bounces									"0"
	snd_steamaudio_enable_perspective_correction			"0"
	snd_steamaudio_enable_ordertruncated_ambisonics_hrtf	"0"
	snd_steamaudio_enable_editor_profiling					"0"
	snd_steamaudio_enable_occlusion_caching					"1"
	sv_maxupdaterate										"40"
	cl_interp_ratio											"0"
	rtx_dynamic_blas										"false"
	rtx_force_default_hitgroup								"true"
	sv_minupdaterate										"10"
	cl_modifier_parallel_gather_status_effect_updates		"true"
	cl_predictioncopy_runs									"0"
	sv_cloth_interp_rot										"0"
	sv_maxspeed												"320"
	sv_maxvelocity											"3500"
	sv_stepsize												"18"
	stats_collect_gpu										"0"
	sv_frame_perf_sample_buffer_max							"100"
	sv_debug_overlays_bandwidth								"65536"
	r_texture_budget										"1"
	r_texture_pool_size										"256"		// Apparently the engines lowest recognized values for dynamic resolution convars is 256 and I believe setting this to 0 just makes the engine default it back to 256 
	r_texture_load_async									"1"
	r_pixelvisibility_partial								"false"
	r_threaded_scene_object_update							"1"
    sc_cache_envmap_lpv_lookup                  			"false"  	// Changed from True to False
	engine_no_focus_sleep									"0"
	mat_async_shader_load									"true"
	r_skip_precache_validation_check						"true"
	lb_enable_fog_mixed_shadows								"false"
	lb_shadow_map_cull_empty_mixed							"true"
	sc_disable_spotlight_shadows							"true"
	r_environment_map_roughness_range						"0.001 0.001"
	r_morphing_enabled										"false"
	mat_shading_complexity_max_instruction_count			"0"
	mat_shading_complexity_max_register_count				"0"
	r_async_shader_compile_notify_frequency					"9999"
	ik_constraints_enabled									"false"
	ik_enable												"false"
    ik_fabrik_backwards_enabled								"false"
    ik_fabrik_forwards_enabled 								"false"	
    ik_final_fixup_enable 									"0"
    ik_planetilt_enable 									"false"
    ik_debug_dogleg3bone_enabled 							"false"
    ik_debug_fabrik_backwards_enabled 						"false"
    ik_debug_fabrik_forwards_enabled 						"false"	
	
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
	   // ----------------------------------------- END OF CONFIG OptiLock -- ver. 6.1b ------------------------------ \\
		
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

		"update_all_keyframed_in_spatial_partition_update"	"1"
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