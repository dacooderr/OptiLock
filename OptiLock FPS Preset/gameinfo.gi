//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//										---------------------------------------- ver. 4.1 							                \\
//																																    \\
//						If this config helped you, you wanna be extra nice, let me know by giving a little back or					\\
//										check out my YouTube and Twitch! -dacooderr													\\
//											https://streamlabs.com/dacooderr/tip               										\\
//__________________________________________________________________________________________________________________________________\\	

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
	   // ---------------------- OptiLock -- ver. 4.1  -------------------------- \\
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

// --- FIELD OF VIEW ---
r_aspectratio                                           "2.15"  // 1.75=80fov | 2.15=90fov | 2.49=100fov      [def: "0"]
citadel_camera_hero_fov                                 "100"  // The field of view angle of the camera when following a hero.     [def: "90"]

// --- HIT MARKER/HEALTHBAR ---
citadel_unit_status_use_new                             "1"  // Enables new healthbars. May be needed for certain mods or they will cause crashes. (Change to 0 or False to use Old Healthbars)
//citadel_crosshair_hit_marker_duration                 "0.01"  // Removes the hitmarker when shooting people.                      [def: "0.1"]

// ================= UI ================
r_citadel_enable_pano_world_blur                        "true"
r_dashboard_render_quality                              "0"
panorama_disable_box_shadow                             "1" 
panorama_disable_blur                                   "1"  
panorama_allow_transitions                              "false" 
panorama_use_new_occlusion_invalidation                 "1"
panorama_temp_comp_layer_min_dimension                  "128"
citadel_damage_report_enable                            "1"  
citadel_damage_text_show_effectiveness                  "0"  
citadel_hud_objective_health_enabled                    "2" 
citadel_hud_objective_health_idle_timeout               "4"
citadel_in_world_item_panel_dpi                         "0.75"
citadel_minimap_use_canvas_for_neutrals                 "0" 
citadel_minimap_use_canvas_for_shop                     "0"  
citadel_portrait_world_renderer_off                     "false"  

// ================ RAGDOLLS ================
cl_ragdoll_limit                                        "1"  
ragdoll_parallel_pose_control                           "1"  
cl_disable_ragdolls                                     "0" 
g_ragdoll_maxcount                                      "1"
ai_use_async_ragdoll_fixup                              "true" 
cl_ragdoll_default_scale                                "0"  
g_ragdoll_important_maxcount                            "1"

// ================ TEXTURES & VISUAL CLARITY & MODELS ================
citadel_video_preset                                    "0"
r_texture_stream_mip_bias                               "4"  
r_texturefilteringquality                               "0"  
mat_colorcorrection                                     "true"
r_texture_budget_dynamic                                "true"
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
r_texture_lod_scale                                     "4"
r_texture_stream_throttle_count_over_budget             "0"
r_texture_nonstreaming_load                             "1"
r_texture_budget_update_period                          "0.5" 
r_texture_pool_reduce_rate                              "512"
r_texture_stream_resolution_bias                        "0.01"
citadel_per_weapon_per_surface_impact_effects           "false"
mat_colcorrection_disableentities                       "0" 
r_citadel_antialiasing                                  "0" 
r_citadel_fog_quality                                   "0" 
r_decals_default_fade_duration                          "0.001" 
r_decals_default_start_fade                             "0.001"
r_decals_max_on_deformables                             "0"
r_decals_overlap_threshold                              "5"
r_drawmodeldecals                                       "0"  
r_drawtracers_firstperson                               "0"
r_enable_cubemap_fog                                    "0"  
r_enable_gradient_fog                                   "0" 
r_enable_volume_fog                                     "0" 
r_fullscreen_gamma                                      "2.2" 
r_postprocess_enable                                    "true"  
violence_hblood                                         "false"  
violence_hgibs                                          "false" 
cl_fasttempentcollision                                 "999999"
enable_boneflex											"false"

// ================ LIGHTING & EFFECTS ================
sc_disable_baked_lighting                               "true"
r_directlighting 										"false"
r_indirectlighting 										"true"
lb_enable_dynamic_lights								"true"
lb_enable_stationary_lights								"true"
lb_max_visible_barn_lights_override						"1"
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

// =========== SHADOWS ============
lb_enable_shadow_casting								"false"
lb_mixed_shadows										"false"
lb_shadow_map_cull_empty_mixed							"true"
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

// ================ PHYSICS, CLOTH & DECALS ================
presettle_cloth_iterations                              "0" 
pred_cloth_pos_max                                      "0"  
pred_cloth_pos_multiplier                               "0" 
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
r_impacts_alt_orientation                               "false" 

// ================ INPUT ================
cl_input_enable_raw_keyboard                            "1"
m_rawinput                                              "1"
steam_inputhandler_enabled								"0"

// ================ PARTICLES ================
r_drawparticles 										"false"
r_particle_max_draw_distance                            "1"
r_citadel_screenspace_particles_full_res                "0"
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
particle_cluster_use_collision_hulls                    "false"  
r_particle_model_per_thread_count                       "32" 
r_threaded_particles									"1"
r_late_particle_job_sync                                "1"
r_particle_parallel_simulation                          "1"
r_particle_batch_simulate                               "1"

// ================ Lod & Culling ================
cl_enable_eye_occlusion                                 "true"
r_propsmaxdist											"700"
sv_pvs_max_distance										"6500"
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
r_farz                                                  "15000"
r_mapextents                                            "15000"
citadel_use_pvs_for_players                             "true"
sv_waterdist                                            "0"
lb_ssss_samples                                         "0"
r_aoproxy_cull_dist                                     "0.01"
r_aoproxy_min_dist                                      "9999"
r_character_decal_monitor_render_res                    "128"
r_haircull_percent                                      "100"
sc_clutter_density_none_size 							"0.1"
sc_enable_discard                                       "true" 
sc_clutter_density_full_size                            "0.5"
r_strip_invisible_during_sceneobject_update             "1"
mesh_calculate_curvature_smooth_pass_count              "0"
sc_max_framebuffer_copies_per_layer                     "0"
r_grass_density_mode                                    "0"  
r_grass_alpha_test                                      "0" 
sc_disable_culling_boxes								"1"

// ========= Skybox =========
r_draw3dskybox                                          "0"
r_monitor_3dskybox										"0"

// ================ Misc ================
r_low_latency                                           "true"
r_render_portals										"false"
r_rendersun                                             "false"
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
cl_skip_hierarchy_update_for_unchanged_entities			"true"
v8_maximum_heap_size_mb                                 "1024"
sc_force_single_display_list_per_layer                  "1"
sc_allow_precomputed_vismembers                         "1"
sc_allow_dynamic_constant_batching						"1"
snd_disable_mixer_duck 									"1"
phys_continuous_kinematic_update                        "0"
cl_phys_animated_hierarchy                              "false"
cl_pred_optimize                                        "true"
cl_pred_parallel_postnetwork                            "true"
cl_skel_constraints_enable                              "0"
ik_enable                                               "0"
thread_pool_option                                      "-1"
sv_hide_ent_in_pvs                                      "1"
threadpool_thread_limit                                 "0"
fs_async_threads                                        "-1"
citadel_hideout_ball_show_juggle_count                  "1"
citadel_hideout_ball_show_juggle_fx                     "1"

// --- AUDIO ---
audio_enable_vmix_mastering                             "0"  
dsp_volume                                              "0" 
snd_occlusion_bounces                                   "0"  
snd_steamaudio_num_threads                              "4"  
snd_mix_async                                           "1"  
soundsystem_update_async                                "1"  

// ================ UI ================
citadel_damage_offscreen_indicator_disabled             "1" 
closecaption                                            "false"  
hud_free_cursor                                         "0"  
mm_idle_show_warning_at_s                               "999" 
panorama_async_compute_mipgen                           "1"
panorama_transition_time_factor                         "2"  
panorama_clear_frames_on_device_restore					"0"
citadel_unit_status_hide_names 							"1"
panorama_draw_text_fast_path                            "1"  
panorama_draw_text_fast_path_text_shadow                "1"  
panorama_hsbc_through_fast_path                         "1"  
panorama_use_backbuffer_directly                        "1" 
panorama_script_cache_enabled                           "1"
r_citadel_selection_outline2_offset                     "2"
r_citadel_selection_outline2_width                      "50"
minimap_update_rate_hz                                  "60"
r_citadel_glow_health_bars                              "false"
citadel_player_outline_enemies                          "true"
citadel_trooper_outline_enabled                         "true"
panorama_max_fps                                        "15"  
panorama_max_overlay_fps                                "15"  

// ================ Network ================
cl_async_usercmd_send                                   "true"  
cl_eye_yaw_multiplier                                   "0"
cl_parallel_readpacketentities                          "1"
cl_parallel_readpacketentities_threshold                "2"
cl_prediction_savedata_postentitypacketreceived         "1"
cl_resend                                               "15"  
cl_smooth_draw_debug                                    "0"
cl_smoothtime                                           "0.01" 
cl_updaterate                                           "128" 
net_async_clientconnect                                 "1"
r_frame_sync_enable                                     "0"  
sv_parallel_sendsnapshot                                "2"

// ================ System Related ================
battery_saver                                           "0"  
cpu_level                                               "0"  
engine_max_ticks_to_simulate                            "33"  
gpu_level                                               "0"  
gpu_mem_level                                           "0"  

// ================ Lod & Culling ================
mat_viewportscale                                       "1"  
sc_instanced_mesh_mesh_shader                           "false" 
sc_instanced_mesh_opaque_fade                           "false"
sc_screen_size_lod_scale_override                       "1"  
sc_aggregate_gpu_occlusion_culling                      "1"
sc_aggregate_gpu_vis_culling 							"1"
sc_instanced_mesh_gpu_culling                           "true"
sc_aggregate_gpu_culling                                "true"

// ================ AI & Animgraph ===============
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
animgraph_enable_dirty_netvar_optimization				"true"
ai_lod_auto_enabled                                     "true"

// ================ Audio ================
snd_use_baked_occlusion                                 "1"


         //CREDITS																				      \\
        // dacooder    Config Creator            													   \\
	   // Xeraa		   Helped fix a major issue with console spam and fps drops late game				\\
      // Boot		   ConVar Contribution           												     \\
	 // Kaiz		   ConVar Contribution                                                                \\
	// simcasting 	   Benchmarking																		   \\
   // Artemon121       Made the Citadel cvar unhider														\\
  // Pidjan            Worked on further gameinfo changes and let us integrate                               \\
 // Piggy              Video.txt contributer and cool streamer guy                                            \\
// ----------------------------------------- END OF CONFIG OptiLock -- ver. 4.1 ------------------------------ \\

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