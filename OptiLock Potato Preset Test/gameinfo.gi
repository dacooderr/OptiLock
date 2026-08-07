//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//						    Modified -- KAIZ ---------------------------------------- ver. 4.3   https://www.twitch.tv/kaizuchaneru	\\
//																																    \\
//						If this config helped you, you wanna be extra nice, let me know by giving a little back or					\\
//										check out my YouTube and Twitch! -dacooderr													\\
//											https://streamlabs.com/dacooderr/tip               										\\
//|________________________________________________________________________________________________________________________________|\\	

GameInfo
{
    game        "citadel"
    title       "Citadel"
    type        "multiplayer_only"
    nomodels    "1"
    nohimodel   "1"
    nocrosshair "0"
    hidden_maps
    {
        test_speakers "1"
        test_hardware "1"
    }
    nodegraph   "0"
    perfwizard  "0"
    tonemapping "0"
    GameData    "citadel.fgd"

    DisallowGameInfoConditionals "0"
    PGIVersion                   "6E09D3ED5A47F6A97443813F0E00F90BAA435918F82DF0C9B5DA46D27A33D903"

    Localize
    {
        DuplicateTokensAssert "1"
        DisallowTokenContexts "1"
    }

    SupportedLanguages
    {
        brazilian  "3"
        czech      "3"
        english    "3"
        french     "3"
        german     "3"
        italian    "3"
        indonesian "3"
        japanese   "3"
        koreana    "3"
        latam      "3"
        polish     "3"
        russian    "3"
        schinese   "3"
        spanish    "3"
        thai       "3"
        turkish    "3"
        ukrainian  "3"
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
            game "Default"
            game "Forward"
            game "Deferred"
            game "Outline"
            game "Depth"
            game "FrontDepth"

            dev "ToolsVis"       // Visualization modes for all shaders (lighting only, normal maps only, etc.)
            dev "ToolsWireframe" // This should use the ToolsVis mode above instead of being its own mode\

            tools "ToolsUtil" // Meant to be used to render tools sceneobjects that are mod-independent, like the origin grid
        }
    }

    MaterialEditor
    {
        DefaultShader "environment_texture_set"
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
        AppID "103371621"
        //DLSSDefaultPreset     // These two values are in the code but I don't know what enabling them does, and I don't have an nvidia gpu to test, alas
        //ReflexLateWarp
        SupportsDLSS "1"
    }

    Engine2
    {
        SinglePlayerAsyncRendering "1" // In the dll, no idea what it does
        AllowKeyChordBindings      "1" //this is for myself actually
        HasModAppSystems           "1"
        Capable64Bit               "1"
        URLName                    "citadel"
        RenderingPipeline
        {
            SupportsMSAA            "0" //                                                      [def: "0"]
            DistanceField           "1" // Setting this to zero crashes the game on vulkan      [def: "1"]
            AmbientOcclusionProxies "0" // In the dll, no default value
        }
        PauseSinglePlayerOnGameOverlay "1"
        DefensiveConCommands           "1"
        DisableLoadingPlaque           "1"
    }



    SoundSystem
    {
        SteamAudioEnabled   "1"
        WaveDataCacheSizeMB "256"
        UsePlatTime         "1"
    }
    Sounds
    {
        HierarchicalEncodingFiles "1"
    }

    ToolsEnvironment
    {
        Engine   "Source 2"
        ToolsDir "../sdktools" // NOTE: Default Tools path. This is relative to the mod path.
    }

    pulse
    {
        pulse_enabled          "1"
        strict_fgd_annotations "1"
        client_blackboards     "1"
    }

    Hammer
    {
        CreateRenderClusters          "1"
        DefaultMinDrawVolumeSize      "2048"
        DefaultMinTrianglesPerCluster "16384"
        DefaultPointEntity            "info_player_start"
        DefaultSolidEntity            "trigger_multiple"
        GameFeatureSet                "Citadel"
        LatticeDeformerEnabled        "1"
        LoadScriptEntities            "0"
        NavMarkupEntity               "func_nav_markup"
        OverlayBoxSize                "8"
        RenderMode                    "ToolsVis"
        ShadowAtlasHeight             "0"
        ShadowAtlasWidth              "0"
        SteamAudioEnabled             "1"
        SupportsDisplacementMapping   "0"
        TileGridBlendDefaultColor     "0 255 0"
        TileGridSupportsBlendHeight   "1"
        TileMeshesEnabled             "1"
        TimeSlicedShadowMapRendering  "0"
        UseAnalyticGrid               "0"
        UsesBakedLighting             "1"
        fgd                           "citadel.fgd" // NOTE: This is relative to the 'game' path.


        Thread32First "1"
    }

    SoundTool
    {
        DefaultSoundEventType "src1_3d"

        SoundEventBaseOptions
        {
            Base.Announcer.VO.2d     ""
            Base.World.VO.Emitter.3d ""
            Base.Hero.VO.Ping.2d     ""
            Base.Hero.VO.2d          ""
            Base.Hero.VO.3d          ""
            Base.Hero.VO.Ability.3d  ""
            Base.Hero.VO.Ultimate.3d ""
            Base.Hero.VO.Dash.3d     ""
            Base.Hero.VO.Effort.3d   ""
            Base.Hero.VO.Pain.3d     ""
            Base.Hero.VO.Melee.3d    ""
            Base.Hero.VO.Death.3d    ""
        }
    }

    RenderPipelineAliases
    {
    }

    // Removing this makes everything functionally fullbright! It disables baked shadows and lighting so it might help if your gpu is low on vram
    ResourceCompiler
    {
        // Overrides of the default builders as specified in code, this controls which map builder steps
        // will be run when resource compiler is run for a map without specifiying any specific map builder
        // steps. Additionally this controls which builders are displayed in the hammer build dialog.
        DefaultMapBuilders
        {
            bakedlighting "1" // Enable lightmapping during compile time
            envmap        "0" // turned off since it currently causes an assert and doesn't work due to some build issue
            nav           "1" // Generate nav mesh data
        }

        MeshCompiler
        {
            OptimizeForMeshlets       "1"
            TrianglesPerMeshlet       "126" // Maximum valid value currently is 126
            UseMikkTSpace             "1"
            EncodeVertexBuffer        "1"
            EncodeVertexBufferVersion "1"
            EncodeVertexBufferLevel   "3"
            EncodeIndexBuffer         "1"
            SplitDepthStream          "1"
        }

        WorldRendererBuilder
        {
            VisibilityGuidedMeshClustering     "1"
            MinimumTrianglesPerClusteredMesh   "8192"
            MinimumVerticesPerClusteredMesh    "8192"
            MinimumVolumePerClusteredMesh      "8192" // ~20x20x20 cube
            MaxPrecomputedVisClusterMembership "96"
            MaxCullingBoundsGroups             "128"
            UseAggregateInstances              "1"
            AggregateInstancingMeshlets        "1"
            BakePropsWithExtraVertexStreams    "1"
        }

        BakedLighting
        {
            Version                          "4"
            ImportanceVolumeTransitionRegion "512" // distance we transition from high to low resolution charts
            LightmapChannels
            {
                direct_light_shadows          "1"
                debug_chart_color             "1"
                directional_irradiance_sh2_dc "1"

                directional_irradiance_sh2_r
                {
                    CompressedFormat "DXT1"
                }

                directional_irradiance_sh2_g
                {
                    CompressedFormat "DXT1"
                }

                directional_irradiance_sh2_b
                {
                    CompressedFormat "DXT1"
                }
            }
            LightmapGutterSize   "2" // For bicubic filtering
            UseStaticLightProbes "0"
            LPVAtlas             "1"
            BC6HHueShiftFixup    "0" // Causes more artifacts than it solves atm
            Repack2              "1"
        }

        SteamAudio
        {
            ReverbDefaults
            {
                GridSpacing      "3.0"
                HeightAboveFloor "1.5"
                RebakeOption     "0" // 0: cleanup, 1: manual, 2: auto
                NumRays          "32768"
                NumBounces       "64"
                IRDuration       "1.0"
                AmbisonicsOrder  "1"
            }
            PathingDefaults
            {
                GridSpacing       "3.0"
                HeightAboveFloor  "1.5"
                RebakeOption      "0" // 0: cleanup, 1: manual, 2: auto
                NumVisSamples     "1"
                ProbeVisRadius    "0"
                ProbeVisThreshold "0.1"
                ProbeVisPathRange "1000.0"
            }
        }
        SoundStackScripts
        {
            CompileStacksStrict "1"
        }
        VisBuilder
        {
            MaxVisClusters                     "4096"
            PreMergeOpenSpaceDistanceThreshold "128.0"
            PreMergeOpenSpaceMaxDimension      "2048.0"
            PreMergeOpenSpaceMaxRatio          "8.0"
            PreMergeSmallRegionsSizeThreshold  "20.0"
        }

        VDataLocalization
        {
            GameOutputPath "resource/localization/citadel_vdata"
            TokenPrefix    "Citadel_VData_"
        }

        TextureCompiler
        {
            // Compressor               "lz4"
            // CompressMipsOnDisk       "1"
            // CompressMinRatio         "95"
            AllowNP2Textures            "1"
            AllowPanoramaMipGeneration  "1"
            // PublicToolsDefaultMaxRes "2048"
        }
    }

    Source1Import
    {
        // this is just copied from the left4dead2 gameinfo.gi
        forcevtxfileupconvert "1"
    }


    // Removing WorldRenderer causes player models to black
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
        // Temp till I can add support in citadel shaders
        DisableLateAllocatedTransformBuffer         "1"          
        DynamicShadowResolution                     "1"         
        FogCachedShadowAtlasHeight                  "0"          
        FogCachedShadowAtlasWidth                   "0"         
        FogCachedShadowTileSize                     "0"          
        FrameBufferCopyFormat                       "R11G11B10F"
        GpuLightBinner                              "1"         
        GpuLightBinnerSunLightFastPath              "1"        
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
        NavTileSize   "128.0"
        NavCellSize   "1.5"
        NavCellHeight "2.0"

        // Hull definitions live in scripts/nav_hulls.vdata
        // Preset definitions live in scripts/nav_hulls_presets.vdata
        NavHullsPreset "default"

        NavRegionMinSize              "8"
        NavRegionMergeSize            "20"
        NavEdgeMaxLen                 "1200"
        NavEdgeMaxError               "51.0"
        NavVertsPerPoly               "4"
        NavDetailSampleDistance       "120.0"
        NavDetailSampleMaxError       "2.0"
        NavSmallAreaOnEdgeRemovalSize "81.0"
    }

    AnimationSystem
    {
        DisableServerInterpCompensation "1"
        DisableAnimationScript          "1"
        ServerPoseRecipeHistorySize     "60"
        ClientPoseRecipeHistorySize     "60"

    }

    ModelDoc
    {
        models_gamedata "models_gamedata.fgd"
        features        "animgraph;modelconfig;gamepreview;wireframe_backfaces;distancefield"
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
	
				   // ----------------------- OptiLock -- ver. 4.3  ---------------------- \\
					   //        OptiLock: https://gamebanana.com/mods/690233          \\
					  //         QOL Lite: https://gamebanana.com/mods/690233           \\
					 //     Downloaded from: https://github.com/dacooderr/OptiLock       \\
					//      Tutorial: https://www.youtube.com/watch?v=Kpoet2ebl70         \\
				   //	      	   Discord: https://discord.gg/UxjsJB5Rp5				   \\
				  //																	    \\
				 //        If you would like to donate as a means of showing thanks          \\
				//                 https://streamlabs.com/dacooderr/tip                       \\
				
		// ================ PREFERENCES ================
				
		// --- OUTLINES ---
		citadel_trooper_glow_disabled                           "1"  // 1 = Disable friendly/enemy minion glow.                          [def: "0"]
		citadel_boss_glow_disabled                              "1"  // Disables boss and walker glow/highlight effect.                  [def: "0]
		r_citadel_npr_outlines_max_dist                         "600"  // Limits outline distance to reduce unnecessary processing.        [def: "1000"]
		r_citadel_selection_outline2_alpha                      "0.8"  // Outlines on enemy players and abilities on a scale of 0-1.       [def: "0.8"]
		r_citadel_npr_outlines                                  "true"  // Enable outlines on enemy players.                                [def: "true"]
		r_citadel_outlines                                      "1"  // Enables enemy outlines for better visibility.
		citadel_player_glow_disabled                            "0"  // Disables player glow/highlight effect when pinged.               [def: "0"]
		citadel_trooper_friendly_glow_disabled                  "1" 
		cl_glow_brightness                                      "0"  		
				
		// --- HIT MARKER/HEALTHBAR ---
		citadel_unit_status_use_new                             "1"      // Enables new healthbars. May be needed for certain mods or they will cause crashes. (Change to 0 or False to use Old Healthbars)
		//citadel_crosshair_hit_marker_duration                 "0.01"   // Removes the hitmarker when shooting people.                      [def: "0.1"]
		 
        // ================ FOV ================
        r_aspectratio 											"2.15"   // [ADJUST] FOV control: 1.33=70fov | 1.56=75fov | 1.75=80fov | 2.0=85fov | 2.15=90fov | 2.49=100fov | 3.0=110fov | 3.5=120fov
		citadel_camera_hero_fov                                 "100"    // The field of view angle of the camera when following a hero.     [def: "90"]
		
        // ================ LIGHTING & SHADOWS ================
		sc_disable_baked_lighting                               "true"
		r_citadel_disable_npr_lighting							"false"
		r_directlighting 										"false" 
		mat_tonemap_bloom_scale									"0"
		r_citadel_ssao_bent_normals                             "false"
		r_citadel_ssao_denoise_passes                           "0"
		r_environment_map_roughness_range 						"0.01"
		r_citadel_ssao_radius                                   "0"
		r_gbuffer_disable_npr_lighting							"true"
		r_light_sensitivity_mode                                "true"
		sc_cache_envmap_lpv_lookup                              "false"
		thumper_use_plane_reflection                            "false" 
		vis_sunlight_enable                                     "0"
		r_indirectlighting 										"true" 
		lb_enable_dynamic_lights								"true" 
		lb_enable_stationary_lights								"true" 
		lb_max_visible_barn_lights_override						"1"			 // Directly affects lights in Hideout and Hero Sillouettes
		cl_retire_low_priority_lights                           "1"
		r_multiscattering                                       "1"
		r_light_flickering_enabled                              "0"
		r_lightmap_size                                         "1"  
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
		r_directional_lightmaps                                 "false"  
		mat_max_lighting_complexity                             "1" 
		r_world_wind_strength									"0"
		lb_enable_sunlight                                      "false"  
		r_arealights                                            "false"  
		r_flashlightbrightness                                  "0" 
		r_flashlightfar                                         "0" 
		r_flashlightshadowatten                                 "0" 
		r_muzzleflashbrightness                                 "0.01"
		r_citadel_distancefield_down_sample						"6"
		r_world_wind_frequency_grass                            "0"
		r_world_wind_frequency_trees                            "0"
		shake_show                                              "false"
		citadel_melee_shake_amplitude                           "0"  
		citadel_melee_shake_duration                            "0"
		r_citadel_cloak_refract_amount                          "0"  
		r_citadel_cloak_blur_amount                             "0" 
		cl_hud_telemetry_frametime_show                         "0"
		sc_barnlight_enable_precomputed_vis                     "1"
		r_flashlightambient                                     "0"  
		r_flashlightconstant                                    "0" 
		citadel_camera_soft_collision                           "0"  
		citadel_camera_wobble_disable                           "1"  
		citadel_camera_parrot_smoothing_rate                    "0"
		r_citadel_clip_sphere_min_opacity                       "0" 
		lb_enable_shadow_casting								"false"
		lb_mixed_shadows										"false"
		csm_max_shadow_dist_override                            "0"
		lb_shadow_map_cull_empty_mixed							"true"
		lb_barnlight_shadow_use_precomputed_vis                 "0"
		lb_csm_cross_fade_override                              "0"
		lb_csm_distance_fade_override                           "0"
		lb_dynamic_shadow_resolution_quantization               "32"
		r_size_cull_threshold_shadow                            "200"
		sparseshadowtree_parallel_generation					"2"
		r_citadel_distancefield_shadows 						"false"
		sc_disable_spotlight_shadows							"false"
		csm_viewmodel_shadows									"false"
		lb_enable_baked_shadows									"true"
		lb_enable_fog_mixed_shadows								"false"
		r_citadel_gpu_culling_shadows							"true"
		r_citadel_gpu_preview_baked_shadows						"false"
		r_mixed_shadows_fade_in_time							"0"
		r_mixed_shadows_fade_out_time							"0"
		lb_allow_time_sliced_shadow_map_rendering               "false"
		lb_dynamic_shadow_penumbra                              "true"
		lb_dynamic_shadow_resolution                            "true"
		lb_dynamic_shadow_resolution_base                       "64"
		lb_dynamic_shadow_resolution_base_cmp_shadowmapsize     "true"
		lb_shadow_map_cull_empty_mixed                          "true"
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
		cl_globallight_shadow_mode                              "0"
		lb_csm_draw_alpha_tested                                "0"
		lb_csm_draw_translucent                                 "0"
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
		mat_set_shader_quality                                  "0"
		csm_viewmodel_shadows                                   "false"
		r_citadel_gpu_preview_baked_shadows                     "false"
		r_citadel_shadowdb                                      "64"
		r_hair_shadowtile                                       "false"
		r_mixed_shadows_fade_out_time                           "0.0001"
		sc_disable_shadow_materials                             "1"  
		lb_csm_receiver_plane_depth_bias                        "0.00002"
		lb_csm_receiver_plane_depth_bias_transmissive_backface  "0.0002" 
		sparseshadowtree_disable_add_layers                     "1"
		r_rendersun 											"false" 

        // ================ SPARSE SHADOW TREE ================
        sparseshadowtree_enable_rendering      "0"
        sparseshadowtree_disable_for_viewmodel "1"


        // ================ DISTANCE FIELD ================
        r_citadel_distancefield_farfield_enable "false"

        // ================ FOG & ATMOSPHERE ================
        r_enable_volume_fog                  "0"
        r_enable_gradient_fog                "0"
        r_enable_cubemap_fog                 "0"
        volume_fog_intermediate_textures_hdr "0"

        // ================ SKY & ENVIRONMENT ================
        r_draw3dskybox        "0"
        r_drawskybox          "0" // Set to 0 to disable skybox
        r_monitor_3dskybox    "0"
        r_world_wind_strength "0"

        // ================ SSAO ================

        r_citadel_ssao_quality                    "0"
        r_citadel_ssao_thin_occluder_compensation "0"

        // ================ PARTICLE SYSTEM ================
        r_particle_max_detail_level       "0 " //was 0
        r_particle_cables_cast_shadows    "0"
        r_RainParticleDensity             "0"
        r_physics_particle_op_spawn_scale "0"
        r_particle_max_size_cull          "600" //was 800 Particle systems larger than this in every dimension skip culling to save CPU.  They will be drawn anyway

        r_particle_mixed_resolution_viewstart "800"
        r_particle_max_draw_distance          "300000" // Lower = less particle range, more FPS, dont go below this value it doesnt draw trooper hp bar,
        r_particle_model_new8                 "0"
        cl_show_splashes                      "0"
        r_particle_skip_postsim               "1"
        //"r_limit_particle_job_duration" "1"
        cl_particle_sim_fallback_threshold_ms    "2" // [ADJUST] Lower = more aggressive fallback to simple particles (higher FPS, less detail)
        cl_particle_fallback_base                "10"
        cl_particle_fallback_multiplier          "10"    //was 10
        cl_particle_sim_fallback_base_multiplier "100"   //default 10
        r_particle_min_timestep                  "0.01" // default "0", every old config "0.001" ,"0.016" (caps particle sim to 60fps smoother) or "0.033" (caps to 30fps more stable perf)

        // ================ PHYSICS & CLOTH ================
        cloth_update               "1" // [FPS IMPACT] 0=Off (cosmetic only, +FPS) | 1=On (cloth physics enabled)
        cloth_sim_on_tick          "0"
        presettle_cloth_iterations "0"      //default 3
        pred_cloth_pos_max         "0"      // Reduce cloth prediction was 1
        pred_cloth_pos_multiplier  "0"      //was 0.3
        pred_cloth_pos_strength    "0"      //was 0.1
        pred_cloth_rot_high        "0"      //was 0.05
        pred_cloth_rot_low         "0"      //was 0.005
        pred_cloth_rot_multiplier  "0"      //was 0.2 changing these values does fucking nothing
        cl_phys_timescale          "1"      // [FPS IMPACT] 0=Disable physics (max FPS) | 1=Normal physics | Lower = slower physics, less CPU
        cl_fasttempentcollision    "999999" //test Temp Entities" are things like shell casings hitting the floor. Increasing this number usually tells the engine to skip collision checks for them entirely or expire them instantly to avoid physics costs.

		// ================ RAGDOLLS ================
		cl_ragdoll_limit                                        "1"  
		ragdoll_parallel_pose_control                           "1"  
		cl_disable_ragdolls                                     "0" 
		g_ragdoll_maxcount                                      "1"  // Unsure which ragdoll limit command is prioritized so I change both
		ai_use_async_ragdoll_fixup                              "true" 
		cl_ragdoll_default_scale                                "0"  
		g_ragdoll_important_maxcount                            "1" 


        // ================ MODEL & DECAL OPTIMIZATIONS ================
        r_drawmodeldecals            "0"    //does not exist in master convar
        r_character_decal_resolution "0.01" //default 1
        r_decals                     "1"    // im p sure valve killed this command [ADJUST] Max decals visible: 1= only 1 bullet hole(max FPS) | 16=default
        r_propsmaxdist               "600"

        r_citadel_screenspace_particles_full_res "false"
        r_citadel_gpu_culling_shadows            "1"

        r_size_cull_threshold "1.65" // do not go over or youll have wall hack
        r_hair_ao             "0"
        r_render_hair         "0" // doesnt work [FPS IMPACT] 0=Off (max FPS boost, bald heroes) | 1=On (hair rendered)
        r_haircull_percent    "100"
        ik_final_fixup_enable "0"
        ik_fabrik_align_chain "0"
        cl_impacteffects      "0"
        enable_boneflex       "false" // cloth flexing
        cl_eye_yaw_multiplier "0"

        // ================ LOD & CULLING ================
        sc_instanced_mesh_lod_bias              "15" // [FPS IMPACT] Higher = lower quality models, more FPS | 0=High quality | 10=Low quality
        sc_instanced_mesh_lod_bias_shadow       "10" // Bias for LOD selection of instanced meshes in shadowmaps
        sc_instanced_mesh_motion_vectors        "0"  // Set 1 if you use motion blur
        sc_instanced_mesh_size_cull_bias        "10" // Bias for size culling of instanced meshes
        sc_instanced_mesh_size_cull_bias_shadow "10" // Bias for size culling instanced meshes in shadowmaps
        sc_clutter_enable                       "false" // [FPS IMPACT] 0=No debris/props (max FPS) | 1=Props visible (immersive)
        sc_aggregate_bvh_threshold              "1"     // Lower BVH threshold (default: 128)
        sc_layer_batch_threshold                "128"   // Lower batch threshold (default: 128)
        sc_layer_batch_threshold_fullsort       "20"    //default 80

        // ================ ROPE PHYSICS ================
        rope_collide              "0"
        rope_subdiv               "0"
        rope_wind_dist            "0"
        rope_smooth_enlarge       "0"
        rope_smooth_maxalpha      "0"
        rope_smooth_maxalphawidth "0"
        rope_smooth_minalpha      "0"
        rope_smooth_minwidth      "0"
        r_ropetranslucent         "0"
        r_drawropes               "0"

        // ================ TERRAIN & FOLIAGE ================
        r_grass_quality    "0"
        r_grass_start_fade "0"
        r_grass_end_fade   "0"

        // ================ UI & HUD ================
        panorama_disable_box_shadow                 "0"
        r_dashboard_render_quality                  "0"
        closecaption                                "false"
        citadel_hud_objective_health_enabled        "2" // [ADJUST] Objective health display: 0=Off | 1=Shrines only | 2=T1/T2 Towers | 3=Barracks
        citadel_damage_offscreen_indicator_disabled "1"    // Set 1 to disable lane minion HP thru wall
        citadel_portrait_world_renderer_off         "false" // Set true to disable hero hud
        panorama_use_new_occlusion_invalidation     "1"
        panorama_temp_comp_layer_min_dimension      "128"
        panorama_async_compute_mipgen               "1"

        hud_free_cursor "0" // Reduces UI input delay in minimap/spectator modes (not sure if this is true)
        //"citadel_camera_soft_collision" "0" // 0 = no collision, 2= game default
        citadel_camera_wobble_disable "1"

        mm_idle_show_warning_at_s              "999" // How many seconds to wait before showing the idle warning dialog
        citadel_hideout_ball_show_juggle_count "1"
        citadel_hideout_ball_show_juggle_fx    "1"

        // ================ NETWORK & PREDICTION ================
        //"cl_prediction_savedata_postentitypacketreceived" "1"
        //"r_frame_sync_enable" "0" //was 0
        //"cl_clock_buffer_ticks" "0"          // Testing set 1 to smooth over packet loss
        //"cl_async_usercmd_send" "true"
        //"cl_smooth" "0"                      // [ADJUST] 0=No smoothing (lower input lag) | 1=Smoothing enabled (may add delay)
        cl_smoothtime "0.01"
        //"cl_smooth_draw_debug" "0"
        cl_interp_parallel "1"
        //"cl_parallel_readpacketentities" "1"
        //"cl_parallel_readpacketentities_threshold" "2"
        //"net_async_clientconnect" "1"
        engine_max_ticks_to_simulate "2"

        // ================ AUDIO ================
        audio_enable_vmix_mastering "0" // [FPS IMPACT] 0=Off (saves CPU, +FPS) | 1=On (audio mastering enabled)"
        dsp_volume                  "0" // idk
        snd_occlusion_bounces       "0"
        snd_steamaudio_num_threads  "2" // [ADJUST] Audio thread count - 1=Low CPU usage | Higher = better audio quality, more CPU By default, it might only use 1 thread. Increasing this allows the heavy sound math to spread out, preventing it from stalling the main game loop during loud teamfights
        snd_mix_async               "1"
        soundsystem_update_async    "1"

        // ================ TEXTURE STREAMING ================
        r_texture_pool_size            "512" // [ADJUST] VRAM usage in MB - Lower = less VRAM used, may cause texture pop-in | 512-1024 range
        r_texture_stream_mip_bias      "16"  // [FPS IMPACT] Higher = blurrier textures, more FPS | 0=High quality | 2=Balanced | 4=Low quality
        r_texture_lod_scale            "8"   // [FPS IMPACT] 0=High quality (sharp) | 2=Medium | 4=Low quality (blurry, max FPS)
        r_fallback_texture_lod_scale   "8"
        r_texture_budget_update_period "0.5" // Faster texture streaming adjustment 0.05
        r_texture_pool_reduce_rate     "512"

        // ================ MEMORY BUDGET ================
        r_texture_budget_dynamic   "1" // Dynamic texture budget adjustment
        r_texture_budget_threshold "0.7"

        // ================ SHADER & RENDERING ================
        mat_async_shader_load        "1"
        r_renderdoc_auto_shader_pdbs "0"
        sc_hdr_enabled_override      "0"
        r_texturefilteringquality    "0"
        r_max_portal_render_targets  "2" // Set how many amount to render portals
        //"mat_colcorrection_disableentities" "1" // Disable map color-correction entities
        r_gbuffer_disable_npr_lighting "true"

        // test

        phys_highlight_expensive_objects_strength "0"     //Default: 0.02<br>Highlight expensive physics objects strength, no need since expensive obj is disabled by default
        r_citadel_shadowdb                        "256"   //Default: 2048<br>
        r_citadel_shadow_quality                  "0"     //Default: 1<br>Shadow Quality
        r_effects_bloom                           "false" //Default: true<br>
        r_citadel_glow_health_bars                "true"  //default true
        r_citadel_enable_pano_world_blur          "false" //Default: true<br>Enable world-blur style
        r_depth_of_field                          "false" //default true
        r_directional_lightmaps                   "false" //default true
        r_citadel_distancefield_blur              "false" //Default: true<br>Enable/Disable distance field blur
        r_citadel_distancefield_shadows           "false" //Default: true<br>
        mat_max_lighting_complexity               "1"     //default 8
        r_muzzleflashbrightness                   "0.01"  //default 0.4 idk if this does anything
        r_particle_cables_render                  "true"  //default true break lash ult do not disable
        r_postprocess_enable                      "true"  //default true TURNED ON BECAUSE I WANT TO USE SUNLOCK
        lb_dynamic_shadow_resolution              "false" //default true
        r_distancefield_enable                    "false" //default true Graphics/Enable Distance Field rendering
        lb_enable_sunlight                        "false" //Default: true<br>SceneSystem/LightBinner/Enable Sunlight
        cl_input_enable_raw_keyboard             "true"      //Default: false<br>Enable raw keyboard input
        r_environment_map_roughness_range        "0.01 0.01" //Default: 0.2 0.3<br>Fade region for sampling environment maps on lightmapped nonmetals. Smoother values than the first param sample envmaps. Rougher values than the second sample only lightmap SH. r_environment_map_roughness_range 1 1 to always sample envmaps for comparison. BASICALLY TURN OFF REFLECTIONS ON MAP I THINK
        lb_cubemap_normalization_max             "1"         //Default: 32<br>
        lb_cubemap_normalization_roughness_begin "0.01"      //Default: 0.1<br>
        sc_instanced_mesh_mesh_shader "true" //default true Toggles mesh shader rendering for instanced meshes
        r_citadel_disable_npr_lighting "false" //True to make lighting ass, save you just a bit more fps like 1 extra frame
        r_fullscreen_gamma "1.4" //recommended ppl to use this to make the game brighter, bigge number = darker (use again in console if game not bright, only work in fullscreen exclusive, try 2.1 then 1.4 to make it work i have 2 keys binded for this)
        //"mat_colorcorrection" "0"
        lb_mixed_shadows                     "false"
        r_arealights                         "false" //was true
        r_citadel_antialiasing               "0"     //default 1
        r_character_decal_monitor_render_res "64"    //Default: 512<br>
        r_citadel_depthoffield_enable        "false"
        //"mat_viewportscale" "0.01" //controls render resolution, change via video.txt not here
        fx_drawmetalspark                 "false" //Default: true<br>Draw metal spark effects.
        r_mapextents                      "12000"   //Default: 16384<br>Set the max dimension for the map.  This determines the far clipping plane, set to higher number if no like popping building
        //"citadel_player_outline_enemies" "false" //turn off enemy outline DOES NOT BREAK BACKSTABBER OR PING THRU WALL
        r_farz "9500"  //default -1 far clipping plane, controlled by mapextent, then this value applies on top of it
        citadel_trooper_outline_enabled "false" //turn off trooper outline
        citadel_hideout_enable_testing_tools "true" //default false doesnt work
        phys_cull_internal_mesh_contacts "true" //default false
        r_particle_max_texture_layers "4" //was -1 3 makes square vfx
        r_citadel_distancefield_down_sample "6" //default 1
        update_voices_low_priority "true" //default false
        //"anim_decode_forcewritealltransforms" "true" //Default: false<br>Force BatchAnimationDecode to write transformations for all bones
        r_morphing_enabled     "false"
        r_smooth_morph_normals "0"
        //"animgraph_slowdownonslopes_enabled" "false"
        cl_simulate_dormant_entities "false"
        //"engine_allow_multiple_simulates_per_frame" "false" //default false not sure about this one so dont change it
        cl_phys_networked_start_sleep "true" //try on and off, this is probably what causing result screen to pop up when idling
        r_light_flickering_enabled   "false"
        sc_clutter_density_none_size "0.5" //Default 0.0035
        //"r_draw_overlays" "false" //removes the walker line on the ground too, do not recommend
        snd_mixahead "0.05" //set to 0.001 if have good CPU, 0.05 adds 50ms to audio mixing thus save CPU perf, should not be perceiveable by any human.
        r_draw_particle_children_with_parents "0"
        r_ssao_blur "0"
        r_particle_cables_render_meshlets "false" //default true
        lb_csm_cross_fade_override        "0"
        lb_csm_distance_fade_override     "0"
        sc_enable_discard                 "true" //default true
        sc_clutter_density_full_size      "1"
        r_flashlightbrightness         "0"
        r_flashlightfar                "0"
        r_flashlightshadowatten        "0"
        sc_allow_dithered_lod          "0"
        sc_dithered_lod_transition_amt "0"
        lb_dynamic_shadow_penumbra "false" //default true
        r_particle_batch_collections "1"
        r_texture_stream_resolution_bias "0.01"
        lb_enable_baked_shadows      "0"
        r_world_wind_frequency_grass "0"
        r_world_wind_frequency_trees "0"
        mat_tonemap_bloom_scale      "0"
        r_low_latency "1" //Force enabling this for kaiz only, Default: 1<br>NVIDIA Low Latency/AMD Anti-Lag 2 (0 = off, 1 = on, 2 = NV-only, on + boost)
        panorama_transition_time_factor "2" //faster transition for the stuff that doesnt use animation
        phys_expensive_shape_threshold              "6"  //was 6
        sc_max_framebuffer_copies_per_layer         "0"  //no idea what this does ngl
        r_strip_invisible_during_sceneobject_update "1"  //Default: false<br>
        fs_async_threads                            "-1" //was 8
        r_citadel_depth_prepass_dynamic_objects "0"
        citadel_unit_status_old_update_rate "15"
        r_pipeline_stats_use_flush_api      "0"
        sc_instanced_mesh_opaque_fade       "0"
        r_texture_stream_max_resolution     "512"
        r_texture_nonstreaming_load         "1"
        csm_max_num_cascades_override "2"
        r_hair_indirect_transmittance "false"
        r_drawdecals           "true"  //defaul true
        minimap_update_rate_hz "30"
        wind_system_temporal_smoothing    "false"
        wind_system_default_resolution_xy "64"
        lb_precomputed_shadowmap_enable   "0"
        lb_shadow_map_cull_empty_mixed    "true"
        r_citadel_fog_quality             "0"
        r_hair_shadowtile                 "false"
        vis_sunlight_enable               "0"
        snd_use_baked_occlusion           "1"
        r_particle_model_per_thread_count "32"
        r_citadel_selection_outline2_offset "2"
        r_citadel_selection_outline2_width  "50"
        battery_saver                       "false"
        cl_batch_entity_list_ops_during_latch "1"
        cl_bone_cache_optimization            "1"
        cl_particle_batch_mode                "1"
        csm_cascade0_override_dist               "0"
        csm_cascade1_override_dist               "0"
        csm_cascade2_override_dist               "0"
        csm_cascade3_override_dist               "0"
        csm_max_dist_between_caster_and_receiver "0"
        csm_max_visible_dist                     "0"
        csm_res_override_0                       "1"
        csm_res_override_1                       "1"
        csm_res_override_2                       "1"
        csm_res_override_3                       "1"
        csm_viewmodel_shadows                    "false"
        fog_enable       "0" //doesnt work anymore sadly
        fog_enableskybox "0"
        m_rawinput       "1" //doesnt seem to exist in deadlock yet
        mm_idle_enabled  "false"
        r_aoproxy_cull_dist          "0.01"
        r_lightmap_size              "1"
        r_post_bloom                 "0"
        r_ssao_strength              "0" //alr disabled ssao above shouldnt matter
        sc_disable_baked_lighting    "false"
        sc_force_materials_batchable "true"
        //"r_late_particle_job_sync" "1"
        thread_pool_option                          "-1"
        r_flush_on_pooled_ib_resize                 "false"
        r_texture_stream_throttle_count_over_budget "0"
        r_update_particles_on_render_only_frames    "1"
        cl_skel_constraints_enable "0"
        ik_enable                  "0"
        //"panorama_disable_draw_text_shadow" "1" //disable text outlines
        panorama_disable_descendant_filtering "true"
        cl_pred_optimize             "true"
        cl_pred_parallel_postnetwork "true"
        sc_instanced_mesh_gpu_culling "true"
        sc_aggregate_gpu_culling      "true"
        cl_phys_animated_hierarchy "false"
        snd_disable_mixer_duck "1"
        lb_enable_newsum       "0"
        lb_shadow_texture_width_override    "16" // Shrinks the global shadow atlas to 16 pixels
        lb_shadow_texture_height_override   "16" // Shrinks the global shadow atlas to 16 pixels
        sparseshadowtree_disable_add_layers "1"  // Completely breaks Sparse Shadow Tree layering
        mat_slopescaledepthbias_shadowmap   "0"  // Disables shadow depth bias math
        mat_depthbias_shadowmap             "0"  // Disables shadow depth bias math
        sc_allow_dynamic_constant_batching  "1"
        sc_disable_culling_boxes "0" // Skips calculating bounding boxes for culling
        //"r_draw_instances" "0"               // Deletes small props and details from the map entirely
        r_flashlightambient  "0" // Disables ambient lighting math on flashlights/muzzle flashes
        r_flashlightconstant "0" // Disables constant lighting math
        sc_allow_precomputed_vismembers         "1"
        sc_barnlight_enable_precomputed_vis     "1"
        lb_barnlight_shadow_use_precomputed_vis "1"
        sc_force_single_display_list_per_layer  "1"
        sc_aggregate_gpu_occlusion_culling      "1"
        sc_aggregate_gpu_vis_culling            "1"
        r_threaded_particles "1"
        //"panorama_enable_secondary_layout_pass" "0"     // Skips the secondary CSS layout check (drastically reduces UI calculation time)
        panorama_draw_text_fast_path              "1" // Forces text rendering through a hardware fast-path
        panorama_draw_text_fast_path_text_shadow  "1" // Forces text shadows through a hardware fast-path
        panorama_hsbc_through_fast_path           "1" // Forces UI hue/saturation/brightness changes through a fast-path
        panorama_use_backbuffer_directly          "1" // Skips copying the UI buffer to memory and writes directly to the backbuffer
        panorama_script_cache_enabled             "1" // Aggressively caches UI Javascript to prevent mid-game recompilation
        citadel_unit_status_hide_names            "1" // Removes player names from health bars (text rendering is heavy).
        citadel_hud_objective_health_idle_timeout "0" // Boss/Tower health bars vanish the millisecond they stop taking damage.
        citadel_camera_parrot_smoothing_rate      "0" // Stops the camera from running math to "smooth" itself back into place after hitting a wall.
        steam_inputhandler_enabled                "0" // Completely disables Steam Input API polling. Huge for 1% lows if you only use Keyboard/Mouse.
        //"panorama_worldpanel_update_culling" "1"          // Forces the engine to cull (hide/stop updating) floating UI elements that are off-screen or occluded.
        //"panorama_worldpanel_update_cull_distance" "15000" // Distance (in units) at which floating UI completely stops updating. (Lower this to 800 or 500 for extreme culling). DONT PLAY AROUND WITH THESE WORLDPANEL VALUE
        //"panorama_worldpanel_update_cull_size_threshold" "20" // If a floating UI element takes up less than this % of the screen, stop updating it. (Default is 5, making it 20 aggressively hides small UI elements far away).
        //"citadel_camera_see_distance_max" "2000"
        r_grass_density_mode "0" // 0 = Density logic completely disabled. Skips checking if grass blades exist.
        r_grass_alpha_test   "0" // Skips transparency rendering math for foliage
        shake_show "false"
        r_citadel_cloak_refract_amount "0" // Disables the GPU-heavy refraction effect when heroes go invisible (Wraith/Invis item)
        r_citadel_cloak_blur_amount    "0" // Disables blur on invis characters
        //"cl_hud_telemetry_frametime_show" "0"            // If you use an external FPS counter (Steam/RivaTuner), disable the in-game one to save Panorama updates
        animgraph_enable_dirty_netvar_optimization "true"  // Only updates the animation graph if the network variables actually changed.
        r_impacts_alt_orientation                  "false" // Skips complex grazing/glancing blow math for decals
        v8_maximum_heap_size_mb "512" // (Default is 512) Doubles UI memory heap to prevent CPU GC stutters
        animgraph_footlock_enabled              "0"
        animgraph_footlock_ik_enable            "0"
        animgraph_footlock_trace_ground_enabled "0"
        animgraph_footlock_use_hip_shift        "0"
        animgraph_footlock_hip_offset_enable    "0"
        animgraph_footlock_auto_ledge_detection "0"
        animgraph_footlock_auto_stair_detection "0"
        animgraph_footlock_calculate_tilt       "0"
        animgraph_footlock_ground_roll          "0"
        //"cl_updaterate" "64" //default is 20 but in game is 60?
        //"cl_interp_ratio" "2" //like cs cl_interp but it doesnt work idk
        //"r_particle_fixedrandomseeds" "true"
        props_break_max_pieces_perframe                 "1"
        func_break_max_pieces                           "1"
        citadel_use_pvs_for_players                     "true"
        cl_skip_hierarchy_update_for_unchanged_entities "true"
        cl_phys_sleep_enable                            "true"
        engine_low_latency_sleep_after_client_tick "1" // helps when r_low_latency on
        r_particle_allowprerender "0"
        //"cl_particle_max_count" "500"       // hard cap should play with this value to find the best hardcap
        sc_instanced_gpu_culling "1"
        r_particle_gpu_implicit      "1"
        r_force_thick_hair           "0"
        r_hairsort                   "0"
        r_hair_meshshader            "0"
        r_hair_voxels                "0"
        r_hair_wind_global_scale     "0"
        r_hair_wind_noise            "0"
        r_hair_wind_occlusion        "0"
        hairsim_force_fixed_timestep "1"
        animated_material_attributes                  "0"
        citadel_per_weapon_per_surface_impact_effects "0"
        citadel_world_bullet_impacts_for_npcs         "0"
        r_impacts_decal_grazing_incidence_cutoff      "0"
        r_citadel_mboit_enabled                       "0"
        r_citadel_mboit_quality                       "0"
        r_citadel_depth_prepass_cull_threshold        "0"
        r_zprepass_normals                            "0"
        phys_threaded_transform_update       "1"
        phys_threaded_kinematic_bone_update  "1"
        phys_continuous_kinematic_update     "0"
        citadel_npc_force_animate_every_tick "0"
        citadel_npc_ag2_enable               "0" //disable ag2 for npc
        citadel_visibility_queue_rate        "4"       

         //CREDITS																				      \\
        // dacooder    Config Creator            													   \\
	   // Xeraa		   Helped fix a major issue with console spam and fps drops late game				\\
      // Boot		   ConVar Contribution           												     \\
	 // Kaiz		   ConVar Contribution                                                                \\
	// simcasting 	   Benchmarking																		   \\
   // Artemon121       Made the Citadel cvar unhider														\\
  // Pidjan            Worked on further gameinfo changes and let us integrate                               \\
 // Piggy              Video.txt contributer and cool streamer guy                                            \\
// ----------------------------------------- END OF CONFIG OptiLock -- ver. 4.3 ------------------------------ \\

	rate
        {
            min     "98304"
            default "786432"
            max     "1000000"
        }
        sv_minrate                   "98304"
        sv_maxunlag                  "0.500"
        sv_maxunlag_player           "0.200"
        sv_lagcomp_filterbyviewangle "false"

        // Spew warning when adding/removing classes to/from the top of the hierarchy
        panorama_classes_perf_warning_threshold_ms "0.75"

        // Panorama - enable minidumps on JS exceptions
        panorama_js_minidumps "1"
        // Enable the render target cache optimization.
        panorama_disable_render_target_cache "0"

        // Enable the composition layer optimization
        panorama_skip_composition_layer_content_paint "1"

        // too expensive (500MB+) to load this
        snd_steamaudio_load_reverb_data  "0"
        snd_steamaudio_load_pathing_data "0"

        // Steam Audio project specific convars
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

        // For perf reasons, since we don't use source-based DSP:
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

        //don't let people mess with speaker config settings.
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