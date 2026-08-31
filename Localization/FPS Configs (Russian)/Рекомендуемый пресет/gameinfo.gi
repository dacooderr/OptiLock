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
						 //                    Благодарность за разработку(донат)                    \\
						//                 https://streamlabs.com/dacooderr/tip                       \\

				// ================ Свойства ================

				// --- КОНТУРЫ ---
				citadel_trooper_glow_disabled                           "1"  // 1 = Отключить союзные/вражеские свечение крипов.                          [По-умолчанию: "0"]
				citadel_boss_glow_disabled                              "1"  // Отключить эффект свечения/подсветки босса и волкера .                  [По-умолчанию: "0]
				r_citadel_npr_outlines_max_dist                         "600"  // Ограничение дистанции прорисовки контура для уменшения влияния на производительность.        [По-умолчанию: "1000"]
				r_citadel_selection_outline2_alpha                      "0.8"  // Контур на вражеских героях и их умениях значения 0-1.       [По-умолчанию: "0.8"]
				r_citadel_npr_outlines                                  "true"  // Включает контур на вражеских героях.                                [По-умолчанию: "true"]
				r_citadel_outlines                                      "1"  // Включает контур на врагах для лучшей видимости.
				citadel_hud_objective_health_enabled        			"2" // [Настроить] Отображения хп у структур: 0=Выключить | 1=только Шрайны | 2=T1/T2 тавера | 3=Бараки
				citadel_player_glow_disabled                            "0"  // Отключить контур/свечение на вражеских героях при отметке.               [По-умолчанию: "0"]
				citadel_trooper_friendly_glow_disabled                  "1"
				cl_glow_brightness                                      "0"

				// --- ЛОББИ ---
				citadel_hideout_ball_show_juggle_count 					"1"
				citadel_hideout_ball_show_juggle_fx    					"1"

				// --- ИНДИКАТОР ПОПАДАНИЯ/ХП БАРЫ ---
				citadel_unit_status_use_new                             "1"      // Включает новые зп бары. Может быть зависимостью для мода если требуется но выключен то будет крашить. (Значение 0 или False для использования старых хп баров)
				//citadel_crosshair_hit_marker_duration                 "0.01"   // Убирает хит маркеры.                      [По-умолчанию: "0.1"]
				r_citadel_glow_health_bars                				"false"  // Убирает эффект свечения с хп баров

				// ================ ПОЛЕ ЗРЕНИЯ ================
				r_aspectratio 											"2.15"   // [Настроить] Поле зрения: 1.33=70fov | 1.56=75fov | 1.75=80fov | 2.0=85fov | 2.15=90fov | 2.49=100fov | 3.0=110fov | 3.5=120fov
				citadel_camera_hero_fov                                 "100"    // Угол поля зрения камеры при слежении за героем.     [По-умолчанию: "90"]

				// ==== ЦВЕТОКОР & ПОСТ-ОБРАБОТКА ====

				//  ---- ВАЖНО  ----
				mat_colorcorrection 									"false"  //  Цветокор
				r_postprocess_enable                                    "true"  //  Отключает пост-обработку. Делает игру очень темной. (Распространяется на все convars (консольные переменные) в секции пост-обработки)

				//  ---- ДОПОЛНИТЕЛЬНЫЕ ЭФФЕКТЫ ----
				r_effects_bloom                           				"false"
				r_depth_of_field                          				"false"
				r_citadel_distancefield_blur							"false"
				fx_drawmetalspark                 						"false" //По-умолчанию: true Отрисовка эффектов искр.

				// --- ДАЛЬНОСТЬ ПРОРИСОВКИ ---
				r_mapextents                      "12000"
				r_farz 							  "10000"  						// Дальность прорисовки скайбокса, настроить эти два значения по желанию для улучшения производительности.
				r_nearz      					  "10"

				// ================ ОСВЕЩЕНИЕ & ТЕНИ ================
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
				lb_max_visible_barn_lights_override						"1"	     // Напрямую влияет на освещение в лобби и всех силуэтов героев
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

				// ================ НЕБО & ОКРУЖЕНИЕ ================
				r_draw3dskybox        									"0"
				r_drawskybox          									"0" // Значение 0 отключает скайбокс
				r_monitor_3dskybox    									"0"
				r_world_wind_strength 									"0"

				// ================ СИСТЕМА ЧАСТИЦ ================
				cl_particle_max_count 									"500"       // Строгое ограничение частиц, поиграться со значение чтобы найти лучшее
				r_particle_max_detail_level      						"0 " //По-умолчанию 0
				r_particle_cables_cast_shadows    						"0"
				r_RainParticleDensity             						"0"
				r_physics_particle_op_spawn_scale 						"0"
				r_particle_max_size_cull          						"600" //По-умолчанию 800. В системах частиц, превышающих это значение по всем измерениям, отсечение частиц пропускается для экономии ресурсов процессора. Тем не менее, они будут отрисованы.
				r_particle_mixed_resolution_viewstart 					"800"
				r_particle_max_draw_distance          					"300000" // Дистанция отрисовки частиц чем меньше тем больше FPS, если поставить ниже чем есть то пропадут хп бары крипов,
				r_particle_model_new8                 					"0"
				cl_show_splashes                      					"0"
				r_particle_skip_postsim               					"1"
				//r_limit_particle_job_duration 		  				"1"
				cl_particle_sim_fallback_threshold_ms    				"2" // [Настроить] Более низкое значение означает более агрессивный переход к простым частицам (более высокая частота кадров, меньшая детализация).
				cl_particle_fallback_base                				"10"
				cl_particle_fallback_multiplier          				"10"    //По-умолчанию 10
				cl_particle_sim_fallback_base_multiplier 				"100"   //По-умолчанию 10
				r_particle_min_timestep                  				"0.001" // По-умолчанию "0", в старых версиях "0.001" ,"0.016" (ограничивает симуляцию частиц до 60 fps для более плавной работы) или "0,033" (ограничивает до 30 fps для более стабильной производительности)
				r_particle_cables_render_meshlets 						"false"
				r_particle_max_texture_layers 							"4" //По-умолчанию -1 3 создает квадратные визуальные эффекты
				r_draw_particle_children_with_parents 					"0"
				r_particle_batch_collections 							"1"
				r_particle_model_per_thread_count 						"32"
				cl_particle_batch_mode                					"1"
				r_update_particles_on_render_only_frames    			"1"
				r_particle_allowprerender 								"0"
				r_particle_gpu_implicit      							"1"

				// ================ РЭГДОЛЛЫ ================
				cl_ragdoll_limit                                        "1"
				ragdoll_parallel_pose_control                           "1"
				cl_disable_ragdolls                                     "0"
				g_ragdoll_maxcount                                      "1"  // Не уверен, какая команда ограничения количества рэгдоллов имеет приоритет, поэтому меняю обе.
				ai_use_async_ragdoll_fixup                              "true"
				cl_ragdoll_default_scale                                "0"
				g_ragdoll_important_maxcount                            "1"

				// ================ ВИЗУАЛЬНАЯ ЧЕТКОСТЬ, МОДЕЛЬ, ОПТИМИЗАЦИЯ ДЕКАЛЕЙ, КУБИЧЕСКАЯ КАРТА и т. д. ================
				r_drawdecals           									"true"
				r_drawmodeldecals            							"0"    //не существует в основной ветке convar (консольных переменных)
				r_character_decal_resolution 							"0.60" //По-умолчанию 1
				r_character_decal_monitor_render_res 					"64"    //По-умолчанию: 512<br>
				r_decals                     							"1"    // Я почти уверен, что Valve отключила эту команду. [Настроить] Max decals visible: 1= всего 1 пулевое отверстие (максимальный fps) | 16=По-умолчанию
				r_impacts_alt_orientation                  				"false" // Пропускает сложные вычисления для смазанных отметин ударов при нанесении декалей.
				r_propsmaxdist               							"600"
				r_citadel_screenspace_particles_full_res 				"false"
				r_citadel_gpu_culling_shadows            				"1"
				r_size_cull_threshold 									"0.50" // не повышать значение, в противном случае будет волхак
				r_hair_ao             									"0"
				r_haircull_percent    									"100"
				ik_final_fixup_enable 									"0"
				ik_fabrik_align_chain 									"0"
				cl_impacteffects      									"0"
				enable_boneflex       									"false" // сгибы ткани
				cl_eye_yaw_multiplier 									"0"
				cl_fasttempentcollision                                 "999999"  // Ограничивает/контролирует быструю обработку столкновений для временных объектов (удары/трасеры и т.д.); более высокое значение обычно означает больший объем работы. [По-умолчанию: "5"]
				enable_boneflex                                         "false"  // Отключает сгибание костей (процедурные драйверы сгибания лицевых костей/сетки).      [По-умолчанию: "1"]
				r_hair_indirect_transmittance                           "false"
				r_render_hair                                           "0"
				citadel_per_weapon_per_surface_impact_effects           "false"
				mat_colcorrection_disableentities                       "0"  // Позволяет выполнять цветокоррекцию на основе объектов. [По-умолчанию: "0"]
				r_citadel_antialiasing                                  "0"  // По-умолчанию 1
				r_citadel_fog_quality                                   "0"  // Deadlock/Citadel качество тумана (0 = самое низкое). [По-умолчанию: "1"]
				r_decals_default_fade_duration                          "0.001"  // Как быстро пропадают декали (следы от пуль).                           [По-умолчанию: "3"]
				r_decals_default_start_fade                             "0.001"
				r_decals_max_on_deformables                             "0"
				r_decals_overlap_threshold                              "5"
				r_drawmodeldecals                                       "0"  // не существует в основной ветке convar (консольных переменных)
				r_drawtracers_firstperson                               "0"
				r_enable_cubemap_fog                                    "0"  // Отключает туман, основанный на кубической карте. [По-умолчанию: "1"]
				r_enable_gradient_fog                                   "0"  // Отключает градиентный туман. [По-умолчанию: "1"]
				r_enable_volume_fog                                     "0"  // Отключает объемный туман. [По-умолчанию: "1"]
				r_fullscreen_gamma                                      "2.1"  // Рекомендуется использовать это для того, чтобы сделать игру ярче: чем больше число, тем темнее.
				violence_hblood                                         "false"  // Отключает кровь героев.                                    [По-умолчанию: "1"]
				r_post_bloom											"false"
				violence_hgibs                                          "false"  // Отключает расчленение.                                             [По-умолчанию: "1"]
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
				lb_cubemap_normalization_roughness_begin 				"0.01"      //По-умолчанию: 0.1<br>
				fog_enableskybox 										"0"
				r_aoproxy_cull_dist          							"0.01"
				r_citadel_cloak_refract_amount 							"0" // Отключает ресурсоемкий для графического процессора эффект преломления света, когда герои становятся невидимыми (Wraith/Invis предметы)
				r_citadel_cloak_blur_amount    							"0" // Отключить размытие для невидимых персонажей

				// ================ УРОВЕНЬ ДЕТАЛИЗАЦИИ & ОТСЕЧЕНИЯ ================
				sc_instanced_mesh_lod_bias              				"15" // [Влияние на FPS] Чем выше значение, тем выше частота кадров. | 0=Высокое качество | 10=Низкое качество
				sc_instanced_mesh_lod_bias_shadow       				"10" // Смещение в выборе LOD для экземпляров мешей в картах теней
				sc_instanced_mesh_motion_vectors        				"0"  // Установите значение 1, если используете размытие в движении.
				sc_instanced_mesh_size_cull_bias        				"10" // Смещение в сторону отсечения по размеру экземпляров сетки
				sc_instanced_mesh_size_cull_bias_shadow 				"10" // Смещение в сторону отсечения по размеру экземпляров мешей в картах теней
				sc_clutter_enable                       				"false" // [Влияние на FPS] 0=без мусора (больше FPS) | 1= с мусором (иммерсивность)
				sc_aggregate_bvh_threshold              				"1"     // Нижний порог иерархии ограничивающего объема (По-умолчанию: 128)
				sc_layer_batch_threshold                				"128"   // Нижний порог группы (По-умолчанию: 128)
				sc_layer_batch_threshold_fullsort       				"20"    //По-умолчанию 80

				// ================ ФИЗИКА ВЕРЕВКИ ================
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

				// ================ РЕЛЬЕФ & ЛИСТВА ================
				r_grass_quality   										"0"
				r_grass_start_fade 										"0"
				r_grass_end_fade   										"0"

				// ================ ИНТЕРФЕЙС ================
				panorama_disable_box_shadow                 			"0"
				r_dashboard_render_quality                  			"0"
				citadel_damage_offscreen_indicator_disabled 			"1"    // Установите 1, чтобы отключить видимость хп баров крипов сквозь стены.
				citadel_portrait_world_renderer_off         			"false" // Установите значение true, чтобы отключить отображение интерфейса героя .
				panorama_use_new_occlusion_invalidation     			"1"
				panorama_temp_comp_layer_min_dimension      			"128"
				panorama_async_compute_mipgen               			"1"
				hud_free_cursor 										"0" // Уменьшает задержку ввода в пользовательском интерфейсе в режимах мини-карты/наблюдателя (не уверен, что это правда).
				citadel_camera_wobble_disable 							"1"
				mm_idle_show_warning_at_s              					"999" // Сколько секунд нужно подождать, прежде чем отобразится диалоговое окно с предупреждением об неактивности
				minimap_update_rate_hz 									"60"

				// ================ ПАНОРАМА & ANIMGRAPH ================
				ik_enable                 								"0" // простые анимации
				panorama_transition_time_factor 						"2" //Более быстрый переход для контента, не использующего анимацию.
				panorama_disable_descendant_filtering 					"true"
				panorama_draw_text_fast_path              				"1" // Принудительное использование аппаратного ускоренного механизма для отрисовки текста.
				panorama_draw_text_fast_path_text_shadow  				"1" // Принудительное добавление теней к тексту осуществляется с помощью аппаратного ускоренного механизма.
				panorama_hsbc_through_fast_path           				"1" // Принудительная отрисовка изменений оттенка/насыщенности/яркости пользовательского интерфейса быстрым способом.
				panorama_use_backbuffer_directly          				"1" // Пропускает копирование буфера пользовательского интерфейса в память и записывает данные непосредственно в буфер обратной связи.
				panorama_script_cache_enabled             				"1" // Активно кэширует JavaScript пользовательского интерфейса, чтобы предотвратить перекомпиляцию во время игры.
				animgraph_footlock_enabled              				"0"
				animgraph_footlock_ik_enable            				"0"
				animgraph_footlock_trace_ground_enabled 				"0"
				animgraph_footlock_use_hip_shift        				"0"
				animgraph_footlock_hip_offset_enable    				"0"
				animgraph_footlock_auto_ledge_detection 				"0"
				animgraph_footlock_auto_stair_detection 				"0"
				animgraph_footlock_calculate_tilt       				"0"
				animgraph_footlock_ground_roll          				"0"
				animgraph_enable_dirty_netvar_optimization 				"true"  // ANIMGRAPH обновляется только в том случае, если переменные сети действительно изменились..

				// ================ СЕТЬ & ПРОГНОЗИРОВАНИЕ ================
				cl_smooth 												"0"

				// ================ ТЕКСТУРЫ ================
				r_texture_pool_size            							"512" // [Настроить] Использование видеопамяти в МБ — чем ниже значение, тем меньше используется видеопамяти, что может привести к внезапному появлению текстур на экране. | 512-1024 диапазон
				r_texture_stream_mip_bias      							"4"  // [Влияние на FPS] Чем выше значение, тем более размыты текстуры и выше частота кадров. | 0=Высокое качество | 2=Баланс | 4=Низкое качество
				r_texture_lod_scale            							"8"   // [Влияние на FPS] 0=Высокое качество (резкость) | 2=Среднее | 4=Низкое качество (размытое изображение, максимальный FPS)
				r_fallback_texture_lod_scale   							"8"
				r_texture_budget_update_period 							"0.5" // Более быстрая настройка потоковой передачи текстур. 0.05
				r_texture_pool_reduce_rate     							"512"
				r_texturefilteringquality    							"0"
				r_texture_stream_resolution_bias 						"0.01"
				r_texture_stream_max_resolution     					"512"
				r_texture_nonstreaming_load         					"1"
				r_texture_stream_throttle_count_over_budget 			"0"

				// ================ ВЫДЕЛЕНИЕ ПАМЯТИ ================
				r_texture_budget_dynamic   								"1" // Динамическая корректировка выделенного места для текстур
				r_texture_budget_threshold 								"0.7"

				// ================ ШЕЙДЕРЫ И РЕНДЕРИНГ ================
				mat_async_shader_load        							"1"
				r_renderdoc_auto_shader_pdbs 							"0"
				r_max_portal_render_targets  							"2" // Укажите, сколько порталов нужно отобразить.

				// ================ ВВОД И ЗАДЕРЖКА ================
				r_low_latency 											"1"
				engine_low_latency_sleep_after_client_tick 				"1" // помогает при включенном параметре r_low_latency
				cl_input_enable_raw_keyboard             				"true"      //По-умолчанию: false. Включает прямой ввод с клавиатуры
				m_rawinput       										"1" 		//Не реализовано в игре
				steam_inputhandler_enabled								"1"         // Включает поддержку контроллера

				// ================ ТЕСТИРУЕТЬСЯ ================
				cl_simulate_dormant_entities 							"false"
				sc_clutter_density_none_size 							"0.5" //По-умолчанию 0.0035
				sc_clutter_density_full_size      						"1"
				sc_allow_dithered_lod          							"0"
				sc_dithered_lod_transition_amt 							"0"
				phys_expensive_shape_threshold              			"6"  //По-умолчанию 6
				sc_max_framebuffer_copies_per_layer         			"0"  //Честно говоря, понятия не имею, что это делает.
				r_strip_invisible_during_sceneobject_update 			"1"  //По-умолчанию: false
				fs_async_threads                            			"-1" //По-умолчанию 8
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
				citadel_hud_objective_health_idle_timeout 				"0" // Полоски здоровья босса/таверов исчезают в ту же секунду, как перестают получать урон.
				r_grass_density_mode 									"0" // 0 = Логика расчета плотности полностью отключена. Пропускается проверка при наличии травинок.
				r_grass_alpha_test   									"0" // Пропускает математические вычисления при рендеринге прозрачности для листвы.
				v8_maximum_heap_size_mb 								"512" // (По-умолчанию 512) Удваивает размер используемой памяти пользовательского интерфейса, чтобы предотвратить задержки при сборке мусора процессором.
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
				citadel_npc_ag2_enable               					"0" //отключить ag2 для NPC
				citadel_visibility_queue_rate        					"4"

				 //Благодарность																				                                  \\
				// dacooder    Создатель конфига            													                                   \\
			   // Xeraa		   Помог исправить серьезную проблему с постоянным спамом в консоли и падением частоты кадров в поздней стадии игры.	\\
			  // Boot		   Вклад в ConVar(консольные переменные)           											                    	     \\
			 // Kaiz		   Вклад в ConVar(консольные переменные)                                                                                  \\
			// simcasting 	   Тестирование (бенчмаркинг)																		                       \\
		   // Artemon121       Расшифровал все (консольные переменные) Citadel cvar														                \\
		  // Pidjan            Доработал дальнейшие изменения в gameinfo и позволили нам их интегрировать.                                               \\
		 // Piggy              Вклад в Video.txt и классный стример                                                                                       \\
		// ----------------------------------------- Конец конфига OptiLock -- ver. 4.6 ------------------------------------------------------------------ \\

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
