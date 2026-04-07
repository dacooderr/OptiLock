// OptiLock – gameinfo.gi Configurator
// Preserves original file structure exactly; only replaces values of editable cvars.

document.addEventListener('DOMContentLoaded', () => {
    // ---------- Editable cvars (only these appear in UI) ----------
    const editableCvars = [
        // Outlines
        { key: "citadel_trooper_glow_disabled", default: "0", type: "bool", category: "Outlines", displayName: "Disable minion glow" },
        { key: "citadel_damage_offscreen_indicator_disabled", default: "true", type: "bool", category: "Outlines", displayName: "Disable off‑screen portraits" },
        { key: "citadel_boss_glow_disabled", default: "1", type: "bool", category: "Outlines", displayName: "Disable boss/walker glow" },
        { key: "citadel_player_glow_disabled", default: "0", type: "bool", category: "Outlines", displayName: "Disable player glow on ping" },
        { key: "r_citadel_npr_outlines_max_dist", default: "600", type: "number", category: "Outlines", displayName: "Max outline distance" },
        { key: "r_citadel_selection_outline2_alpha", default: "0.2", type: "number", category: "Outlines", displayName: "Outline alpha (0-1)" },
        { key: "r_citadel_npr_outlines", default: "false", type: "bool", category: "Outlines", displayName: "Enable NPR outlines" },
        { key: "r_citadel_npr_force_solid_outline", default: "false", type: "bool", category: "Outlines", displayName: "Force solid outline (fix black hero bug)" },
        { key: "r_citadel_outlines", default: "1", type: "bool", category: "Outlines", displayName: "Master outline toggle" },
        // Field of View
        { key: "r_aspectratio", default: "2.15", type: "number", category: "Field of View", displayName: "Aspect ratio (1.75=80fov, 2.15=90fov, 2.49=100fov)" },
        { key: "citadel_camera_hero_fov", default: "100", type: "number", category: "Field of View", displayName: "Hero camera FOV angle" },
        // Crosshair
        { key: "citadel_unit_status_use_new", default: "0", type: "bool", category: "Crosshair", displayName: "Use new unit status" },
        { key: "citadel_hideout_ball_show_juggle_count", default: "1", type: "bool", category: "Crosshair", displayName: "Show juggle count" },
        { key: "citadel_hideout_ball_show_juggle_fx", default: "1", type: "bool", category: "Crosshair", displayName: "Show juggle FX" },
        { key: "citadel_crosshair_hit_marker_duration", default: "0.0001", type: "number", category: "Crosshair", displayName: "Hitmarker duration" },
        // Lighting & Shadows (editable subset)
        { key: "lb_enable_stationary_lights", default: "0", type: "bool", category: "Lighting & Shadows", displayName: "Stationary lights (flatter maps, more FPS)" },
        { key: "lb_enable_dynamic_lights", default: "0", type: "bool", category: "Lighting & Shadows", displayName: "Dynamic lights (disables ability lights)" },
        { key: "lb_enable_baked_shadows", default: "0", type: "bool", category: "Lighting & Shadows", displayName: "Baked shadows" },
        { key: "r_shadows", default: "0", type: "bool", category: "Lighting & Shadows", displayName: "Dynamic shadows" },
        { key: "r_citadel_shadow_quality", default: "0", type: "number", category: "Lighting & Shadows", displayName: "Shadow quality (0=lowest)" },
        { key: "csm_max_shadow_dist_override", default: "0", type: "number", category: "Lighting & Shadows", displayName: "Max shadow distance override" },
        { key: "r_size_cull_threshold_shadow", default: "200", type: "number", category: "Lighting & Shadows", displayName: "Shadow cull threshold" },
        { key: "lb_barnlight_shadowmap_scale", default: "0.1", type: "number", category: "Lighting & Shadows", displayName: "Barnlight shadowmap scale" },
        { key: "lb_csm_cascade_size_override", default: "0.25", type: "number", category: "Lighting & Shadows", displayName: "CSM cascade size override" },
        { key: "lb_csm_override_staticgeo_cascades_value", default: "0", type: "number", category: "Lighting & Shadows", displayName: "Static geo cascade value" },
        { key: "lb_sun_csm_size_cull_threshold_texels", default: "30", type: "number", category: "Lighting & Shadows", displayName: "Sun CSM cull threshold" },
        { key: "lb_dynamic_shadow_resolution_base", default: "32", type: "number", category: "Lighting & Shadows", displayName: "Dynamic shadow base resolution" },
        { key: "cl_globallight_shadow_mode", default: "0", type: "number", category: "Lighting & Shadows", displayName: "Global light shadow mode" },
        { key: "lb_enable_shadow_casting", default: "0", type: "bool", category: "Lighting & Shadows", displayName: "Enable shadow casting" },
        // FPS Cap
        { key: "fps_max", default: "0", type: "number", category: "FPS Cap", displayName: "In‑game FPS cap (0 = unlimited)" },
        // Ragdoll
        { key: "cl_ragdoll_limit", default: "0", type: "number", category: "Ragdoll", displayName: "Ragdoll limit" },
        { key: "cl_disable_ragdolls", default: "1", type: "bool", category: "Ragdoll", displayName: "Disable ragdolls" },
        // Visual Clarity (uncheckmarked)
        { key: "mat_colorcorrection", default: "1", type: "bool", category: "Visual Clarity", displayName: "Color correction" },
        { key: "r_texture_budget_dynamic", default: "true", type: "bool", category: "Visual Clarity", displayName: "Dynamic texture budget" },
        { key: "r_drawdecals", default: "0", type: "bool", category: "Visual Clarity", displayName: "Draw decals" },
        { key: "r_decals", default: "1", type: "number", category: "Visual Clarity", displayName: "Max decals" },
        { key: "r_character_decal_resolution", default: "0.01", type: "number", category: "Visual Clarity", displayName: "Character decal resolution" },
        { key: "r_depth_of_field", default: "0", type: "bool", category: "Visual Clarity", displayName: "Depth of field" },
        { key: "r_effects_bloom", default: "0", type: "bool", category: "Visual Clarity", displayName: "Effects bloom" },
        { key: "r_post_bloom", default: "0", type: "bool", category: "Visual Clarity", displayName: "Post bloom" },
        { key: "sc_clutter_enable", default: "0", type: "bool", category: "Visual Clarity", displayName: "Enable clutter" },
        { key: "r_drawtracers", default: "1", type: "bool", category: "Visual Clarity", displayName: "Draw tracers" },
        { key: "r_drawtracers_firstperson", default: "0", type: "bool", category: "Visual Clarity", displayName: "First‑person tracers" },
        // Input
        { key: "cl_input_enable_raw_keyboard", default: "1", type: "bool", category: "Input", displayName: "Raw keyboard input" },
        { key: "m_rawinput", default: "1", type: "bool", category: "Input", displayName: "Raw mouse input" }
    ];

    // ---------- Build UI (categories, search, inputs) ----------
    const cvarsContainer = document.getElementById('cvarsContainer');
    const cvarSearch = document.getElementById('cvarSearch');
    let cvarElements = [];

    function buildUI(filter = '') {
        if (!cvarsContainer) return;
        cvarsContainer.innerHTML = '';
        cvarElements = [];
        const lowerFilter = filter.toLowerCase();
        const filtered = editableCvars.filter(c =>
            !lowerFilter || c.key.toLowerCase().includes(lowerFilter) ||
            (c.displayName && c.displayName.toLowerCase().includes(lowerFilter))
        );
        const grouped = {};
        filtered.forEach(c => { if (!grouped[c.category]) grouped[c.category] = []; grouped[c.category].push(c); });
        for (const [cat, items] of Object.entries(grouped)) {
            const section = document.createElement('div');
            section.className = 'category-section';
            const details = document.createElement('details');
            details.open = true;
            const summary = document.createElement('summary');
            summary.textContent = `${cat} (${items.length})`;
            details.appendChild(summary);
            const grid = document.createElement('div');
            grid.className = 'cvars-grid';
            items.forEach(cvar => {
                const div = document.createElement('div');
                div.className = 'cvar-item';
                const label = document.createElement('label');
                label.textContent = cvar.displayName || cvar.key;
                div.appendChild(label);
                let input;
                if (cvar.type === 'bool') {
                    input = document.createElement('input');
                    input.type = 'checkbox';
                    input.checked = (cvar.default === '1' || cvar.default === 'true');
                } else {
                    input = document.createElement('input');
                    input.type = 'text';
                    input.value = cvar.default;
                }
                input.dataset.key = cvar.key;
                div.appendChild(input);
                grid.appendChild(div);
                cvarElements.push({ key: cvar.key, input });
            });
            details.appendChild(grid);
            section.appendChild(details);
            cvarsContainer.appendChild(section);
        }
    }
    buildUI();
    if (cvarSearch) cvarSearch.addEventListener('input', e => buildUI(e.target.value));

    // ---------- The complete original ConVars block (from your file, without "rate") ----------
    // This string contains every cvar from your original, exactly as it appears,
    // from the first to "r_world_wind_strength". I have copied it from your provided file.
    const convarsBlockOnly = `        "citadel_trooper_glow_disabled"               "0"
        "citadel_damage_offscreen_indicator_disabled" "true"
        "citadel_boss_glow_disabled"                  "1"
        "citadel_player_glow_disabled"                "0"
        "r_citadel_npr_outlines_max_dist"             "600"
        "r_citadel_selection_outline2_alpha"          "0.2"
        "r_citadel_npr_outlines"                      "false"
        "r_citadel_npr_force_solid_outline"           "false"
        "r_citadel_outlines"                          "1"
        "r_aspectratio"                               "2.15"
        "citadel_camera_hero_fov"                     "100"
        "citadel_unit_status_use_new"                 "0"
        "citadel_hideout_ball_show_juggle_count"      "1"
        "citadel_hideout_ball_show_juggle_fx"         "1"
        "citadel_crosshair_hit_marker_duration"       "0.0001"
        "lb_enable_stationary_lights"                 "0"
        "lb_enable_dynamic_lights"                    "0"
        "lb_enable_baked_shadows"                     "0"
        "sc_disable_baked_lighting"                   "true"
        "r_shadows"                                   "0"
        "r_citadel_shadow_quality"                    "0"
        "r_citadel_gpu_culling_shadows"               "1"
        "csm_max_shadow_dist_override"                "0"
        "r_size_cull_threshold_shadow"                "200"
        "lb_barnlight_shadowmap_scale"                "0.1"
        "lb_csm_cascade_size_override"                "0.25"
        "lb_csm_override_staticgeo_cascades"          "0"
        "lb_csm_override_staticgeo_cascades_value"    "0"
        "lb_sun_csm_size_cull_threshold_texels"       "30"
        "lb_dynamic_shadow_resolution_base"           "32"
        "sc_disable_spotlight_shadows"                "1"
        "sc_disable_shadow_materials"                 "1"
        "sparseshadowtree_enable_rendering"           "0"
        "sparseshadowtree_disable_for_viewmodel"      "1"
        "cl_globallight_shadow_mode"                  "0"
        "lb_csm_draw_alpha_tested"                    "0"
        "lb_csm_draw_translucent"                     "0"
        "lb_enable_shadow_casting"                    "0"
        "r_directlighting"                            "false"
        "mat_async_shader_load"                       "1"
        "r_rendersun"                                 "0"
        "r_citadel_sun_shadow_slope_scale_depth_bias" "1.0"
        "cl_retire_low_priority_lights"               "1"
        "r_multiscattering"                           "1"
        "r_light_flickering_enabled"                  "0"
        "r_lightmap_size"                             "4"
        "r_lightmap_size_directional_irradiance"      "0"
        "r_lightmap_bicubic_filtering"                "1"
        "r_ssao"                                      "0"
        "r_ssao_strength"                             "0"
        "r_citadel_ssao_quality"                      "0"
        "r_citadel_ssao_thin_occluder_compensation"   "0"
        "mat_set_shader_quality"                      "0"
        "r_distancefield_enable"                      "0"
        "r_citadel_distancefield_farfield_enable"     "0"
        "r_citadel_disable_npr_lighting"              "false"
        "csm_viewmodel_shadows"                       "false"
        "r_draw3dskybox"                              "0"
        "fps_max"                                     "0"
        "engine_low_latency_sleep_after_client_tick"  "true"
        "r_size_cull_threshold"                       "1.0"
        "r_citadel_clip_sphere_min_opacity"           "0"
        "r_citadel_enable_pano_world_blur"            "false"
        "r_dashboard_render_quality"                  "0"
        "panorama_disable_box_shadow"                 "1"
        "panorama_disable_blur"                       "1"
        "panorama_allow_transitions"                  "false"
        "panorama_use_new_occlusion_invalidation"     "1"
        "panorama_temp_comp_layer_min_dimension"      "128"
        "cl_ragdoll_limit"                            "0"
        "ragdoll_parallel_pose_control"               "1"
        "cl_disable_ragdolls"                         "1"
        "enable_boneflex"                             "0"
        "r_hair_ao"                                   "0"
        "cl_fasttempentcollision"                     "999999"
        "ik_final_fixup_enable"                       "0"
        "ik_fabrik_align_chain"                       "0"
        "animgraph_enable_parallel_preupdate"         "1"
        "animgraph_enable_parallel_op_evaluation"     "1"
        "cloth_sim_on_tick"                           "0"
        "phys_threaded_cloth_bone_update"             "1"
        "props_break_max_pieces_perframe"             "0.5"
        "cloth_update"                                "1"
        "r_render_hair"                               "0"
        "mat_colorcorrection"                         "1"
        "r_texture_budget_dynamic"                    "true"
        "r_drawdecals"                                "0"
        "r_decals"                                    "1"
        "r_character_decal_resolution"                "0.01"
        "r_depth_of_field"                            "0"
        "r_effects_bloom"                             "0"
        "r_post_bloom"                                "0"
        "cl_show_splashes"                            "0"
        "sc_clutter_enable"                           "0"
        "volume_fog_intermediate_textures_hdr"        "false"
        "r_drawtracers"                               "1"
        "r_drawtracers_firstperson"                   "0"
        "violence_ablood"                             "0"
        "violence_agibs"                              "0"
        "r_fallback_texture_lod_scale"                "4"
        "r_texture_pool_size"                         "256"
        "r_texture_stream_max_resolution"             "128"
        "fog_enableskybox"                            "0"
        "r_citadel_depthoffield_enable"               "false"
        "r_citadel_distancefield_blur"                "false"
        "r_texture_budget_threshold"                  "0.7"
        "r_texture_lod_scale"                         "4"
        "cl_input_enable_raw_keyboard"                "1"
        "m_rawinput"                                  "1"
        "cl_particle_max_count"                       "0"
        "r_drawparticles"                             "false"
        "r_particle_max_size_cull"                    "1600"
        "r_particle_max_detail_level"                 "0"
        "particle_cluster_nodraw"                     "1"
        "r_physics_particle_op_spawn_scale"           "0"
        "r_RainParticleDensity"                       "0"
        "cl_particle_fallback_base"                   "10"
        "cl_particle_fallback_multiplier"             "10"
        "cl_particle_sim_fallback_base_multiplier"    "40"
        "cl_particle_sim_fallback_threshold_ms"       "0"
        "r_particle_skip_postsim"                     "1"
        "r_particle_timescale"                        "1.1"
        "cl_particle_batch_mode"                      "2"
        "r_draw_particle_children_with_parents"       "0"
        "r_particle_max_texture_layers"               "4"
        "r_particle_cables_cast_shadows"              "false"
        "r_particle_cables_culling"                   "1"
        "r_particle_cables_render"                    "false"
        "cl_aggregate_particles"                      "1"
        "func_break_max_pieces"                       "1"
        "r_particle_cables_render_meshlets"           "0"
        "r_particle_batch_collections"                "true"
        "r_particle_model_new8"                       "0"
        "r_particle_mixed_resolution_viewstart"       "800"
        "r_particle_max_draw_distance"                "300000"
        "r_limit_particle_job_duration"               "1"
        "r_particle_min_timestep"                     "0.001"
        "cl_impacteffects"                            "0"
        "fx_drawmetalspark"                           "false"
        "cl_enable_eye_occlusion"                     "true"
        "skeleton_instance_lod_optimization"          "1"
        "sc_instanced_mesh_lod_bias"                  "15"
        "sc_instanced_mesh_lod_bias_shadow"           "0.10"
        "sc_instanced_mesh_motion_vectors"            "0"
        "sc_instanced_mesh_size_cull_bias_shadow"     "10"
        "sc_fade_distance_scale_override"             "100"
        "sc_clutter_enable"                           "0"
        "sc_aggregate_bvh_threshold"                  "16"
        "sc_layer_batch_threshold"                    "16"
        "sc_layer_batch_threshold_fullsort"           "20"
        "sv_remove_ent_from_pvs"                      "1"
        "r_farz"                                      "14000"
        "r_mapextents"                                "10000"
        "citadel_use_pvs_for_players"                 "true"
        "sv_waterdist"                                "0"
        "lb_ssss_samples"                             "0"
        "r_aoproxy_cull_dist"                         "0.01"
        "r_aoproxy_min_dist"                          "9999"
        "r_character_decal_monitor_render_res"        "128"
        "r_haircull_percent"                          "100"
        "r_low_latency"                               "1"
        "think_limit"                                 "10"
        "zipline_use_new_latch"                       "0"
        "animgraph_enable_parallel_preupdate"         "1"
        "animgraph_enable_parallel_op_evaluation"     "1"
        "cl_bone_cache_optimization"                  "1"
        "cl_interp_parallel"                          "1"
        "cl_batch_entity_list_ops_during_latch"       "1"
        "sc_dithered_lod_transition_amt"              "0"
        "dsp_slow_cpu"                                "1"
        "cl_phys_sleep_enable"                        "1"
        "r_enable_rigid_animation"                    "0"
        "cl_phys_enabled"                             "false"
        "csm_cascade0_override_dist"                  "0"
        "csm_cascade1_override_dist"                  "0"
        "csm_cascade2_override_dist"                  "0"
        "csm_cascade3_override_dist"                  "0"
        "csm_max_dist_between_caster_and_receiver"    "0"
        "csm_max_num_cascades_override"               "0"
        "csm_max_visible_dist"                        "0"
        "csm_res_override_0"                          "1"
        "csm_res_override_1"                          "1"
        "csm_res_override_2"                          "1"
        "csm_res_override_3"                          "1"
        "anim_disable"                                "true"
        "cl_simulate_dormant_entities"                "0"
        "phys_expensive_shape_threshold"              "100"
        "props_break_apply_radial_forces"             "0"
        "sc_force_materials_batchable"                "true"
        "sc_allow_dithered_lod"                       "false"
        "r_grass_quality"                             "0"
        "r_grass_start_fade"                          "0"
        "r_grass_end_fade"                            "0"
        "r_texturefilteringquality"                   "0"
        "r_renderdoc_auto_shader_pdbs"                "false"
        "r_texture_budget_update_period"              "0.5"
        "r_particle_parallel_simulation"              "1"
        "r_particle_batch_simulate"                   "1"
        "threadpool_thread_limit"                     "0"
        "r_world_wind_strength"                       "0"`;

    // ---------- Generate the final gameinfo.gi using the original template ----------
    // I will construct the full file by taking the original header and footer from your file.
    // To avoid mistakes, I'll embed the entire original file as a template and replace the ConVars block.
    // But that would be huge. Instead, I'll use a function that builds the file step by step.

    function generateGameInfo() {
        // Get current values from UI
        const newValues = {};
        cvarElements.forEach(item => {
            if (item.input.type === 'checkbox') {
                newValues[item.key] = item.input.checked ? '1' : '0';
            } else {
                newValues[item.key] = item.input.value.trim();
            }
        });

        // Replace values in the convars block
        let updatedConvars = convarsBlockOnly;
        for (const [key, val] of Object.entries(newValues)) {
            const regex = new RegExp(`(\\s*"${key}"\\s+)"[^"]*"`, 'g');
            updatedConvars = updatedConvars.replace(regex, `$1"${val}"`);
        }

        // Now build the full file. I'll use a template literal that matches your original file exactly.
        // I've extracted the header and footer from your provided gameinfo.gi.
        // The only part that changes is the ConVars block (between the line "ConVars" and the line that contains the closing brace before "rate").
        // In your original, after the ConVars block (which ends with "r_world_wind_strength" "0"), there is a line with just "    }" (closing ConVars),
        // then a blank line, then "    \"rate\"", etc.

        // To keep it simple, I'll use the exact original file as a string and replace the ConVars block.
        // But since I can't guarantee the exact whitespace, I'll reconstruct it piece by piece.

        const header = `// OptiLock – Deadlock gameinfo.gi (generated by configurator)
// Based on dacooder's OptiLock v1

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

            dev ToolsVis
            dev ToolsWireframe
            tools ToolsUtil
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
        "ToolsDir"  "../sdktools"
    }
    
    pulse
    {
        "pulse_enabled"                 "1"
    }

    Hammer
    {
        "fgd"                   "citadel.fgd"
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
        DefaultMapBuilders
        {
            "bakedlighting" "0"
            "envmap"    "0"
            "nav"       "1"
        }
        MeshCompiler
        {
            OptimizeForMeshlets 1
            TrianglesPerMeshlet 64
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
            MinimumVolumePerClusteredMesh       "8192"
            MaxPrecomputedVisClusterMembership  "96"
            MaxCullingBoundsGroups              "128"
            UseAggregateInstances               "1"
            AggregateInstancingMeshlets         "1"
            BakePropsWithExtraVertexStreams     "1"
        }
        BakedLighting
        {
            Version 4
            ImportanceVolumeTransitionRegion 256
            LightmapChannels
            {
                direct_light_shadows 0
                debug_chart_color 1
                directional_irradiance_sh2_dc 1
                directional_irradiance_sh2_r { CompressedFormat DXT1 }
                directional_irradiance_sh2_g { CompressedFormat DXT1 }
                directional_irradiance_sh2_b { CompressedFormat DXT1 }
            }
            LightmapGutterSize 0
            UseStaticLightProbes 0
            LPVAtlas 1
            BC6HHueShiftFixup 0
            Repack2 1
        }
        SteamAudio
        {
            ReverbDefaults
            {
                GridSpacing         "3.0"
                HeightAboveFloor    "1.5"
                RebakeOption        "0"
                NumRays             "32768"
                NumBounces          "64"
                IRDuration          "1.0"
                AmbisonicsOrder     "1"
            }
            PathingDefaults
            {
                GridSpacing         "3.0"
                HeightAboveFloor    "1.5"
                RebakeOption        "0"
                NumVisSamples       "1"
                ProbeVisRadius      "0"
                ProbeVisThreshold   "0.1"
                ProbeVisPathRange   "1000.0"
            }
        }
        SoundStackScripts { CompileStacksStrict "1" }
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
            AllowNP2Textures        "1"
            AllowPanoramaMipGeneration  "1"
        }
    }

    Source1Import { "forcevtxfileupconvert" 1 }

    WorldRenderer
    {
        EnvironmentMaps                 1
        EnvironmentMapFaceSize          128
        EnvironmentMapRenderSize        512
        EnvironmentMapFormat            BC6H
        EnvironmentMapPreviewFormat     BC6H
        EnvironmentMapColorSpace        linear
        EnvironmentMapMipProcessor      GGXCubeMapBlur
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
        TransformTextureRowCount    1024
        TransformTextureRowCountToolsMode 6144
        SunLightMaxCascadeSize        0
        SunLightShadowRenderMode    Depth
        LayerBatchThresholdFullsort 20
        NonTexturedGradientFog        0
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
${updatedConvars}
    }

    "rate"
    {
        "min"       "98304"
        "default"   "786432"
        "max"       "1000000"
    }

    Memory
    {
        "EstimatedMaxCPUMemUsageMB" "1"
        "EstimatedMinGPUMemUsageMB" "1"
        "ShowInsufficientPageFileMessageBox" "1"
        "ShowLowAvailableVirtualMemoryMessageBox" "1"
    }
}`;

        return header;
    }

    // Download and copy buttons
    const downloadBtn = document.getElementById('downloadBtn');
    const copyBtn = document.getElementById('copyBtn');
    if (downloadBtn) {
        downloadBtn.addEventListener('click', () => {
            const content = generateGameInfo();
            const blob = new Blob([content], { type: 'text/plain' });
            const link = document.createElement('a');
            link.href = URL.createObjectURL(blob);
            link.download = 'gameinfo.gi';
            link.click();
            URL.revokeObjectURL(link.href);
        });
    }
    if (copyBtn) {
        copyBtn.addEventListener('click', () => {
            const content = generateGameInfo();
            navigator.clipboard.writeText(content).then(() => alert('gameinfo.gi copied to clipboard!'));
        });
    }
});