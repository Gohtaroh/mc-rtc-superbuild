include(${CMAKE_CURRENT_LIST_DIR}/interfaces/mc_mujoco.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/interfaces/mc_kortex.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/interfaces/kinova_mj_description.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/mc_residual_estimation.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/minimum_jerk_task.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/mc_joystick_plugin.cmake)
# Disabled 2026-06-12: rss2025 branch needs VirtualTorqueSensor (removed in mc_rtc devel),
# rss2025_new_implementation needs BoxDemoController (not in this superbuild). Reference-only demo.
# include(${CMAKE_CURRENT_LIST_DIR}/controllers/monodzukuri2024_kinova_demo.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/mc_ros_posture_pub_sub.cmake)
# Disabled 2026-06-12: force-rl-qp branch incompatible with mc_rtc devel (TorqueTask/WrenchTask API). Unused in HRI study.
# include(${CMAKE_CURRENT_LIST_DIR}/controllers/posture_datastore_controller.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/controllers/kinova_controller.cmake)
