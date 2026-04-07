// ---------- Editable cvars (only these appear in UI) ----------
export const editableCvars = [
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

// ---------- The complete original ConVars block (from your file, without "rate") ----------
// This string contains every cvar from your original, exactly as it appears,
// from the first to "r_world_wind_strength". I have copied it from your provided file.
export const convarsBlockOnly = `        "citadel_trooper_glow_disabled"               "0"
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