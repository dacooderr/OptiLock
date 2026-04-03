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
            "bakedlighting" "1" // Enable lightmapping during compile time      
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
        EnvironmentMapFaceSize          256
        EnvironmentMapRenderSize        1024
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
        GpuLightBinnerSunLightFastPath 1
        CSMCascadeResolution 0
        SunLightManagerCount 0
        SunLightManagerCountTools 0
        DefaultShadowTextureWidth 0
        DefaultShadowTextureHeight 0
        DynamicShadowResolution 0

        TransformTextureRowCount    1024
        TransformTextureRowCountToolsMode 6144
        SunLightMaxCascadeSize        4
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
    .      .  . .      . .   .     .  .  .      . .  .  ...  . .        .  .     .    .  .     .   .  .     . .  .       .      .        .      .        .      .        .      .        .      .        .      .        .      .        .      .        .      .        .      .       .     .   .   .   . 
  .    . .        .  .     .   .    .      .  .     ...StS :8S.. ... .        .    .    .   .    .      .  .        . .   . .  .   . .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .  .  .  .   .  .     .    .   .   .   
     .     . .  .       .        .    . .       .  . ;t88@8@@X8 8@..  . . .  .   .   .    .   .    . .   .    . . .     .     .   .         .   .     .     .   .     .     .   .     .     .   .     .     .   .     .     .   .     .     .   .     .     .   .     .     .   .   .  .  .  .        .    .
  .    .          . . .   .  . .   .      . .  . .  ;.88@8S8@@@@8X %t  . . .   .   .   .        .      .    .        .     .    .    . .  .        .     .    .    .     .    .    .     .    .    .     .    .    .     .    .    .     .    .    .     .    .    .     .    .   .            .  .      .  
    .    .  . . .           .    .   .  .     .  ..S 88S@@@@88S@X888X ;8t  .     .       . . .    .  .    .    .  .    .  .  .     .     .   . .  .  .  .  .     .   .  .  .     .   .  .  .     .   .  .  .     .   .  .  .     .   .  .  .     .   .  .  .     .   .  .  .         .  .  .     .  .  .    
  .   .   .        .  . .      .           .    ..888S@8@888X@8@8@@8X8@@S :@t.. .  . .         .        .    .      .   .      .      .    .                 .     .   .     .     .   .     .     .   .     .     .   .     .     .   .     .     .   .     .     .   .     .  .  .     .   .       .    . 
    .   .    .  .         .  .    . . .  .   . . 88@X8X88@8X8@88@@@@@@@8S8X@S 8. .    . .  .    .  .  .    .   . .    .    .     . .    .    .  .  . . .  .    . .       .     . .       .     . .       .     . .       .     . .       .     . .       .     . .       .     .     . .    .  .  .    .    
  .        .      . .  .   .    .       .     . 8X@X8X8@@8@8@88888X8@@XX8XX8SXX t@:.      .  .    .     .    .     .     .   .  .    .    .    .           .        . .    . .      . .    . .      . .    . .      . .    . .      . .    . .      . .    . .      . .    . .   . .      .     .   .    .  
     . .  .   . .        .    .    .  .   . ...8@@@@@8X88@888@8@@@8@8888S@@X@@8X@@8 .88: .    .     . .   .     .    .  .     .    .   .    .    . .  . .    . .  .     .       .  .    .       .  .    .       .  .    .       .  .    .       .  .    .       .  .    .             .  .   .    .   .    .
  .     .   .      . . .    .    .          . 88@@8@8X8@8@@8@8@888X@88X888@888SXX@S@@XS 8t ..   .       .   .  .  .   .    .     .   .   .    .           .         .     .  .        .   .  .        .   .  .        .   .  .        .   .  .        .   .  .        .   .  . .  .        .   .    .   .   
    .          .          .    .   . .  . .. @X@@8@8S8@8@88888888X8X@88@8X8X8 8@8%8 8 8@X  8t .  . .  .      .      .    .   .  .      .   .    .  . .  .   .  . .    . .     .  .  .      .   . .  .      .   . .  .      .   . .  .      .   . .  .      .   . .  .      .       . . .     .   .        . 
  .   .  . .  .  .  .  .    .    .     . .  8@@@888X888X@88X@8@8S8@88@@@@XX@@8X8S@@8X8SX8XXXS %X. . .    . .    .      .   .      . .    .   .            .   .    .      . .     .    . .    .       . .    .     .   . .    .       . .    .     .   . .    .       . .     . .       . .        .  . .   
    .   .    .    .      .    .     .    . X@@@@88S888S8@8S8@@@X8X@88X@88X@@@@8S@@@X@X8S@X@8 8SS 8.   .       .   .  .       . .      .        . . .  . .        .   .  .      .    .       .    . .      .     .    .      .    . .      .     .    .      .    . .      .       .  .      . . .    .     .
  .   .    .    .    . .   .    .  .  . . %SX@888S888X8X@@@8@888@88X888@X@8@@X@88@88S@X8S8 8XX@SSS ;X.. .  .    .   .   . .      .  .   .  . .       .     . .  .     .    .  .  .    .  .     .     .  .   .     .     .  .   .     .  .   .     .     .  .   .     .  .   . .    .    .         .     .   
         .    .    .     .   .   .     . SSX88X@@888X@@8@@@@@8S888X888@@8@8X@88S@@X@@@8 8X8S8SX@X@@SS ;@:.   .    .   .     .  .      .         .  .    .         . .    .         .    .  .     .     .      . .   .    .   .    .       .   . .   .    .   .    .       .     .     .   .  .  .   .     . 
  . .  .    .    .   .     .   .    . . ; 88X@8@888X@@8@8S8S8S@@8S@8@@8@@88@@8S@@@@@@X@8S@X@X8S@8S8SXXSS 8t . .          .       . .     . .  .       .   .  . .       .    . .  .   .       . .   . .   .  .         .         .   . . .             .         .   . . .    .   .  .   .     .   .   . .   
      .   .    .   .   .     .    .  ..::88S8X@888S88@8@XXX8S@@XX8X@@X@@XS@X8S8X8X@@@@8 8X8%8 8SXXX8%8 8 @ ;X. . .  .  .   . .       .  .       . . .   .        .  .    .      .      .  .                .   . . .   .  . .  .           . .  . . .   .  .  .   .        .   .      .    .               .
  .     .    .          . .     .  .. ;.88S@8888@@888X@@@@XX8SX@XX8XX@SSXSX8S8XSXXX8X8%@X@ 8S@X8X8SXXX8 8S8S8 :X: .  .   .     . .    .    . .             . .        .    .  .   . .    .  .  . . .  . .    .       .           . .  .  .            .   .     .    .  .    .    . .    .   .  .  . .  .   
    .      .   . .  . .     .       ..t88S8@. 8888@@X@@@@@@SS@@XX8S@SSXSSXS 8 @SXS@%8 8 @XXSXX8 8 8X8 8 S@X8%X%  @ .  .     .      .     .     .  .  . .  .    . . .    .   .         .      .            .     .  .   . .  . .        .    . . .  .    .   . .    .      .     .      .   .   .       .  . 
  .   .  .   .     .     .    . . . .@88S8X8X888@@88@@@@@@@@@X8%8SSSXSSSSSSX 8 S 8 SSS 8S8X8%XSXXXSXX8 8 8 XXXX8SS 8%. .  .   .  .   .  .   .    .       .   .       .    .    . .  .   .  .    .  . .  .   .        .          .  . .    .          .           .    . .   .     .  .       .   . .  .     
    .   .       .     .    .     . .S88S8X88888@8@@8@8@@88XXXXS8 8@ @X 888888X8S8888S88888X X888X%8 X8 SS@8 8S8 8%8S@ 8;.  .       .      .   .    .  .    .    .  .   .     .        .       .           .   . . .     . . .     .     .    .  . .    .  .  .  .   .     .   . .       . .              .  
  .   .   . .     .     .    . . ..888X8X8888888@888X8@@@X@@XX8S@SX8 88X8S888SSS888X8S8S S88888@X8 8%8XX8SX8 X8XX8 8 X% 8:..  . .    . .    .   .      .      .      .   .  .   . . .    .  .   . .  . .    .       .         . .    .    .         .    .    .   .    .           . .      .  .  . .  .   .
              . .   . .   .     . @@8X8X88888888888@8@@@@@X@@8 @XS@ SX8 S%S8X888X88%88888888S8SSS 888 8 888S888SSXX 8SXXS 8%..    .      .        . .    .  .   . .    .      .        .   .             .     .  .   . .  .       .   .    . .  .    .    .         .   .  . .  .     .  .   .      .   .  
  . .  . .  .     .     .   .  . 8@8@8@88888@888@8X@@@@@@@@@XS8 8 888 %888S888888S8S88 8 888 888 888 SS88  8 @X8XS888XSXXXS .8S..   .  .   .  . .     .    .        .     .      .  .    .   . .  . .  .   .  .              .  .    .   .      .  .    .    .  .  .       .       .    .   .   . .         
      .       .      .       .  SX@@88888888888@8X888@8X8X@X@SSXS8 %S8  88888X88S8888%8888 88SX88888S888X8S88 8X888 8S8%8 8X8 X.t. .               .    .    . .  .   .  .  .  .      .                  .      .  . .  . .    .  .        .  .      .    .    .     . .      . .    .              .  .  . 
  .      . .    .  .   .  . . .; 888@8888888@888@888@@8X@@@XX@SX@ 8 X8888X 8S888888S 8888 88888S@.8888%888S8888XS8@8 8 88@SX8XS8  8t . . .  . .  .   .   .          .        .   . .    .  .  . .  . . .    .    .          .       .  . .       .    .     .    . .     .  .     .   .  . .  .  .    .     
    .  .     .   .   .      . ; 88X888888888888X888@8@@8@@@@XX@SXX 8 8S8X88888% 8@888X8 88@88S88 8@8 8S888888X@S888X8S8@8 8 88S@XS  ;8%.  .        .   .   .  . .      .  .    .     .   .        .       .   .     . . .     .  .    .    . . .   .    . .   .       .   .    .    .        .     .    . . 
  .   .   .    .        . . ..S88X8888888888888888X888@@8@@@X8 @S888 888  88X 888S8 88888S 888 888S X88 888 XXXX 8S8X8S8S8S8888 88X8 S ;;. . . . .          .     . .   .   .     .    .   . .  .    .  .   .   .         . .     .     .        .   .      .   .  .    .    .   .     . .     . .   .      
    .   .   .     . .  .   . 888S8@88888888888888@888888X@@@XX8S@%8  88S%8 8%888 888888% 88X:  88@X88 8S888%   88@  XS8S88X88@88 8 8X888 :@;  .     . .  .     .      .   .   .     .              .      .   .   . .  .      . .   .     .   .    .   .  .          .     .   .   .  .    .       .   .  . 
  .       .   .  .       .  @@8X8@888888888@888888@88@@X8X@@8XS@SX 888888888S88888X88 %88S8 88@ 888 S8X8  S%888 8 8 88SX8 @@8%@88 8 8S8 88S .8;. ..     .  . .   .  .       .   . .   .  .  . . .    . .        .        .  .        . .    .   .    .       . . . .   .  .      .       .   . .     .      
     . .       .    . .  ..: 888X888888888888888888888X@X8@XX8XXSXSX88@888888S%%8S888888XX88 8 8X8888S8X88888X8%S@ 888 8888 %8X@8XS8 8S8 8 8 S 8%  . .         .      . .           .     .       .      .  .      . . .       .  .      .    .   .     .  .         .      . .     .  .   .     .      . . 
  .      .  .     .    . ..S88@888888888888888888888@@888@@@@X@X8S8 S888:8888888X S88S8X8 X8 @@S%8X8X88 X8 8S8 8X8 8XXSS@ S88%8 8 888S8 8 8888@S %8;  . .  .     . .      .  . .  .    .     .  .   .  .     . .  .      . . .     .  .    .        .    .    .  .     . .      .  .     .    .   . .  .    
    .  .     .  .    .  ..X88@888;X88888888888888888888@@88@8X@SXSS888X88888 8%88 S 888SS8%@8XS 8 8@@8XS  8:8X@ 8 S@8 88S88 8888888XXX 8 8@8:8.8S8 S 88: . . .       .  .   .        .   . .      .       .      .   .         . .      .    .  .     .    .      . .      .  .      . .    .   .     .   . 
  .      . .      .    . X88X8888X88888888888888888888X888X8@X@8 8 88 8888X8@ S8S8S888S8@S8S8SX8@8XXX8SS88SS 8X8@8XS 8 8X%88888S8  888S%8@88X8X8 88@SS  St  .  .  .       .    . . .   .     . .     .  .   .  .       .  .  .      . .   .   .   .  .  .    . .      .  .       .        .        .    .   
    . .       . .   ..  ; 8@888888888888888888888888@@88@X8@@@XSXX8 8X8S 888 88  888%8888SX88@XX @8@@S@ %888X@8XXX8XX @S@8:8%88X888X8 8 8@88 S8888@  8X8 X 8@: . . . . .     .            .      .  .     .       . .   .       .  .    .   .   .   .     .      .  .      . . .   . .  .    . .  .  .     .
  .     .  .       . ..;S888@888888888888888888@888@8@88X88@@@@X8 @8.88@8S8%88SX8X8888@8S8XSS  888888XXX8:8@8S8@8XX8 @ 8X@8 X8X%88X8S% 8S8SSS88 X88888S 88@SS  8@:  .    .  .   .  . .  .   .  .      . .    . .      .    .  .       .           .    .    .  .      . .        .        .     .      .    
     .       .  .   . .:88X88888888888888888888@8X@@88XX8X@@@X@XS8 8X 8X88@888XXS88@S X%8X88XX888S@@8@XS@8S@@8@@8@XXSSX@@SSSS8S8 SS 88888:8S88S8 8XX888% 8 SSXXS  8X  . .     .        .         . .       .     .  .    .   .   .  .    . .  .      .   .    .   .       .  .     .  . .   .      .     .  
  .    . . .      . . 888X88888888@88888888888@8@8@88@@@X@@@@XX@%XX888:88888X@XS S8888% 88@8@X8S8  8X8X8S@XS8X8S@8@@@8X@@@X8 8SS888888@8. 88X88 888 8 X8888 888 8 X  88t  .. .   .  .    . . .       .  .    .    .    .   .   .   .   .     .  . .    .   .    .   .  .       .             . .    . .   . 
    .        . .   . 88@@88888888888888888888@888@8@@8@8@@@@8X8SXX8XS8 8 %8  8X%88X S8S X888@88%SS8@8XX@X@@SX88888@88@888@XXS888 8.8 X88888SS8 888888X888 888 888S8 8SS  t8@; . .    .         .  .    .  .    .     .   .       .   .    .         .    .   .    .     .  .  .  .  . .  . .     .      .   
  .   .  .      ..  :S8888888888888888888888888888@888@@@@@@X8SXXS%8 SS8S8@X8888S88888@8%@8@@X8X8S@@8@@@@X8S@@888888888SS@@X8:@SXS8 888X 888  888S8 8888S88 S8 888%888@X@XS S.S  ..  . . .  .   .   .       .   .  .        . .         .   .  .  .   .        .    . .     .     .           .   .  .     .
    .      .  .   ..%88@88888888888888888888888888X@@@@@@@@@XX@SXX 888888S@@;8X 8S8X8X t8tXXS8 %@8888@@8@XXS8@8@88888888X@@XX88S8%XSX8888X8 8888 %88S  88SS88%8888888 %8S8 8. S 88t. .        .       .  .    .      . .  .     .  .  .   .     .   .   .  . .   .       .     .    .  . .  .   .      .  . 
  .    . .   .  .. 888X8888888888888888888888888@@@888@8@@@@X8S8SX8SS8SS88%8@X888888888S@8@S 888@8888@@888XX@88888@88888@@8@8XX8X8XS8 8 XX@%8S8 888%8888888888X888S8888XSSXS8 8@8S  t8S: . ..    . .    .  .    . .      .   .    .     .    .    .                .  .   .  .   .    .    .       . .      
     .     .    . ;X@@88888888888888888@88888@888@8888@8@88XXS@XXXX888SS X8S@8X888@SS8@S%@8 888 8@8@8888@8XXX8888888%888@@@88@@@8X8 8 XXX8 8S88888 8888S8S 88888.8XX8 88888%888 8 8 8 X 8X  ....    .        .      .  .   .   .    . .    .   .     . . . .  . .    .  .      .   .     .   . .  .     .  .
  .    .      . . ;88@88888888888888888888888888@8@8@888@@@@@@X8 8 S8XX8 X 8@@888888 X8 88XS8888888888888@@@S8888.888%S; 888@88S@@@@@8X8 @8 8 888 888888X888@SS 888X8SSS888888@8S8S888@8 X 88%  . .   . .  .   .  .              .       .   .   .                .        . .      .  .             .   .  
    .    .  .  . 88@@8888888888888888888888888888X8@88@8888@8SSXXS8 @8%%8SX X  888S888@ 8@SSS88 .X88%8888X@@X8888%8@8888888@888888@@X8S88S88@8X888X888S88888888888S88888X8S 888@ 8S8X8SXXSSSS S 8X:. . .     .      . . . .  . .   .  .        .   . .  .  . .  .   .  .  .     . .      . .  . .  .   .    
  .   .   .     ;@88888888888888888888888@8@88888@888888@@8@@@SSX%SSX88SS8%S8888X8 88S@888 888 888@.8%@8t 88X@888888@:t88888888888888X8X88@88@8 88 8X%8 88XS 88888888 8 S 888S888 8X8X8 888S8X 8S% tX.  . .    . .          .    .      . . .                  .      .      .       . .          .       . 
    .   .   ... ;88888888888888888888888@888@888888@88888@@@8X@ 8 8 888@X@8X8 888S88   88S 888X8%@@;88X@8:X8X8888X88888@8%8S88888888S@88S@8SXXX88 888 888XX88S   S888X888S88S888 8S8S88888X888X@SSSS% :8X;. . .   . .  .  .    .    . .       .  . .  . . .  .   . .    .  .   .  .       . .  .    . . .   
  .          . 888888888888888888888t%888888888888@8@8888X8X8@X @X 8 S88XS8 S88S88 8 8S8X8888SX88;.88888@@888XS88.S8t88.%S88%888888@888X8@@8@8SX8 S8S88888 SS88888S X88SS8888 X88%8%888S8 SSSX88888%@XXXS .t88t: ...         .    .      .  .   .                    .    .     .   .  .         .         .
     . .  . . ;X8@8888888888888t8888@:8888888888888888888@8SX8@X@8XX8 888S@  S8888 8@8@  @8  8SSX@8S8S8X8;S8888S8888:%:8tS8@888S88888888888X8@8S8888XX8@8@8 888 8X888%8888%  888 %8888 888X8 S 8X8 8 8%8%8XXX%  S@:  . . . .    .    .        .    . .  .  . . .  .    .    . .      .   .  . .    .  .  .  
  .     .   . :8888888888888888S@88.X@8888888888888888888XS8S@8 S8@XXS .X88X8888SS88XX8@8 S88 8888888.88@8t8%888X8888%8;@8888 X8;S888%8888@888@88S@S8%SX8@XXXX8S 88X@8 888X888888@S 88888S8S88@ XXXS8S8 8 8SXXXXS S t8X:  . .. .   .   . . .     .        .         .    .       . .            .           
    .     .  888888888888888t88888888888;888888888888888@8S@S888  8@8@8.;XX@X888888SX88@8 888X88@888888%8888.X888S8888.8.@88 8t8@8888888:@;X888 8SX@X8SXX@SXX8%8% 8%8 888 88888 88888 8 888S88S8 888 %88 888 8 8 XSSSXS  %88%:   .   .       .  .   . . .    .  . .   .    .  .       . . .  .    . . . . . 
  .   . . . t@888888t@8;88%X8:@8;S;S8:@8@8888888@888@8@@8S@88@8XXX 888@8 tSXS8 88 S8888S8 888X@8888@ 8888888X88888@888@  88 %:S88X8t8888888;@888S8X8X8@@@X@X8 888 XS88SS88SS 888S8@@888888%888 88888888S8S8X8 888S8 S8 8 S% X ;8S@8%;. .. .   .   .      . .  .     .   .       .  .          .             
    .   . . ;88888888:@8888:t8;X888:S888888888888@88888@8@S8888@S8%@:S8@8   88@8888888.8@88@8@X88@88S %888888.8888888888;X8888 X888 888:8t8888;S@X@@8@888XXSX8S888S8S88 SSSS%88S888 X888X888S 88% S 888S888S8888 88888XSS 8 XXSS X X  S88: ..        .  . . . .. .    .   . . .      .  .  .    . .  .  .  .
  .    . . @88888.@888:@8:S8%S8t8:%8tX888S88S88888t888@X8@8XX88@8 8SS888 t88X8888888S8 8 88XSXX@8@@@X88S888%8%8@.;8%88@88 t88t8.%888SX88t%88@88S8t88@88@@88X8 8XX@XX@S88.88@ 8 88XS8X888888S888888@888 888X8S8S888 8 8 88888 8 8XSXS8SXXS ;X%:. . . .  . t8SttS8t ..            . .    .    .  .       .    
     .  . ;@888@888S888t@8%X8%S888%X8t8888t@888;88@8888S888X@888 8X8 %:S8.S   S 888 888 8 888S88@8888888@X@88888@8X88 8S88888@.S88888X88888888%888t@8@8@888@X8%8@@88X8 88 8:S 888 8X888 8S8X8SS888S8S8888S8  888888S8888888 88@S888X88 @8XX   tS88%:..:;8  @SXXSS8;.  . .  .  .     .    .        . .    .  
  .     . t888@.@%88%888;X8S88S8:@8%X8t888888SX8%88888 S 88@S8888X@X8  88@8S  8888S888  %8888@SXX8X8St8Xt:t  t88 @8@8t88S8%8X88.S88XS8X88888@8@8888%888@888@@@8@888 8S8 8 SX8888 8:8X8 8X8 88888% 888X8  88888 S8S88888 %S8888X8S8S8SX8 @X8S8 8 @ S  % S8@88XXSXXX 8;.           .    .    . .  .     .    .
    . . .S88.888XSX88%8t;888S8888t@8S88t8;8888%%888S88@8X8S @XS@88 @88  X88 %8S8X SX8%8888888@@@X@ 8:.:. ..  .;%;.S8 8t888888X8%8X888.8888@:888S8%8888888888888888@8X8S8X8S8 888S 8 XXX 8 @S8S8S88888 88888 888S@888888888SS888 S @@8 X8@8 8888888 @@X@X@X888@X@@8SX 8S. . . .  .  .    .      .   .    .   
  .    . %888%8S888%888888%8888:@8S88t@888;888888SX8%@X8@ 88@8SS:S8 8@8  @8S88 88X8888@888 S8@ @S %:.           . .:;   8X8.%88888t88X88888@:;8888t88%88@8888;S88888@@8S8X8 8 8S8 S@X8 8XS88X8S888 8S8888 S88  88@ 88;8S88888 S888%XS888 S888888X @XXSXSS@X8;@88XX8S8. 8%  .  .      .    .  .   .   .    . 
     .  .X8t88888t88;888S8888X88S88tX8S8t8888t8888t888@88SS8@88X8888 XX8 S 8 X8 8@ 8888 S 888.@S:;.   .  .  .    .     ;:@ @8@8X8S8888@88%888888%88S8888S8S@8888888888@8@8X@%8@SX8X8 @8%8X8 8X8 88@8 888S8S88888 8888  888888888 88 S88S8 8SS888XSSS8 8S8X@X8;88@@X888 8  8S:  . . .   .    .      .   .    
  .   . %@88X8@;88X888.88@8888888X88X888888888tX8X8;@8888XS888SSX8@88S X8%8888 8 8X 8SS8 8888 88%.  .     .   .   .   . ..;:t8 8S888t88888t888888888X8888X88888tXtX;:88888888X@@8%8S8%X@S8 8S8@88X 8888888888888S8 88888888 888888 88 8  88%8 S88 888 %8SS@@8@t888X8S888S 8  :8S..  .    .     .         .  
   .    S@888%8888;S88888%8SS88%88X88%8888t8tS88@88@8888888@8@8 X 88@X8  8@@X88S8X%%88888.888@%@:.    . .      .    .     ..... :St88%8S8X888:S88888.;8S888888t.8888;@888888888@X@X8 8S8 @S@8 8S@@8 88%8X8 S  %88888S8S 888888 8SS8S888S88%88888888888 8S8 888@888XX8 8888;8%XX% 8. .  .   .  .  .  . .    .
     . .: 8888888;88@;8:8X888X88@88S888.888888888@8t%88@@@8S8@X8 8@ 888S8XS@S888S88888%SSSS8 8t:.. .       . .   .    .  .      .  t @88X888;@88888S8888X88 88888:88888S8%8t8888888X@@S88S8X@X@@XXS8 888888S888S 8S8888888888%88@S888 888@8S8X8X8 88S888S 8SX8X88888S@ 888% 8.SSXS ;S..      .    .     .   
 .      . :8 8888888888%8888.8@88S888 888t8;t8%X888888%@88@8XX8@X 88@S8 8  S88SXS% 8 X88@ 88 @ . .   .  .      .   .   .   .      ..;.%8 8;88X8.t888@.%888X8888888X8t8888@88;8888%%8@888SXX8S@@@@8 8 XS 8888XSS88888 8S888S%S888888888888X8 888 88 888 %888%SS@SX@888 88888888 888@SX 8X..     .     .   .  
   . .    .;: .8X8%88888@88t888888SX8tX88888.t8X8@8tX@S888@XXX8@X S8 SX888@8S888%88S888 %SS8 88..  .      .  .       .       .      ...;. X8888%X88888888@t.888888888X8t@8888;888888888@88@XXX@@X@X88 8X8 888 S88SS8888 8888888 888888 S888888888888888888XS8S %SX88@@S888%888S 88XXX@8S8:..     .  .  .   .
  .       .  ..;:t@ 888:8X88X88@S8888888:8;%8888888@888@8X8X8XStXX 88X8S8 8X%XS88S888S 8888X@ %  .   .  .       . .     . .    .   . .     ;%8 S888X8 %888X88.;@X888888888:888%@%8:X88888888@@@888888XS8XXX888SS888 8888XSX888 8888 88888 88888888888888 888%8S8@888tS8S88888888 8X88 8SX 8:..              
     . .      .  ..; %S;88888X888S88%888888;S888888XX88S@88S@@@S88X 8XS8@%8888%8S SSS8%S888 88..   .       .  .     .       .    .    .  ..  .:: t; 8888888888888S8X88tS;8@S8X@88%;888888t@888888@@@@88X8888X8SS8X 8S@X8 8  888888888 888888 8888888888 888888888XX@8; 8S 88  888 888S88X@X 8...  .  .  . . 
  .      .  .   .   .. %888@888888t@888t8;S888888888:X8@8@8@8@@@@8X8 S@@88XX  888S8 %S88%8 X8t   .    .  .       .    .  .    .    .    .       ...: 888t8S888S888.88@88%88.%88;X888S8888888888888@8X@@8@@XS8 8 8888XS8X8X8 888S 8X88@8888X88X8SS888888888S8888  SX888.S888888888S88@8SS@SX@@..     .       
    .   .     .        .X@88@888.88S888888t8;t8888t888888888@@SX@8XS88XX8XS8888S8S8@8X 8X88@%:.     .      .  .    .       .    .    .     .  .  ...:;. 8 888@8X888888%88888 %88@8t88888S8888888888@888X8@8X@8%8 S8888 8 S8888S8888 SX8S 8%S 8 8S8S8 888S888XS8888XS8888S8%888888S888 SX8X8 XS S. .   .  .  
  .   .   . .    . .    :; 88S88%88888;8%8888888888t@888888X8X@88 88X8% @8X 8S 8%8X 8 %  8XX. . . .    .        .    . .     .    .   .  .   .       . .::;%8. @8.t88888 8.tX8X8888StS888t888tX8S8888888@@@8888S8%8@8 8 8X8 8@8 8S 88@.S888S888888 8888S888888 8X8 8X888@@8 %88X8888S 8888S8 8 S8: .    .  .
    .          .      . ..t 88%88X88888@888.888t8;%88888888@8@X8S8.88X8 @88X88S SS88@888 8@.         .   .  . .    .     .     .    .   .      .  .     .  .:.: @;S88%888S8888888Xt888X8S88@88%88;88888888@88888@SS8 8 8S8S8SX S 8 S8X888S 8 S8S 88S8 %8S888888S8SS@X8.%88X8888888 88@  8888X%8 @@ :        
  .    .  .  .    .     ...t 88t88X8t8S8888888888888X888S888X8XX@X8X@@88 88SXX88 8 @ 8  88:  .  .  .             .     .   .     .        . .    .  . .  . . . . :.S8%X8%888@88S88X;8888X88;888t@8;88S888888888tX8XXX%8S8S@X8X888888@XX8@8@XX%%888S888%888.888S8@8X8@@@8%X@XS88888888S888SS88 88S %. .   .  
     .          .   . .    .:888X888888S;S8%S88;8%X88:t888888X88@SXX@XSX8S@X@8 %S X%S S8X: .          . . .  .      .    .  . . .   . .       .                 . ... :  @S 8X8:S%8%8S88.%88%888%88S8888888@8888 X8@88X@@88XX8X@8@888XSS8S@S8S@SX 88@%8X8 8%8 S8 8@@@88@8:S8888888 88888888 88X%8 8;.  .   .
  .    .  . .     .      .  ;;:88888%t8888S%888@88tS8@88888:X888@8X8 8@SSS@8XS8 8 S88S8:.   . .. .. . . . . . .. .. . ..  .  . . . . . .. .. . . .. .. . .  . .         ...:  8 88S8 8@8888888888@88%8888;@8@8:X8888888@@888@88@8X8X8 8  8%%88X8 XS8 888 888888S8S88@@@;888X8888 888 888S888S888%88S        
   .          .     .  .  . .. S88;@8X8@8%S88SX8@888888X888888X@8@XXXX88@8X @SS@ 88@88.. . . . .  . . .  . . .  . . .. . . .. ............ ......... .. . ..   . .. ..  . . .:t;tS8 @888.888888:8:S8:S8X88%8 88@8X88.%888888@888XXS8S@S8 X88 8@8@X@@@8888 X88X8 8S8 8@@8S;8@SX88888X8%%8888 SX@%8X :. .  .  
    . . . . .  .. . . . .  .  ::@S88%888@88888t8.t8X8%8888S88888@888S@X8@X8@@S@8X8S8S.. . . . . . . . ....................:.:::.:::::::::::::::::::::::::::.:::.:.:.:........ ...;;:::;St XS888888 8  8X8;8@ 8%.S8X888888888888X8@XS8S@ X8 X8S8S8X88@8  8XS8X888 XX8X@@88X88@X@S 8888888888888888X8X        
 .     . . . .  . . . .  . .. . .:88 ;8%;t8S888t888888tS888%8888@@888X8X88@@@8@8X8S;. . . . .  . . ... .. ...........:.:::::::::;:;:;;:;;;;;;;;;;;;;;;;;;;;;;;:;;;:;:;:::::::::::...:.;:::  St8@ 8.8%8t%888 XS88.8.:88888%8888@888@8 @@8 X@SSS@8X8 8XS888S8@8S8@8 @SX@@88.88. @888 8 88S8  888X %88X.  .  . 
  . .. . .  . . . . . ... . ....::;:888888S88.t.88%8%88t:888888@8@888888S@@X@8% @t... . . . . . . . ... .........:.......:.:::::;;:;:;;;;;;;;;;;;;t;;;t;tttt;t;;t;t;t;t;t;;;;;;;;;t;;;;:;::.:;. @8 X888X 888%;t@;X888@8.88%888t8888X8S8X8 88 8S8X@@8X S8888XX88888@8@8888S.8@8S8%S88888 8888 X8888:.. .     
   . . .  .. ..........:.::::::;:;t%8 :@:XS8X888X8 %X%8888%888%88888@8@88XXXStS:::.... . .        .   .  . . ... ................:.:.::.:::::;:;;;:;;;;;;;;;;;t;ttttttttttt%t%t%t%%t%t%%t%tttttt%SSt:.;S%: 8X%8;8:8;8:@.Xt.8888X8S8888%8@8X@88@8@@XS. 8SXSX8@8@888@@8@88@888.S@S88 888X8 888888 88.     .   
   . .  ... . .....:::::;:;;;tttt%%%X%% %t@%8X88%X8888t8t.88888:S88@88X@8@  Stt:::... .   .  .  .   .   .                      .  . .  . ........:.:.:.::::;;;;;:;;;;t;ttttt%%%%%S%SSSSSSSSSSSSS%SS%%SS%S%%: S8 8.;8.t:8%8X8X.8 8:S8%888%88888888XX 88X8SS@8@@88888888888t8 888@S888%@XS88X S8888S..  .   . 
 .    .. . .......:.::;:;;;ttt%%SSXX@888t :S888%8.t8%8888888%S88tX88888t.888%t;;::..... . .           .     .   .     .     .         .      . .  . .. .........:::::;;:;t;tt%%%%SSSXXXXXX@@@@@@8@@8@@88@@@@@8@@8888  88888:.@X8@t:8:X;88S888888X88@@8888XXX888X888S8S88X :S.88@SS8X8S888S8SS 888:.     .   
   .    .   .   ......::::;;;tt%%SX@8888%%8XtS8X8X88.t8S88 88S88%88  :8888Xt;;:::.:...  .   .  .  .       .   .   . .   . .   .  .  .   . .               . . .   .. . ....:.:::;;;ttt%%SSSXXX@@@8888888888X8X8S88tS%8:88%8 ttS @8888 :@..%88.888t@8888%888888888t@8:88::S.8%8t 8XX8@88S@  %8 88:  . .      
    . .   .   .  . . .  ....:::;;;t%SX8888XXS%88t:X@888888X88  ;;%8888X%t;;::::..... .             .  .  .                  .               .  .  .  .  .       .         .   . ... ...:::;;t;ttt%%%SSXX88888888%88S8;8 tt:;::...    .:t t%8@88888888888X8@888888 @:@ ;8::@t888888S8S8@8 8  8@:. .     .  . 
 .          .         .    . .......::;ttt%%SXXX@8@888888888888SSS@X%:::::....... .  .  . .  .  .           .  .  .  . .  .    . . . . .  .                .  .     .  .    .         .  ...........:.:::;;tt%SSS@@X8@8@8888888S8%8;S%%ttttt;;. :. :%  ;S t;t :@@8@@%88888 888888S8%888S 888t.     .    .   
   .  . .      .  .     .              . . ......:::::;t;;;;::..:...... . . .      .          .   . .  .  .     .       .    .               .  .  .  .  .       .       .     .   .                 .         . . .......::;t;;;;t;:;;;;;tttttt%%%%SSSSS@@@888888;%tt:.  ;;%X88@  S :8Xt%;    . .   .      
          .  .   .  .     .      . . .  . . . . ... ...... ... . . . . .       . .    .  . .            .    .    . .     .    .  .  .  . .      .     .    .  .   .  .    .     .   .  .      .  .    . . . .                  .       .  . .. . .  . . ...::;t%%;tt%%S@@888@XSS@S:;::. : . .         .  . 
 . . .  .   .  .     . .    .  .        . .  .     . .   .       .  .    . .        .  .     .  .  . .     .   .      .     .       .       . .     .     .             .    .     .      . .       .           .  .  .  . .  .   .   .            .    .         . .... ......... .     .     .  . .       
          .       .      .    .    .  .    .   .      .    . .        .      . .  .       .      .     .     .   .  .   . .   . . .   .  .      . .   .      .  . . .     .    .      .       . .  .   .   .  .                     .    .  . .  .    .   . .  .   .                 .    .  .        .  .  
  .  . .     .  .   .  .   .     .      .    .   .  .   .      .  .  .  .  .        .  .     .       .   .        .   .     .          .   .  .     .   .  .          .     .   .  .    .  .             .      . . .  .  .  .  .      .       .    .    .    .  .     .  .   .   .    .   .    .  .        
          //CREDITS																				       \\
         // dacooder     Mod and Github Manager, responsible for tutorials and documentation.           \\

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

        "fps_max"       "400"
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
