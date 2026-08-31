//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//						   			 ---------------------------------------- ver. 4.6  											\\
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
            AmbientOcclusionProxies "0" // In the dll, no default valueсерьезную
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
            bakedlighting "0" // Enable lightmapping during compile time
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
                direct_light_shadows          "0"
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
        SunLightMaxCascadeSize                      "0"    
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
	
						   // ----------------------- OptiLock -- ver. 4.6  ---------------------- \\
							   //        OptiLock: https://gamebanana.com/mods/690233          \\
							  //         QOL Lite: https://gamebanana.com/mods/690233           \\
							 //     Downloaded from: https://github.com/dacooderr/OptiLock       \\
							//      Tutorial: https://www.youtube.com/watch?v=Kpoet2ebl70         \\
						   //	      	   Discord: https://discord.gg/UxjsJB5Rp5				   \\
						  //																	    \\
						 //                   Подяка розробнику через донат                          \\
						//                 https://streamlabs.com/dacooderr/tip                       \\
						
				// ================ Властивості ================
						
				// --- КОНТУРИ ---
				citadel_trooper_glow_disabled                           "1"  // 1 = Вимкнути світіння дружніх/ворожих кріпів.                          [Стандартне налаштування: "0"]
				citadel_boss_glow_disabled                              "1"  // Вимикає ефект світіння/підсвічування боса та волкерів.                  [Стандартне налаштування: "0]
				r_citadel_npr_outlines_max_dist                         "600"  // Обмежує відстань рендеру контурів, щоб зменшити непотрібну обробку.        [Стандартне налаштування: "1000"]
				r_citadel_selection_outline2_alpha                      "0.8"  // Контури ворожих героїв та здібностей за шкалою від 0 до 1.       [Стандартне налаштування: "0.8"]
				r_citadel_npr_outlines                                  "true"  // Увімкнути контури на ворожих героях.                                [Стандартне налаштування: "true"]
				r_citadel_outlines                                      "1"  // Вмикає контури для покращення видимості.
				citadel_hud_objective_health_enabled        			"2" // [НАЛАШТУВАТИ] хп бар обєктів : 0=вимкнуто | 1=Тільки шрайни | 2=T1/T2 тавери | 3=Бараки
				citadel_player_glow_disabled                            "0"  // Вимикає ефект світіння/підсвічування гравця під час відмітки.               [Стандартне налаштування: "0"]
				citadel_trooper_friendly_glow_disabled                  "1" 
				cl_glow_brightness                                      "0"  		
						
				// --- СХОВОК(ЛОБІ) ---
				citadel_hideout_ball_show_juggle_count 					"1"
				citadel_hideout_ball_show_juggle_fx    					"1"		
						
				// --- МАРКЕРИ ВЛУЧАННЯ/ХП БАРИ ---
				citadel_unit_status_use_new                             "1"      // Вмикає нові хп бари. Може бути потрібним для певних модів, інакше вони спричинятимуть збої. (Змініть на 0 або False, щоб використовувати старі хп бари)
				//citadel_crosshair_hit_marker_duration                 "0.01"   // Видаляє маркер влучання під час стрільби героях.                      [Стандартне налаштування: "0.1"]
				r_citadel_glow_health_bars                				"false"  // Видаляє ефект світіння з хп барів
				 
				// ================ ПОЛЕ ЗОРУ ================
				r_aspectratio 											"2.15"   // [НАЛАШТУВАТИ] Контроль поля зору: 1.33=70fov | 1.56=75fov | 1.75=80fov | 2.0=85fov | 2.15=90fov | 2.49=100fov | 3.0=110fov | 3.5=120fov
				citadel_camera_hero_fov                                 "100"    // Кут зору камери під час стеження за героєм.     [Стандартне налаштування: "90"]
				
				// ==== ТОЧНІСТЬ КОЛЬОРУ & ПОСТ-ОБРОБКА ====

				//  ---- ВАЖЛИВО  ----
				mat_colorcorrection 									"false"  //  Точність кольору
				r_postprocess_enable                                    "true"  //  Вимкніть ефекти постобробки для всієї гри. Це зробить вашу гру ДУЖЕ темною. (Керує всіма convars (консольними змінними) в розділі постобробки, оскільки вони є ефектами постобробки)
				
				//  ---- ОПЦІОНАЛЬНІ ЕФЕКТИ ----
				r_effects_bloom                           				"false" 
				r_depth_of_field                          				"false" 	
				r_citadel_distancefield_blur							"false"
				fx_drawmetalspark                 						"false" //Стандартне налаштування: true Рендерить іскри.
				
				// --- ДИСТАНЦІЯ рендеру ---
				r_mapextents                      "12000"
				r_farz 							  "10000"  						// Змінює відстань, на якій скайбокс рендериться від вашого героя, налаштуйте ці 2 значення на свій смак, щоб зменшити проблеми з рендерингом.
				r_nearz      					  "10"						
				
				// ================ СВІТІННЯ & ТІНІ ================
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
				lb_max_visible_barn_lights_override						"1"	     // Безпосередньо впливає на освітлення в Схованці (лобі) та Силуетах Героїв
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
				sc_instanced_gpu_culling 								"1"		
				sc_instanced_mesh_gpu_culling 						    "true"
				sc_aggregate_gpu_culling     							"true"	
				sc_aggregate_gpu_occlusion_culling      				"1"
				sc_aggregate_gpu_vis_culling            				"1"					
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
				mat_depthbias_shadowmap                                 "0"
				mat_slopescaledepthbias_shadowmap                       "0"
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
				csm_max_num_cascades_override 							"2"	
				csm_cascade0_override_dist               				"0"
				csm_cascade1_override_dist               				"0"
				csm_cascade2_override_dist               				"0"
				csm_cascade3_override_dist               				"0"
				csm_max_dist_between_caster_and_receiver 				"0"
				csm_max_visible_dist                     				"0"
				csm_res_override_0                       				"1"
				csm_res_override_1                       				"1"
				csm_res_override_2                       				"1"
				csm_res_override_3                       				"1"
				csm_viewmodel_shadows                    				"false"						
				sparseshadowtree_disable_add_layers                     "1"
				r_rendersun 											"false" 

				// ================ SPARSE SHADOW TREE ================
				sparseshadowtree_enable_rendering      					"0"
				sparseshadowtree_disable_for_viewmodel 					"1"

				// ================ DISTANCE FIELD ================
				r_citadel_distancefield_farfield_enable 				"false"

				// ================ ТУМАН & АТМОСФЕРА ================
				r_enable_volume_fog                  					"0"
				r_enable_gradient_fog                					"0"
				r_enable_cubemap_fog                 					"0"
				volume_fog_intermediate_textures_hdr 					"0"

				// ================ НЕБО & ДОВКІЛЛЯ ================
				r_draw3dskybox        									"0"
				r_drawskybox          									"0" // Встановіть значення 0, щоб вимкнути скайбокс
				r_monitor_3dskybox    									"0"
				r_world_wind_strength 									"0"

				// ================ СИСТЕМА ЧАСТИНОК ================
				cl_particle_max_count 									"500"       // жорстке обження, треба поекспериментувати з цим значенням, щоб знайти найкраще обження
				r_particle_max_detail_level      						"0 " //Стандартне налаштування 0
				r_particle_cables_cast_shadows    						"0"
				r_RainParticleDensity             						"0"
				r_physics_particle_op_spawn_scale 						"0"
				r_particle_max_size_cull          						"600" //Стандартне налаштування 800 Системи частинок, більші за цей показник у кожному вимірі, пропускаються для економії ресурсів процесора, але вони все одно будуть намальовані.
				r_particle_mixed_resolution_viewstart 					"800"
				r_particle_max_draw_distance          					"300000" // Нижче = менший діапазон частинок, більше FPS, не опускати нижче цього значення, бо не буде рендерити хп бари кріпів,
				r_particle_model_new8                 					"0"
				cl_show_splashes                      					"0"
				r_particle_skip_postsim               					"1"
				//r_limit_particle_job_duration 		  				"1"
				cl_particle_sim_fallback_threshold_ms    				"2" // [НАЛАШТУВАТИ] Нижче = більш агресивне повернення до простих частинок (вищий FPS, менше деталей)
				cl_particle_fallback_base                				"10"
				cl_particle_fallback_multiplier          				"10"    //Стандартне налаштування 10
				cl_particle_sim_fallback_base_multiplier 				"100"   //Стандартне налаштування 10
				r_particle_min_timestep                  				"0.001" // Стандартне налаштування "0", кожна стара конфігурація "0.001" ,"0.016" (обмежує симуляцію частинок до 60 fps, що робить його плавнішим) або "0.033" (обмеження до 30 fps для стабільної продуктивності)
				r_particle_cables_render_meshlets 						"false"
				r_particle_max_texture_layers 							"4" //Стандартне налаштування -1, 3 створює квадратні візуальні ефекти
				r_draw_particle_children_with_parents 					"0"	
				r_particle_batch_collections 							"1"		
				r_particle_model_per_thread_count 						"32"	
				cl_particle_batch_mode                					"1"	
				r_update_particles_on_render_only_frames    			"1"	
				r_particle_allowprerender 								"0"		
				r_particle_gpu_implicit      							"1"		

				// ================ РЕГДОЛИ ================
				cl_ragdoll_limit                                        "1"  
				ragdoll_parallel_pose_control                           "1"  
				cl_disable_ragdolls                                     "0" 
				g_ragdoll_maxcount                                      "1"  // Не впевнений, яка команда ragdoll limit має пріоритет, тому я змінюю обидві
				ai_use_async_ragdoll_fixup                              "true" 
				cl_ragdoll_default_scale                                "0"  
				g_ragdoll_important_maxcount                            "1" 

				// ================ ВІЗУАЛЬНА ЧИСТОТА, МОДЕЛІ, ОПТИМІЗАЦІЯ ДЕКАЛЕЙ, КУБІЧНІ КАРТИ & тому подібне. ================
				r_drawdecals           									"true" 
				r_drawmodeldecals            							"0"    //не існує в головній вітці convar (консольних змінних)
				r_character_decal_resolution 							"0.60" //Стандартне налаштування 1
				r_character_decal_monitor_render_res 					"64"    //Стандартне налаштування: 512<br>
				r_decals                     							"1"    // Я впевнений, що VALVE вбив цю команду [НАЛАШТУВАТИ] Max decals visible: 1= лише 1 кульовий отвір (максимальний FPS) | 16=Стандартне налаштування
				r_impacts_alt_orientation                  				"false" // Пропускає складну математику ковзання слідів ударів для декалей
				r_propsmaxdist               							"600"
				r_citadel_screenspace_particles_full_res 				"false"
				r_citadel_gpu_culling_shadows            				"1"
				r_size_cull_threshold 									"0.50" // вище не ставити, бо буде волхак
				r_hair_ao             									"0"
				r_haircull_percent    									"100"
				ik_final_fixup_enable 									"0"
				ik_fabrik_align_chain 									"0"
				cl_impacteffects      									"0"
				enable_boneflex       									"false" // згиби тканини
				cl_eye_yaw_multiplier 									"0"
				cl_fasttempentcollision                                 "999999"  // Обмежує/контролює швидку обробку зіткнень для тимчасових обєктів (впливи/трасери/тощо); зазвичай вище = більше роботи. [Стандартне налаштування: "5"]
				enable_boneflex                                         "false"  // Вимикає згинання кісток (процедурні драйвери згинання обличчя/сітки).      [Стандартне налаштування: "1"]
				r_hair_indirect_transmittance                           "false"
				r_render_hair                                           "0"
				citadel_per_weapon_per_surface_impact_effects           "false"
				mat_colcorrection_disableentities                       "0"  // Дозволяє корекцію кольору на основі обєктів. [Стандартне налаштування: "0"]
				r_citadel_antialiasing                                  "0"  // Стандартне налаштування 1
				r_citadel_fog_quality                                   "0"  // Deadlock/Citadel якість туману (0 = найнижче). [Стандартне налаштування: "1"]
				r_decals_default_fade_duration                          "0.001"  // Як швидко згасають декалі (отвори від куль)                           [Стандартне налаштування: "3"]
				r_decals_default_start_fade                             "0.001"
				r_decals_max_on_deformables                             "0"
				r_decals_overlap_threshold                              "5"
				r_drawmodeldecals                                       "0"  // не існує в головній вітці convar (консольних змінних)
				r_drawtracers_firstperson                               "0"
				r_enable_cubemap_fog                                    "0"  // Вимикає туман на основі кубічної карти. [Стандартне налаштування: "1"]
				r_enable_gradient_fog                                   "0"  // Вимикає градієнтний туман. [Стандартне налаштування: "1"]
				r_enable_volume_fog                                     "0"  // Вимикає обємний туман. [Стандартне налаштування: "1"]
				r_fullscreen_gamma                                      "2.1"  // Рекомендовано використовувати це, щоб зробити гру яскравішою, більше число = темніше
				violence_hblood                                         "false"  // Вимикає ефекти крові героїв.                                    [Стандартне налаштування: "1"]
				r_post_bloom											"false"
				violence_hgibs                                          "false"  // Вимикає людські розчленування.                                             [Стандартне налаштування: "1"]
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
				lb_cubemap_normalization_max							"1"
				lb_cubemap_normalization_roughness_begin 				"0.01"      //Стандартне налаштування: 0.1<br>
				fog_enableskybox 										"0"		
				r_aoproxy_cull_dist          							"0.01"	
				r_citadel_cloak_refract_amount 							"0" // Вимикає ефект заломлення, що потребує багато GPU, коли герої стають невидимими. (Wraith/Invis предмети)
				r_citadel_cloak_blur_amount    							"0" // Вимкнути розмиття невидимих персонажів

				// ================ РІВЕНЬ ДЕТАЛІЗАЦІЇ & ВІДСІКАННЯ ================
				sc_instanced_mesh_lod_bias              				"15" // [ВПЛИВ НА FPS] Вища = нижча якість моделей, більше FPS | 0=Висока якість | 10=низька якість
				sc_instanced_mesh_lod_bias_shadow       				"10" // Зміщення для вибору LOD екземплярів сіток на картах тіней
				sc_instanced_mesh_motion_vectors        				"0"  // Встановіть 1, якщо ви використовуєте розмиття руху
				sc_instanced_mesh_size_cull_bias        				"10" // Зміщення для відсікання розмірів екземплярів сіток
				sc_instanced_mesh_size_cull_bias_shadow 				"10" // Зміщення для відсікання розмірів екземплярів сіток у картах тіней
				sc_clutter_enable                       				"false" // [ВПЛИВ НА FPS] 0=без сміття (максимальний FPS) | 1=зі сміттям (імерсивність)
				sc_aggregate_bvh_threshold              				"1"     // Нижній поріг ієрархії обмежувального обсягу (Стандартне налаштування: 128)
				sc_layer_batch_threshold                				"128"   // Нижній поріг групи (Стандартне налаштування: 128)
				sc_layer_batch_threshold_fullsort       				"20"    //Стандартне налаштування 80

				// ================ ФІЗИКА МОТУЗКИ ================
				rope_collide              								"0"
				rope_subdiv               								"0"
				rope_wind_dist            								"0"
				rope_smooth_enlarge       								"0"
				rope_smooth_maxalpha      								"0"
				rope_smooth_maxalphawidth 								"0"
				rope_smooth_minalpha      								"0"
				rope_smooth_minwidth      								"0"
				r_ropetranslucent         								"0"
				r_drawropes               								"0"

				// ================ РЕЛЬЄФ & РОСЛИННІСТЬ ================
				r_grass_quality   										"0"
				r_grass_start_fade 										"0"
				r_grass_end_fade   										"0"

				// ================ ІНТЕРФЕЙС ================
				panorama_disable_box_shadow                 			"0"
				r_dashboard_render_quality                  			"0"
				citadel_damage_offscreen_indicator_disabled 			"1"    // Встановіть 1, щоб вимкнути видимість хп барів кріпів крізь стіни
				citadel_portrait_world_renderer_off         			"false" // Встановіть значення true, щоб інтерфейс головний екран героя
				panorama_use_new_occlusion_invalidation     			"1"
				panorama_temp_comp_layer_min_dimension      			"128"
				panorama_async_compute_mipgen               			"1"
				hud_free_cursor 										"0" // Зменшує затримку введення даних інтерфейсу користувача в режимах minimap/spectator (не впевнений, чи це правда)
				citadel_camera_wobble_disable 							"1"
				mm_idle_show_warning_at_s              					"999" // Скільки секунд чекати, перш ніж відображатиметься діалогове вікно попередження про неактивність
				minimap_update_rate_hz 									"60"		
				
				// ================ ПАНОРАМА & ANIMGRAPH ================
				ik_enable                 								"0" // Дешевші анімації
				panorama_transition_time_factor 						"2" //швидший перехід для матеріалів, які не використовують анімацію
				panorama_disable_descendant_filtering 					"true"		
				panorama_draw_text_fast_path              				"1" // Примусово виконує візуалізацію тексту через апаратний прискорення
				panorama_draw_text_fast_path_text_shadow  				"1" // Примусово затіняє текст через апаратний прискорення
				panorama_hsbc_through_fast_path           				"1" // Примусово змінює відтінок/насиченість/яскравість інтерфейсу користувача через прискорення
				panorama_use_backbuffer_directly          				"1" // Пропускає копіювання буфера інтерфейсу користувача в память і записує безпосередньо в бекбуфер
				panorama_script_cache_enabled             				"1" // Агресивно кешує Javascript інтерфейсу користувача, щоб запобігти повторній компіляції під час гри.
				animgraph_footlock_enabled              				"0"		
				animgraph_footlock_ik_enable            				"0"		
				animgraph_footlock_trace_ground_enabled 				"0"		
				animgraph_footlock_use_hip_shift        				"0"		
				animgraph_footlock_hip_offset_enable    				"0"		
				animgraph_footlock_auto_ledge_detection 				"0"		
				animgraph_footlock_auto_stair_detection 				"0"		
				animgraph_footlock_calculate_tilt       				"0"		
				animgraph_footlock_ground_roll          				"0"		
				animgraph_enable_dirty_netvar_optimization 				"true"  // Оновлює ANIMGRAPH лише тоді, коли змінні мережі фактично змінилися.
				
				// ================ МЕРЕЖА & ПРОГНОЗИ ================
				cl_smooth 												"0"

				// ================ ТЕКСТУРИ ================
				r_texture_pool_size            							"512" // [НАЛАШТУВАТИ] Використання відеопамяті в МБ – нижче = використовується менше відеопамяті, може спричинити різкі появи текстур| 512-1024 діапазон
				r_texture_stream_mip_bias      							"4"  // [ВПЛИВ НА FPS] Вища = розмитіші текстури, більше FPS | 0=Висока якість | 2=Баланс | 4=низька якість
				r_texture_lod_scale            							"8"   // [ВПЛИВ НА FPS] 0=Висока якість (різкість) | 2=Середня якість | 4=низька якість (розмиття, максимальний FPS)
				r_fallback_texture_lod_scale   							"8"
				r_texture_budget_update_period 							"0.5" // Швидше налаштування потокової передачі текстур 0.05
				r_texture_pool_reduce_rate     							"512"
				r_texturefilteringquality    							"0"
				r_texture_stream_resolution_bias 						"0.01"		
				r_texture_stream_max_resolution     					"512"
				r_texture_nonstreaming_load         					"1"	
				r_texture_stream_throttle_count_over_budget 			"0"		

				// ================ ВИДІЛЕННЯ ПАМЯТІ ================
				r_texture_budget_dynamic   								"1" // Динамічне налаштування обєму текстур
				r_texture_budget_threshold 								"0.7"

				// ================ ШЕЙДЕРИ & РЕНДЕР ================
				mat_async_shader_load        							"1"
				r_renderdoc_auto_shader_pdbs 							"0"
				r_max_portal_render_targets  							"2" // Встановити кількість відображення порталів

				// ================ ВВІД & ЗАТРИМКА ================
				r_low_latency 											"1"		
				engine_low_latency_sleep_after_client_tick 				"1" // допомагає, коли ввімкнено r_low_latency
				cl_input_enable_raw_keyboard             				"true"      //Стандартне налаштування: false, Увімкнути пряме введення даних з клавіатури
				m_rawinput       										"1" 		//здається, ще не існує грі поки
				steam_inputhandler_enabled								"1"         // Увімкнення підтримки контролера

				// ================ ТЕСТУВАННЯ ================
				cl_simulate_dormant_entities 							"false"
				sc_clutter_density_none_size 							"0.5" //Стандартне налаштування 0.0035
				sc_clutter_density_full_size      						"1"
				sc_allow_dithered_lod          							"0"
				sc_dithered_lod_transition_amt 							"0"
				phys_expensive_shape_threshold              			"6"  //Стандартне налаштування 6
				sc_max_framebuffer_copies_per_layer         			"0"  //не маю уявлення, що це робить, не буду брехати
				r_strip_invisible_during_sceneobject_update 			"1"  //Стандартне налаштування: false
				fs_async_threads                            			"-1" //Стандартне налаштування 8
				r_citadel_depth_prepass_dynamic_objects 				"0"
				citadel_unit_status_old_update_rate 					"15"
				r_pipeline_stats_use_flush_api      					"0"
				sc_instanced_mesh_opaque_fade       					"0"
				wind_system_temporal_smoothing    						"false"
				wind_system_default_resolution_xy 						"64"
				snd_use_baked_occlusion           						"1"
				cl_batch_entity_list_ops_during_latch 					"1"
				cl_bone_cache_optimization           					"1"
				mm_idle_enabled  										"false"
				sc_force_materials_batchable 							"true"
				thread_pool_option                          			"-1"
				r_flush_on_pooled_ib_resize                 			"false"
				cl_skel_constraints_enable 								"0"
				cl_pred_optimize             							"true"
				cl_pred_parallel_postnetwork							"true"
				cl_phys_animated_hierarchy 								"false"
				sc_allow_dynamic_constant_batching  					"0"
				sc_allow_precomputed_vismembers         				"1"
				sc_force_single_display_list_per_layer  				"1"
				citadel_hud_objective_health_idle_timeout 				"0" // Босс/тавер хп бари зникають у мілісекунду, коли вони перестають отримувати шкоду.
				r_grass_density_mode 									"0" // 0 = Логіка щільності повністю вимкнена. Пропускає перевірку при наявності травинок.
				r_grass_alpha_test   									"0" // Пропускає математичні обчислення прозорості для рослинності
				v8_maximum_heap_size_mb 								"512" // (Стандартне налаштування 512) Подвоює виділену память для інтерфейсу користувача задля запобігання заїканням при збірці сміття процесором
				props_break_max_pieces_perframe                 		"1"
				func_break_max_pieces                           		"1"
				citadel_use_pvs_for_players                     		"true"
				cl_skip_hierarchy_update_for_unchanged_entities 		"true"
				cl_phys_sleep_enable                            		"true"
				r_force_thick_hair           							"0"
				r_hairsort                   							"0"
				r_hair_meshshader            							"0"
				r_hair_voxels                							"0"
				r_hair_wind_global_scale     							"0"
				r_hair_wind_noise            							"0"
				r_hair_wind_occlusion        							"0"
				hairsim_force_fixed_timestep 							"1"
				animated_material_attributes                  			"0"
				citadel_world_bullet_impacts_for_npcs         			"0"
				r_impacts_decal_grazing_incidence_cutoff      			"0"
				r_citadel_mboit_enabled                       			"0"
				r_citadel_mboit_quality                       			"0"
				r_citadel_depth_prepass_cull_threshold        			"0"
				r_zprepass_normals                            			"0"
				phys_continuous_kinematic_update     					"0"
				citadel_npc_force_animate_every_tick					"0"
				citadel_npc_ag2_enable               					"0" //вимкнути ag2 для npc
				citadel_visibility_queue_rate        					"4" 			

				 //ПОДЯКИ																				                      \\
				// dacooder    Автор конфігу            													                   \\
			   // Xeraa		   Допоміг вирішити серйозну проблему зі спамом на консолі та падінням FPS у кінці гри.				\\
			  // Boot		   Вклад в ConVar(консольні змінні)           												         \\
			 // Kaiz		   Вклад в ConVar(консольні змінні)                                                                   \\
			// simcasting 	   Тестування(бенчмарки)																		       \\
		   // Artemon121       Розшифрував Citadel cvar(консольні змінні)     														\\
		  // Pidjan            Працював над подальшими змінами в gameinfo та дозволили нам інтегрувати                               \\
		 // Piggy              Вклад в Video.txt і крутий стрімер                                                                     \\
		// ----------------------------------------- Кінець конфігу OptiLock -- ver. 4.6 ----------------------------------------------\\

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
