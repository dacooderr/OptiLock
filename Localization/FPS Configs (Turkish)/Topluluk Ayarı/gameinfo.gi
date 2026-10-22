//										   ____        __  _ __               __  													\\
//										  / __ \____  / /_(_) /   ____  _____/ /__													\\
//										 / / / / __ \/ __/ / /   / __ \/ ___/ //_/													\\
//										/ /_/ / /_/ / /_/ / /___/ /_/ / /__/ ,<   													\\
//										\____/ .___/\__/_/_____/\____/\___/_/|_|  													\\
//											/_/   																		            \\
//										---------------------------------------- ver. 5.9 							                \\
//																																    \\
//						Bu ayar işinize yaradıysa bağış yapabilir veya					\\
//										YouTube ve Twitch kanallarıma göz atabilirsiniz! -dacooderr													\\
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
        // Bu dosyayı yükleyen kod burada birkaç işlemi otomatik olarak yapar:
        //
        // 1. Her "Game" arama yolu için <dir>\bin altında bir "GameBin" yolu ekler.
        // 2. Her "Game" yolunun önüne _<language> son ekli başka bir "Game" yolu ekler.
        //    Örneğin Fransızca bir sistemde c:\hl2\cstrike için c:\hl2\cstrike_french yolu eklenir.
        // 3. "Mod" anahtarı yoksa ilk "Game" yoluna "MOD" adlı bir arama yolu ekler.
        // 4. "Write" anahtarı yoksa ilk "Game" yoluna "DEFAULT_WRITE_PATH" adlı bir arama yolu ekler.
        //

        //
        // Arama yolları exe klasörüne göreli olarak belirlenir: \..\
        //



// Deadlock Mod Manager - Başlangıç

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
// Deadlock Mod Manager - Bitiş
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

			dev ToolsVis // Tüm gölgelendiriciler için görselleştirme modları (yalnızca ışık, yalnızca normal haritalar vb.)
			dev ToolsWireframe // Ayrı bir mod yerine yukarıdaki ToolsVis modunu kullanmalıdır\

			tools ToolsUtil // Başlangıç ızgarası gibi moddan bağımsız araç sahne nesnelerini işlemek için kullanılır
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
            // CQ tam olarak kararlı hâle gelene dek yapay titreşim devre dışı
            FakeReorderPct   "0"
            FakeReorderDelay "0"
            FakeJitter       "off"
        }

		"SkipRedundantChangeCallbacks"	"1"
	}

    RenderSystem
    {
        // CS2 kaynaklı
        AllowPartialMipChainImmediateTexLoads "1"
        UseHardwareGammaRamp                  "0" // Tam ekran gama değeri son işlemede kontrol edilir
        // CS2 kaynaklı bölümün sonu

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
		PauseOnCtrlConsole 0 // Src2, CTRL ve konsol tuşuna basılı tutulunca 'setpause' uygular; Deadlock için devre dışı bırakılır.
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
		"ToolsDir"	"../sdktools"	// NOT: Varsayılan Tools yolu, mod yoluna görelidir.
	}

	pulse
	{
		"pulse_enabled"					"1"
	}

	Hammer
	{
		"fgd"					"citadel.fgd"	// NOT: Bu yol 'game' yoluna görelidir.
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
		// Koddaki varsayılan derleyicileri geçersiz kılar; hangi harita derleme adımlarının
		// belirli bir derleyici seçilmemiş haritada kaynak derleyici çalışınca yürütüleceğini
		// ve Hammer derleme penceresinde hangi derleyicilerin görüneceğini belirler.
		DefaultMapBuilders
		{
			"bakedlighting"	"0"	// Derleme sırasında ışık haritası oluşturmayı etkinleştir
			"envmap"	"0" // Derleme sorunu nedeniyle hata verdiği ve çalışmadığı için devre dışı
			"nav"		"1"	// Gezinme ağı verisi oluştur
			"sareverb"      "0" // Steam Audio yankısını önceden hesapla
			"sapaths"	"0" // Steam Audio yol verisini önceden hesapla
			"sacustomdata"	"1"	// Steam Audio özel verisini önceden hesapla
		}

		// Oyuna özgü adımlar, harita derlendikten sonra burada listelendikleri sırayla çalışır
		GameSpecificPostMapBuildSteps
		{
			"pve_nav_cache"	"1"	// PVE yöneticilerinin nesne oluşturduğu noktaları önceden hesapla
		}

		MeshCompiler
		{
			OptimizeForMeshlets 1
			TrianglesPerMeshlet 32	// Şu anda geçerli en yüksek değer 126
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
			MinimumVolumePerClusteredMesh       "8192"       // Yaklaşık 20x20x20 küp
			MaxPrecomputedVisClusterMembership  "96"
			MaxCullingBoundsGroups              "128"
			UseAggregateInstances				"1"
			AggregateInstancingMeshlets			"1"
			BakePropsWithExtraVertexStreams		"1"
			MergeTranslucents					"1"

			// Sis için önceden hesaplanmış statik gölge haritaları
			BakePrecomputedShadows				"0"
			BakePrecomputedShadowsForDirectionalLights "0"
			BakePrecomputedDepthPyramids		"0"
			PrecomputedShadowmapAtlas			"0" // Önceden hesaplanan gölgelerin bindless olmadan (dx11) çalışması için
			PrecomputedShadowmapAtlasBorder		"0"
			PrecomputedShadowmapResolutionDefault "0" // SceneSystem/FogCachedShadowTileSizeTools ile eşleşmelidir
		}

		BakedLighting
		{
			Version 5
			ImportanceVolumeTransitionRegion 100            // Yüksek çözünürlüklü haritalardan düşük çözünürlüklülere geçiş uzaklığı
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
			LightmapGutterSize 0 // Bikübik filtreleme için
			UseStaticLightProbes 0
			LPVAtlas 1
		}

		SteamAudio
		{
			ReverbDefaults
			{
				GridGenerationType	"0"						// 0: Otomatik, her yerde; 1: Otomatik, Probe Generation Volume kullan; 2: Elle
				FilterUsingVolumes	"1"						// Probe Exclusion Volumes ile filtrele (mantıksal değer)
				FilterUsingNavMesh	"0"						// NavMesh ile filtrele
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: temizle; 1: elle; 2: otomatik
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
				GridGenerationType	"0"						// 0: Otomatik, her yerde; 1: Otomatik, Probe Generation Volume kullan; 2: Elle
				FilterUsingVolumes	"1"						// Probe Exclusion Volumes ile filtrele (mantıksal değer)
				FilterUsingNavMesh	"0"						// NavMesh ile filtrele
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: temizle; 1: elle; 2: otomatik
				NumVisSamples		"1"
				ProbeVisRadius		"0"
				ProbeVisThreshold	"0.1"
				ProbeVisPathRange	"1000.0"
			}
			CustomDataDefaults
			{
				GridGenerationType	"0"						// 0: Otomatik, her yerde; 1: Otomatik, Probe Generation Volume kullan; 2: Elle
				FilterUsingVolumes	"1"						// Probe Exclusion Volumes ile filtrele (mantıksal değer)
				FilterUsingNavMesh	"1"						// NavMesh ile filtrele
				GridSpacing		"6"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: temizle; 1: elle; 2: otomatik
				BakeOcclusion		"0"						// 0: Kapalı; 1: Açık
				BakeDimensions		"0"						// 0: Kapalı; 1: Açık
				BakeMaterials		"0"						// 0: Kapalı; 1: Açık
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
		// Küp haritaları ayrı ayrı değil, küp dizisi olarak oluştur.
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
		FogCachedShadowTileSizeTools 0 // WorldRendererBuilder/PrecomputedShadowmapResolutionDefault ile eşleşmelidir
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


        // CS2 kaynaklı
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

		// Hull tanımları scripts/nav_hulls.vdata dosyasındadır
		// Ön ayar tanımları scripts/nav_hulls_presets.vdata dosyasındadır
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
						   // ----------------------- OptiLock -- ver. 5.9  ---------------------- \\
							   //        OptiLock: https://gamebanana.com/mods/690233          \\
							  //         QOL Lite: https://gamebanana.com/mods/690233           \\
							 //     İndirilen adres: https://github.com/dacooderr/OptiLock       \\
							//      Kurulum videosu: https://www.youtube.com/watch?v=Kpoet2ebl70         \\
						   //	      	   Discord: https://discord.gg/UxjsJB5Rp5				   \\
						  //																	    \\
						 //        Teşekkür amacıyla bağış yapmak isterseniz          \\
						//                 https://streamlabs.com/dacooderr/tip                       \\

	// --Dış çizgiler--
	citadel_trooper_glow_disabled                           "1"  // 1 = Dost/düşman minyonlarının parlamasını kapatır.                          [def: "0"]
	citadel_boss_glow_disabled                              "1"  // Boss ve walker parlama/vurgulama efektini kapatır.                  [def: "0]
	citadel_trooper_friendly_glow_disabled                  "1"
	r_citadel_glow_health_bars                              "false"
	citadel_player_outline_enemies                          "true"
	citadel_trooper_outline_enabled                         "false"

	// --Görüş alanı--
	r_aspectratio                                           "2.15"  // 1.75=80fov | 2.15=90fov | 2.49=100fov      [def: "0"]
	citadel_camera_hero_fov                                 "100"  // Kamera bir kahramanı takip ederken görüş alanı açısı.     [def: "90"]

	// --Arayüz--
	panorama_allow_transitions								"false"
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
	citadel_in_world_item_panel_dpi                         "0.75"
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

	// --Çizim uzaklığı/ayıklama--
	r_farz													"7000"
	r_mapextents											"100"
	r_nearz													"10"
	r_size_cull_threshold 									"0.8"
	r_size_cull_threshold_fade								"100"
	r_haircull_percent                  					"100"
	r_propsmaxdist											"600"
	sc_instanced_mesh_size_cull_bias						"5"
	sv_pvs_max_distance										"4000"
	lb_csm_override_staticgeo_cascades                      "true"
	lb_csm_override_staticgeo_cascades_value                "1"
	cl_enable_eye_occlusion									"true"
	sc_fade_distance_scale_override							"0.001"
	phys_cull_internal_mesh_contacts						"true"

	// --Işıklandırma--
	mat_colorcorrection										"false"
	sc_disable_baked_lighting                               "true"
	lb_sun_csm_size_cull_threshold_texels                   "30"
	lb_csm_draw_alpha_tested                                "false"
	lb_csm_draw_translucent                                 "false"
    cl_retire_low_priority_lights               			"1"
    lb_cubemap_normalization_max                			"1"
    lb_cubemap_normalization_roughness_begin    			"0.01"
    r_arealights                                			"false"
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
    sc_cache_envmap_lpv_lookup                  			"true"
    thumper_use_plane_reflection                			"false"

	//--Dokular--
	sc_screen_size_lod_scale_override						"0.001"
    mat_set_shader_quality           						"0"
    r_texture_budget_dynamic         						"1"
    r_texture_budget_threshold       						"0.85"
    r_texture_budget_update_period   						"0.5"
    r_texture_pool_reduce_rate       						"256"
    r_texture_stream_max_resolution  						"1"
    r_texturefilteringquality        						"0"
	r_citadel_antialiasing									"0"
	r_texture_nonstreaming_load                             "1"
	r_texture_stream_throttle_count_over_budget             "0"

	// --Gölgeler--
	lb_dynamic_shadow_penumbra                             	"true"
    lb_dynamic_shadow_resolution                           	"true"
    lb_dynamic_shadow_resolution_base                      	"8"
    lb_dynamic_shadow_resolution_quantization              	"8"
	lb_dynamic_shadow_resolution_base_cmp_shadowmapsize     "true"
    lb_enable_shadow_casting                               	"false"
    lb_precomputed_shadowmap_enable                        	"false"
    lb_ssss_samples                                        	"0"
    lb_sun_csm_size_cull_threshold_texels                  	"30"
	lb_csm_receiver_plane_depth_bias                       	"0.00001"
    lb_csm_receiver_plane_depth_bias_transmissive_backface 	"0.00001"
    lb_barnlight_shadow_use_precomputed_vis                	"0"
    lb_barnlight_shadowmap_scale                           	"0.001"
    lb_csm_cascade_size_override                           	"0.001"
    lb_csm_cross_fade_override                             	"0"
    lb_csm_distance_fade_override                          	"0"
    lb_csm_draw_alpha_tested                               	"false"
	csm_max_num_cascades_override							"0"
	csm_max_shadow_dist_override							"0"
	lb_csm_override_bulb_radius								"0"
	lb_cubemap_normalization_max							"0.001"
	lb_shadow_texture_height_override						"0"
	lb_shadow_texture_width_override						"0"
	r_citadel_distancefield_shadows							"false"
	r_citadel_drop_shadow_update_frequency					"0"
	r_citadel_shadowdb										"0"
	r_citadel_sun_shadow_slope_scale_depth_bias				"0"
	sc_instanced_mesh_lod_bias								"0.001"
    sc_instanced_mesh_lod_bias_shadow                      	"0.001"
    sparseshadowtree_disable_for_viewmodel                 	"true"
    sparseshadowtree_enable_rendering                      	"false"
    sparseshadowtree_parallel_generation                  	"2"
	lb_precomputed_shadowmap_enable                         "false"
	lb_precomputed_shadowmap_depth_bias                     "0.00001"
	lb_shadow_texture_height_override                       "0.00001"
	lb_shadow_texture_width_override                        "0.00001"
	r_citadel_shadow_quality                                "0"
	mat_set_shader_quality                                  "0"
	csm_viewmodel_shadows                                   "false"
	r_citadel_gpu_preview_baked_shadows                     "false"
	r_hair_shadowtile                                       "false"
	r_mixed_shadows_fade_out_time                           "0.0001"
	sc_instanced_mesh_size_cull_bias_shadow					"5.5"

	// --Parçacıklar--
	cl_particle_newinit                     				"true"
	r_limit_particle_job_duration							"true"
	r_particle_max_detail_level								"0"
	r_particle_max_size_cull								"800"
	particle_cluster_nodraw                 				"true"
	r_physics_particle_op_spawn_scale       				"0.0001"
	r_RainParticleDensity                  					"0"
	cl_particle_fallback_base               				"4"
	cl_particle_fallback_multiplier         				"2"
	cl_particle_sim_fallback_base_multiplier				"2"
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

	// --Son işleme/çıkartmalar--
	r_postprocess_enable									"false"
	r_decals												"0"
	r_distancefield_enable									"false"
	r_citadel_distancefield_blur							"false"
	citadel_per_weapon_per_surface_impact_effects 			"false"
    cl_impacteffects                              			"0"
    cl_show_splashes                              			"0"
    mat_colcorrection_disableentities             			"1"
    r_citadel_depthoffield_enable                 			"false"
    r_citadel_fog_quality                         			"0"
    r_decals_default_fade_duration                			"0.001"
    r_decals_default_start_fade                   			"0.001"
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

	// --Karakter--
	r_character_decal_resolution							"0.001"
	r_character_decal_monitor_render_res					"0.001"
	cl_fasttempentcollision                                 "999999"
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

	// --- ANİMASYON ---
	anim_decode_forcewritealltransforms                     "true"
	animgraph_footlock_enabled                              "false"
	r_smooth_morph_normals                                  "0"
	animgraph_slowdownonslopes_enabled                      "false"

	// --CSM--
	csm_max_num_cascades_override                           "0"

	// --FİZİKSEL BEDENLER--
	ai_use_async_ragdoll_fixup    							"true"
	cl_ragdoll_limit                                        "1"
	ragdoll_parallel_pose_control                           "1"
	g_ragdoll_important_maxcount  							"1"

	// ---Kamera ayarları---
	citadel_camera_soft_collision 							"0"
    citadel_camera_wobble_disable 							"1"
	citadel_damage_offscreen_indicator_disabled             "1"
	shake_show												"false"
	citadel_melee_shake_amplitude                           "0"
	citadel_melee_shake_duration                            "0"

	// --Ağ--
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

	// --GİRİŞ--
	cl_input_enable_raw_keyboard                            "1"

	// --YAPAY ZEKÂ--
	ai_async_queue_max_jobs									"1"
	ai_foot_sweep_enable									"false"
	ai_gather_conditions_async								"true"
	ai_strong_optimizations_no_checkstand                   "1"
	ai_think_interval                                       "0.3"
    ai_think_interval_lod_very_low							"1"
	citadel_npc_disable_cockroaches							"true"
	ai_lod_auto_enabled 									"true"
	ai_think_interval_lod_med                               "0.4"

	// --Diğer--
	sc_layer_batch_threshold								"16"
	r_grass_quality											"0"
	r_grass_end_fade                                        "0"
	r_grass_quality                                         "0"
	r_grass_start_fade                                      "0"
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
	r_enable_rigid_animation                                "true"
	cl_smooth                                               "true"
    r_aoproxy_cull_dist                                     "0.01"
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
	citadel_use_pvs_for_players								"true"
	sv_waterdist											"0"
	cl_simulate_dormant_entities							"false"
	props_break_apply_radial_forces							"0"
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
	thread_pool_option										"-1"
	cl_pred_optimize                                        "true"
	cl_pred_parallel_postnetwork                            "true"
	cl_phys_animated_hierarchy                              "false"
	phys_continuous_kinematic_update                        "0"
	sparseshadowtree_disable_add_layers                     "1"
	sc_allow_dynamic_constant_batching                      "1"
    sc_allow_precomputed_vismembers                         "1"
	sc_barnlight_enable_precomputed_vis                     "1"
	sc_force_single_display_list_per_layer                  "1"
	sc_aggregate_gpu_occlusion_culling                      "1"
	steam_inputhandler_enabled								"true"
	cl_skip_hierarchy_update_for_unchanged_entities         "true"
	animgraph_enable_dirty_netvar_optimization              "true"
	r_impacts_alt_orientation                               "false"
	v8_maximum_heap_size_mb                                 "512"

	// --TEST--
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
	r_particle_model_per_thread_count						"1"
	rtx_texture_resolution									"0"
	sc_aggregate_gpu_culling								"true"
	sc_instanced_mesh_gpu_culling							"true"
	sc_instanced_mesh_gpu_density_culling					"true"
	sc_instanced_mesh_opaque_fade							"true"
	sc_instanced_mesh_shadows_batch_across_materials		"false"
	r_citadel_distancefield_max_distance					"0"
	sc_clutter_desity_override								"true"
	sc_clutter_density_full_size							"0.0001"
	sc_clutter_density_none_size							"0.0001"
	sc_mesh_backface_culling								"true"
	sc_mesh_shadows_batch_across_materials					"false"
	sc_shadow_slopescale_depth_bias							"0"
	sc_shadow_depth_bias_state_override						"true"
	sc_shadow_depth_bias									"0"
	r_citadel_gpu_preview_denoise							"false"
	r_size_cull_threshold_shadow							"1.2"
	sc_mesh_gpu_volume_culling								"true"
	sc_mesh_gpu_occlusion_culling							"true"

			     //KATKIDA BULUNANLAR																				    \\
				// dacooder   Ayar dosyasını hazırlayan            													 \\
			   // Xeraa		  Oyun sonunda konsol taşması ve FPS düşüşü sorununu düzeltmeye yardım etti			  \\
			  // Boot		  ConVar katkısı           												   \\
			 // Kaiz		  ConVar katkısı                                                               \\
			// Ethanal        Ayar dosyası hata düzeltmeleri                                                                   \\
		   // simcasting 	  Performans testleri																		  \\
		  // Artemon121       Citadel cvar görünürleştiricisini hazırladı														   \\
		 // Pidjan            Ek gameinfo değişiklikleri üzerinde çalıştı ve bütünleştirmeyi sağladı                               \\
		// Piggy              Video.txt katkısı ve yayıncı                                            \\
	   // ----------------------------------------- AYAR DOSYASI SONU OptiLock -- ver. 5.9 ------------------------------ \\

		"rate"
		{
			"min"		"98304"
			"default"	"786432"
			"max"		"1000000"
		}

		// Ağ - Genel
		"sv_minrate"	"98304"
		"sv_maxunlag"	"0.500"
		"sv_maxunlag_player" "0.200"
		"sv_lagcomp_filterbyviewangle" "false"
		"cl_usesocketsforloopback" "1"
		"cl_poll_network_early" "0"
		"cq_buffer_bloat_msecs_max" "120"						// 64 Hz için en fazla 7,68 tiklik CQ birikmesi

		// Ağ - Oluşturulan gecikme (tahmin kayması)
		"cl_tickpacket_recvmargin_desired" "5" 					// Kuyrukta aşırı hareketi önlemek için 5 ms taban ve alt sınır
		"cl_tickpacket_desired_queuelength" "1"
		"cl_async_usercmd_send_disabled_recvmargin_min" "0.5"	// Asenkron usercmd gönderimi kullanılmadığından ek kare (gereksiz olabilir)
		"cl_clock_buffer_ticks"	"1"								// Simülasyon saati payına eklenen tampon (tahmin kaymasını ve istemci tik aralığını etkiler)
		"cl_interp_ratio" "0"
		"cl_async_usercmd_send" "false"							// Asenkron gönderim için gereken erken tahmin şu anda desteklenmiyor

		// Gezinme ağı oluşturma
		"nav_gen_connect_dist_a" "2.0"

		// Hiyerarşinin tepesine sınıf eklenip çıkarıldığında uyarı yaz
		"panorama_classes_perf_warning_threshold_ms" "0.75"

		// Panorama - JS hatalarında mini dökümü etkinleştir
		"panorama_js_minidumps" "1"
		// İşleme hedefi önbelleği optimizasyonunu etkinleştir.
		"panorama_disable_render_target_cache" "0"

		// Birleştirme katmanı optimizasyonunu etkinleştir
		"panorama_skip_composition_layer_content_paint" "1"

		// Steam Audio yükleme verileri
		"snd_steamaudio_load_reverb_data"		"0"
		"snd_steamaudio_load_pathing_data"		"0"
		"snd_steamaudio_load_occlusion_data"	"0"
		"snd_steamaudio_load_dimensions_data"	"1"
		"snd_steamaudio_load_materials_data"	"0"

		// Steam Audio projesine özgü ConVar değerleri
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

		// Sesli görüşme
		"voice_in_process"			            "1"

		// Ses hata ayıklama
		"snd_report_audio_nan" "1"

		// Ses sistemi ayarları
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

		// Performans/paralellik
		"iv_parallel_restore" "1"

		// Kaynak tabanlı DSP kullanmadığımızdan performans için:
		"disable_source_soundscape_trace"       "1"


		"fps_max"		"0"
		"fps_max_ui"	"60"

		"in_button_double_press_window" "0.3"

		// Arayüz sesinin uzamsal konumunu kontrol eden ConVar değerleri.
		"snd_ui_positional"								"1"
		"snd_ui_spatialization_spread"					"2.4"

		// Ses düzeyi değişim hızını sınırlandırma
		"snd_envelope_rate"								"100.0"
		"snd_soundmixer_update_maximum_frame_rate" 		"0"

		//Hoparlör yapılandırmasının değiştirilmesini önle.
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

		// Parçacıklar
		"cl_aggregate_particles" "true"
		"r_particle_batch_collections" "1"

		"citadel_enable_vdata_sound_preload" "true"

		"r_add_views_in_pre_output"		"1"

		// Küp haritası aydınlatmasını kapat
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
