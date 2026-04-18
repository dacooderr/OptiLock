//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																					\\
//										----------------------------------------												  	\\
//																																    \\
//						If this config helped you, you wanna be extra nice, let me know by giving a little back or					\\
//										check out my YouTube and Twitch! -dacooder													\\
//											https://streamlabs.com/dacoder_/tip               										\\
//|________________________________________________________________________________________________________________________________|\\	

"GameInfo"
{
    game        "citadel"
    title       "Citadel"
    type        multiplayer_only
    nomodels 1
    nohimodel 1
    nocrosshair 0
    hidden_maps
    {
        "test_speakers"         1
        "test_hardware"         1
    }
    nodegraph 0
    perfwizard 0
    tonemapping 0 
    GameData    "citadel.fgd"
    
    Localize
    {
        DuplicateTokensAssert   1
        DisallowTokenContexts   1
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
            Game_Language       citadel_*LANGUAGE*
            Game                citadel/addons
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
			FakeLag			0
			FakeLoss		0
			//FakeReorderPct 0.05
			//FakeReorderDelay 10
			//FakeJitter "low"
			// Turning off fake jitter for now while I work on making the CQ totally solid
			FakeReorderPct 0
			FakeReorderDelay 0
			FakeJitter "off"
		}

        "SkipRedundantChangeCallbacks"  "1"
    }

    RenderSystem
    {
		IndexBufferPoolSizeMB 32
		UseReverseDepth 1
		Use32BitDepthBuffer 0
		Use32BitDepthBufferWithoutStencil 0
		SwapChainSampleableDepth 1
		VulkanMutableSwapchain 1
		"LowLatency"								"1"
		"VulkanOnly_Linux"							"1"
		"VulkanRequireSubgroupWaveOpSupport"		"1"
		"VulkanRequireDescriptorIndexing"			"1"
		"VulkanSteamShaderCache" "1"
		"VulkanSteamAppShaderCache" "1"
		"VulkanSteamDownloadedShaderCache" "1"
		"VulkanAdditionalShaderCache" "vulkan_shader_cache.foz"
		"VulkanStagingPMBSizeLimitMB" "384"
		"GraphicsPipelineLibrary"	"1"
		"VulkanOnlyTestProbability" "0"
		"VulkanDefrag"				"1"
		"MinStreamingPoolSizeMB"	"1024"
		"MinStreamingPoolSizeMBTools" "2048"
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
            DistanceField 0
        }
        PauseSinglePlayerOnGameOverlay 1
        DefensiveConCommands 1
        DisableLoadingPlaque 1
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
        HierarchicalEncodingFiles    "1"
    }

    ToolsEnvironment
    {
        "Engine"    "Source 2"
        "ToolsDir"  "../sdktools"   // NOTE: Default Tools path. This is relative to the mod path.
    }
    
    pulse
    {
        "pulse_enabled"                 "1"
    }

    Hammer
    {
        "fgd"                   "citadel.fgd"   // NOTE: This is relative to the 'game' path.
        "GameFeatureSet"        "Citadel"
        "DefaultSolidEntity"    "trigger_multiple"
        "DefaultPointEntity"    "info_player_start"
        "NavMarkupEntity"       "func_nav_markup"
        "OverlayBoxSize"            "8"
        "TileMeshesEnabled"         "1"
        "RenderMode"                "ToolsVis"
        "CreateRenderClusters"      "1"
        "DefaultMinDrawVolumeSize"  "2048"
        "DefaultMinTrianglesPerCluster" "16384"
        "TileGridSupportsBlendHeight"   "1"
        "TileGridBlendDefaultColor" "0 255 0"
        "LoadScriptEntities" "0"
        "UsesBakedLighting" "1"
        "UseAnalyticGrid" "0"
        "SupportsDisplacementMapping" "0"
        "SteamAudioEnabled"             "1"
        "LatticeDeformerEnabled"        "1"
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
            "bakedlighting" "0" // Enable lightmapping during compile time      
            "envmap"    "0" // turned off since it currently causes an assert and doesn't work due to some build issue
            "nav"       "1" // Generate nav mesh data
        }

        MeshCompiler
        {
            OptimizeForMeshlets 1
            TrianglesPerMeshlet 64  // Maximum valid value currently is 126
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
            UseAggregateInstances               "1"
            AggregateInstancingMeshlets         "1"
            BakePropsWithExtraVertexStreams     "1"
        }

        BakedLighting
        {
            Version 4
            ImportanceVolumeTransitionRegion 256            // distance we transition from high to low resolution charts 
            LightmapChannels
            {
                direct_light_shadows 0
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
            LightmapGutterSize 0 // For bicubic filtering
            UseStaticLightProbes 0
            LPVAtlas 1
            BC6HHueShiftFixup 0 // Causes more artifacts than it solves atm
            Repack2 1
        }

        SteamAudio
        {
            ReverbDefaults
            {
                GridSpacing         "3.0"
                HeightAboveFloor    "1.5"
                RebakeOption        "0"                     // 0: cleanup, 1: manual, 2: auto
                NumRays             "32768"
                NumBounces          "64"
                IRDuration          "1.0"
                AmbisonicsOrder     "1"
            }
            PathingDefaults
            {
                GridSpacing         "3.0"
                HeightAboveFloor    "1.5"
                RebakeOption        "0"                     // 0: cleanup, 1: manual, 2: auto
                NumVisSamples       "1"
                ProbeVisRadius      "0"
                ProbeVisThreshold   "0.1"
                ProbeVisPathRange   "1000.0"
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
            GameOutputPath  "resource/localization/citadel_vdata"
            TokenPrefix     "Citadel_VData_"
        }
        
        TextureCompiler
        {
            //Compressor              "lz4"
            //CompressMipsOnDisk      "1"
            //CompressMinRatio        "95"
            AllowNP2Textures        "1"
            AllowPanoramaMipGeneration  "1"
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
        EnvironmentMaps                 1
        EnvironmentMapFaceSize          128
        EnvironmentMapRenderSize        512
        EnvironmentMapFormat            BC6H
        EnvironmentMapPreviewFormat         BC6H
        EnvironmentMapColorSpace        linear
        EnvironmentMapMipProcessor      GGXCubeMapBlur
        // Build cubemaps into a cube array instead of individual cubemaps.
        "EnvironmentMapUseCubeArray"    1
        "EnvironmentMapCacheSizeTools"  300
        BindlessSceneObjectDesc         CitadelBindlessDesc
        GrassCastsShadows               0
    }

    SceneSystem
    {

        GpuLightBinner 1
        FogCachedShadowAtlasWidth 0
        FogCachedShadowAtlasHeight 0
        FogCachedShadowTileSize 0
        GpuLightBinnerSunLightFastPath 0
        CSMCascadeResolution 0
        SunLightManagerCount 0
        SunLightManagerCountTools 0
        DefaultShadowTextureWidth 0
        DefaultShadowTextureHeight 0
        DynamicShadowResolution 0

        TransformTextureRowCount    512
        TransformTextureRowCountToolsMode 6144
        SunLightMaxCascadeSize        0
        SunLightShadowRenderMode    Depth
        LayerBatchThresholdFullsort 20
        NonTexturedGradientFog        0
        // Temp till I can add support in citadel shaders
        DisableLateAllocatedTransformBuffer 1
        MinimumLateAllocatedVertexCacheBufferSizeMB 64
        CubemapFog 0
        VolumetricFog 0
        FrameBufferCopyFormat R11G11B10F
        Tonemapping 0
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
        "DisableServerInterpCompensation"   "1"
        "DisableAnimationScript"    "1"
        "ServerPoseRecipeHistorySize"   "60"
        "ClientPoseRecipeHistorySize"   "60"

    }

    ModelDoc
    {
        "models_gamedata"           "models_gamedata.fgd"
        "features"                  "animgraph;modelconfig;gamepreview;wireframe_backfaces;distancefield"
    }

    Particles
    {
        "EnableParticleShaderFeatureBranching"  "1"
        "Float16HDRBackBuffer" "1"
        "PET_SupportFadingOpaqueModels" "1"
        "Features" "non_homogenous_forward_layer_only"
    }

    ConVars
    {    

       // ---------------------- OptiLock -- ver. 1.02  ---------------------- \\
            //   Mod Page: https://deadlocker.net/mod/mod_1776212037617   \\
           //    Downloaded from: https://github.com/dacooderr/OptiLock    \\
          //     Tutorial: https://www.youtube.com/watch?v=JBB-dmaNxOE&     \\
		 //	      	   Discord: https://discord.gg/UxjsJB5Rp5				 \\
	    //																	  \\
	   //       If you would like to donate as a means of showing thanks       \\
	  //               https://streamlabs.com/dacoder_/tip                      \\


// Press ctrl+f and type * to highlight the more visually impactful commands that you could adjust
// ================ PREFERENCES ================

// --- 1. Outlines ---
citadel_trooper_glow_disabled               "0"             // 1 = Disable friendly/enemy minion glow.                          [def: "0"]
citadel_boss_glow_disabled                  "1"             // Disables boss and walker glow/highlight effect.                  [def: "0]
r_citadel_npr_outlines_max_dist             "600"             // Limits outline distance to reduce unnecessary processing.        [def: "1000"]
r_citadel_selection_outline2_alpha          "0.8"           // Outlines on enemy players and abilities on a scale of 0-1.       [def: "0.8"]
r_citadel_npr_outlines                      "true"         // Enable outlines on enemy players.                                [def: "true"]
r_citadel_outlines							"1" 			// Enables enemy outlines for better visibility.

// --- 2. Field of View ---
r_aspectratio                             	"2.15"          // 1.75=80fov | 2.15=90fov | 2.49=100fov (every .15 interval = 5 fov).      [def: "0"]
citadel_camera_hero_fov                     "100"           // The field of view angle of the camera when following a hero.     [def: "90"]

// --- 3. Crosshair/Hud ---
citadel_unit_status_use_new					"0"				// Enables new healthbars. May be needed for certain mods or they will cause crashes. 
citadel_hideout_ball_show_juggle_count      "1"             // Shows a fun juggle count minigame for hideout ball.              [def: "0"]
citadel_hideout_ball_show_juggle_fx         "1"             // Shows juggle visual FX for hideout ball minigame.                [def: "0"]
//citadel_crosshair_hit_marker_duration     "0.001"        // Removes the hitmarker when shooting people.                  [def: "0.1"]

// --- 4. Lighting & Shadows ---
sc_disable_baked_lighting					"true"
lb_allow_time_sliced_shadow_map_rendering	"false"
lb_dynamic_shadow_penumbra					"true"
lb_dynamic_shadow_resolution				"true"
lb_dynamic_shadow_resolution_base			"32"
lb_dynamic_shadow_resolution_base_cmp_shadowmapsize	"true"
lb_dynamic_shadow_resolution_quantization	"32"
r_citadel_shadow_quality                    "0"             
r_citadel_gpu_culling_shadows               "1"            
csm_max_shadow_dist_override                "1"             
lb_barnlight_shadowmap_scale                "0.1"           
lb_csm_cascade_size_override                "0.25"            
lb_csm_override_staticgeo_cascades          "0"             
lb_csm_override_staticgeo_cascades_value    "0"            
lb_sun_csm_size_cull_threshold_texels       "30"                                            
sparseshadowtree_enable_rendering           "0"             
sparseshadowtree_disable_for_viewmodel      "1"  
lb_enable_lights							"true" 
lb_enable_newsum							"false"          
cl_globallight_shadow_mode                  "0"                                                                   
lb_csm_draw_alpha_tested                    "0"             
lb_csm_draw_translucent                     "0"             
lb_enable_shadow_casting                    "false"             
mat_async_shader_load                       "1"            
r_citadel_sun_shadow_slope_scale_depth_bias "0.5"                                                                  
cl_retire_low_priority_lights               "1"             
r_multiscattering                           "1"             
r_light_flickering_enabled                  "0"            
r_lightmap_size                             "1"             // Maximum lightmap resolution..                                    [def: "65536"]
r_lightmap_size_directional_irradiance      "0"             
r_lightmap_bicubic_filtering                "1"             
r_ssao                                      "0"             
r_ssao_blur									"false"
r_ssao_strength                             "0"             
r_citadel_ssao_quality                      "0"             
r_citadel_ssao_thin_occluder_compensation   "0"            
mat_set_shader_quality                      "0"            
r_distancefield_enable                      "false"            
r_citadel_distancefield_farfield_enable     "false"                           
csm_viewmodel_shadows						"false"

// --- 5. Skybox Rendering ---
r_draw3dskybox                              "0"             //  Enables drawing the 3D skybox layer (distant geometry).         [def: "1"]

// --- 7. Object Culling ---
r_size_cull_threshold                       "1.0"        

// --- 8. Camera Tweaks ---
r_citadel_clip_sphere_min_opacity           "0"            

// ================= UI ================
r_citadel_enable_pano_world_blur            "true"
r_dashboard_render_quality                  "0"             
panorama_disable_box_shadow                 "1"             // Disables UI box shadows in the UI (less GPU/UI cost).            [def: "0"]
panorama_disable_blur                       "1"             // Disables UI blur effects in the UI.                              [def: "0"]
panorama_allow_transitions                  "false"         // Turns off UI anim (shop,etc)                                     [def: "1"]
panorama_use_new_occlusion_invalidation     "1"
panorama_temp_comp_layer_min_dimension      "128"

// ================ RAGDOLLS ================
g_ragdoll_fadespeed							"1"
cl_ragdoll_limit 							"1"				// Limits number of ragdolls active at once.
ragdoll_parallel_pose_control               "1"             // Multithreaded ragdoll handling, better performance (if ragdolls aren't disabled). [def: "0"]
cl_disable_ragdolls                         "0"             // Keep set to 0 - enabling this (disabling ragdolls) can cause issue with doorman's ultimate. [def: "0"]

// ================ MODELS ================             
r_hair_ao                                   "false"            
ik_final_fixup_enable                       "0"         
ik_fabrik_align_chain                       "0"             
animgraph_enable_parallel_preupdate         "1"             
animgraph_enable_parallel_op_evaluation     "1"            
cloth_sim_on_tick                           "false"             
phys_threaded_cloth_bone_update             "true"            
props_break_max_pieces_perframe             "0.5"            
cloth_update								"1"

// ================ TEXTURES & VISUAL CLARITY ================
citadel_video_preset						"0"
r_texture_stream_mip_bias					"4"				// Must be adjusted in Video.txt instead (Roblox Graphics)
r_texturefilteringquality                   "0"             // Texture filtering, has very low fps impact. 0: Bilinear, 1: Trilinear, 2: Aniso 2x, 3: Aniso 4x, 4: Aniso 8x, 5: Aniso 16x
mat_colorcorrection                         "true"             
r_texture_budget_dynamic 					"true"
r_drawdecals                                "true"            
r_decals                                    "true"             
r_character_decal_resolution                "0.01"             
r_depth_of_field                            "false"             
r_effects_bloom                             "false"             
r_post_bloom                                "false"          
cl_show_splashes                            "0"             
sc_clutter_enable                           "false"             
volume_fog_intermediate_textures_hdr        "false"
r_drawtracers 								"1"
r_drawtracers_firstperson 					"1"
violence_ablood 							"false"            
violence_agibs 								"false"            
r_fallback_texture_lod_scale				"4"
r_texture_stream_max_resolution				"64"
r_citadel_depthoffield_enable				"false"
r_citadel_distancefield_blur				"false"
r_texture_budget_threshold					"0.5"

// ================ INPUT ================
cl_input_enable_raw_keyboard                "1"             
m_rawinput									"1"

// ================ PARTICLES ================
cl_particle_max_count                       "0" 
cl_particle_newinit							"true"           
r_particle_max_size_cull                    "600"          
r_particle_max_detail_level                 "0"             
particle_cluster_nodraw                     "1"             
r_physics_particle_op_spawn_scale           "0"             
r_RainParticleDensity                       "0"                                     
cl_particle_fallback_base                   "1"            
cl_particle_fallback_multiplier             "1"            
cl_particle_sim_fallback_base_multiplier    "40"            
cl_particle_sim_fallback_threshold_ms       "1"             
r_particle_skip_postsim                     "true"         
r_particle_timescale                        "1.1"           
cl_particle_batch_mode                      "1"             
r_draw_particle_children_with_parents       "false"             
r_particle_max_texture_layers               "4"             
r_particle_cables_cast_shadows				"false"
r_particle_cables_culling					"1"
r_particle_cables_render					"false"
cl_aggregate_particles						"1"
func_break_max_pieces						"1"
r_particle_cables_render_meshlets			"false"
r_particle_model_new8						"false"
r_particle_mixed_resolution_viewstart		"200"
r_limit_particle_job_duration				"true"
r_particle_min_timestep						"0.001"
cl_impacteffects 							"0"
fx_drawmetalspark							"false"

// ================ Lod & Culling ================
cl_enable_eye_occlusion                     "true"          
skeleton_instance_lod_optimization          "1"         
sc_instanced_mesh_lod_bias                  "15"          
sc_instanced_mesh_lod_bias_shadow           "0.10"          
sc_instanced_mesh_motion_vectors            "0"             
sc_instanced_mesh_size_cull_bias_shadow     "10"           
sc_fade_distance_scale_override             "0"           
sc_clutter_enable                           "0"             
sc_aggregate_bvh_threshold                  "16"            
sc_layer_batch_threshold                    "16"            
sc_layer_batch_threshold_fullsort           "20"                                                                         
sv_remove_ent_from_pvs                      "1"             
r_farz                                      "14000"          
r_mapextents                                "10000"
citadel_use_pvs_for_players                 "true"          
sv_waterdist								"0"
lb_ssss_samples								"0"
r_aoproxy_cull_dist							"0.01"
r_aoproxy_min_dist							"9999"
r_character_decal_monitor_render_res		"128"
r_haircull_percent							"100"

// ================ Misc ================
r_low_latency                               "1"             
think_limit									"10"
zipline_use_new_latch						"0"
animgraph_enable_parallel_preupdate 		"1"             
animgraph_enable_parallel_op_evaluation 	"1"             
r_citadel_distancefield_farfield_enable 	"0"
engine_low_latency_sleep_after_client_tick  "true"
engine_allow_multiple_simulates_per_frame	"true"  
engine_accurate_input_processing_delta_time	"true"         
cl_bone_cache_optimization					"1"
cl_interp_parallel							"1"
cl_batch_entity_list_ops_during_latch		"1"
sc_dithered_lod_transition_amt				"0"
dsp_slow_cpu								"1"
cl_phys_sleep_enable						"1"
r_enable_rigid_animation					"0"
csm_cascade0_override_dist					"0"
csm_cascade1_override_dist 					"0"
csm_cascade2_override_dist 					"0"
csm_cascade3_override_dist 					"0"
csm_max_dist_between_caster_and_receiver 	"0"
csm_max_num_cascades_override				"0"
csm_max_visible_dist						"0"
csm_res_override_0 							"1"
csm_res_override_1 							"1"
csm_res_override_2 							"1"
csm_res_override_3 							"1"
anim_disable								"true"
cl_simulate_dormant_entities				"0"
phys_expensive_shape_threshold				"100"
props_break_apply_radial_forces				"0"
sc_force_materials_batchable				"true"
sc_allow_dithered_lod						"false"
enable_priority_boost						"true"

// ================ Grass ================
r_grass_quality                             "0"             
r_grass_start_fade                          "0"                        
r_grass_end_fade                            "0"                                             

// ================ Test Group 4 ================
r_renderdoc_auto_shader_pdbs                "false"       
r_texture_budget_update_period				"0.5"
r_particle_parallel_simulation				"1"
r_particle_batch_simulate					"1"
threadpool_thread_limit						"0"
r_world_wind_strength						"0"
fs_async_threads							"-1"


        //CREDITS																				         \\
       // dacooder     OptiLock Creator            													      \\
	  // Xeraa		   Helped fix a major issue with console spam and fps drops late game				   \\
     // Boot		   Potato Config             														    \\
	// simcasting 	   Benchmarking																		     \\
   // Artemon121       Made the Citadel cvar unhider														  \\
  // Pidjan            Worked on further gameinfo changes and let us integrate                                 \\
 // Piggy              Video.txt contributer and cool streamer guy                                              \\
// ----------------------------------------- END OF CONFIG OptiLock -- ver. 1.02 ------------------------------- \\

        "rate"
        {
            "min"       "98304"
            "default"   "786432"
            "max"       "1000000"
        }
        "sv_minrate"    "98304"
        "sv_maxunlag"   "0.500"
        "sv_maxunlag_player" "0.200"
        "sv_lagcomp_filterbyviewangle" "false"

        // Spew warning when adding/removing classes to/from the top of the hierarchy
        "panorama_classes_perf_warning_threshold_ms" "0.75"

        // Panorama - enable minidumps on JS exceptions
        "panorama_js_minidumps" "1"
        // Enable the render target cache optimization.
        "panorama_disable_render_target_cache" "0"

        // Enable the composition layer optimization
        "panorama_skip_composition_layer_content_paint" "1"

        // too expensive (500MB+) to load this
        "snd_steamaudio_load_reverb_data" "0"
        "snd_steamaudio_load_pathing_data" "0"

        // Steam Audio project specific convars
        "snd_steamaudio_enable_custom_hrtf"     "0"
        "snd_steamaudio_active_hrtf"            "0"
        "snd_steamaudio_reverb_update_rate"     "10.0"
        "snd_steamaudio_ir_duration"            "1.0"
        "snd_steamaudio_enable_pathing"         "0"
        "snd_steamaudio_invalid_path_length"    "0.0"
        "cl_disconnect_soundevent"              "citadel.convar.stop_all_game_layer_soundevents"
        "snd_event_browser_default_stack"       "citadel_default_3d"
        
        // voip
        "voice_in_process"                      "1"

        // Sound debugging
        "snd_report_audio_nan" "1"

        // Audio system settings
        "snd_sos_max_event_base_depth" "10"
        "sos_use_guid_filter" "1"

        "voice_always_sample_mic"               
        {
            "version"   "2"
            "default"   "0"
        }

        "reset_voice_on_input_stallout"         "0"
        "voice_input_stallout"                  "0.5"
        "cl_usesocketsforloopback" "1"
        "cl_poll_network_early" "0"

        // Perf/Parallelism
        "iv_parallel_restore" "1"

        // For perf reasons, since we don't use source-based DSP:
        "disable_source_soundscape_trace"       "1"
        
        // Networking - Induced latency (pred offset)
        "cl_tickpacket_recvmargin_desired" "5"                  // 5 ms base, min. floor for protecting against thrashing the queue
        "cl_tickpacket_desired_queuelength" "0"                 // 0 = attempt to always reach the queue's min floor
        "cl_async_usercmd_send_disabled_recvmargin_min" "0.5"   // Additional frame since we do not use the async usercmd send (potentially unneccessary)
        "cl_clock_buffer_ticks" "1"
        "cl_interp_ratio" "0"

        "fps_max"       "0"
        "fps_max_ui"    "120"

        "in_button_double_press_window" "0.3"

        // Convars that control spatialization of UI audio.
        "snd_ui_positional"                             "false"
        "snd_ui_spatialization_spread"                  "2.4"
        
        // sound volume rate change limiting
        "snd_envelope_rate"                             "100.0"
        "snd_soundmixer_update_maximum_frame_rate"      "0"

        //don't let people mess with speaker config settings.
        "speaker_config"
        {
            "min"       "0"
            "default"   "0"
            "max"       "2"
        }

        "cq_buffer_bloat_msecs_max" "120"

        "snd_soundmixer"                        "Default_Mix"
        "cloth_filter_transform_stateless" "0"

        "cl_joystick_enabled" "0"
        "panorama_joystick_enabled" "0"

        "snd_event_browser_focus_events" "true"

        "cl_max_particle_pvs_aabb_edge_length" "100"
        
        // Allow aggregation of particles (for perf)
        "cl_aggregate_particles" "false"
        
        "citadel_enable_vdata_sound_preload" "true"
    }

    Memory
    {
        "EstimatedMaxCPUMemUsageMB" "1"
        "EstimatedMinGPUMemUsageMB" "1"

        "ShowInsufficientPageFileMessageBox" "1"
        "ShowLowAvailableVirtualMemoryMessageBox" "1"
    }
}
