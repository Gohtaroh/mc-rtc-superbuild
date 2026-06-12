set(MC_KINOVA_DEPENDS mc_rtc ros_kortex)

AddCatkinProject(
  bota_driver_ros2
  GITLAB botasys/drivers/bota_driver_ros2
  GIT_TAG origin/main
  WORKSPACE data_ws INSTALL_DEPENDENCIES
)
AddCatkinProject(
  bota_driver_ros2_example
  GITLAB botasys/drivers/bota_driver_ros2_example
  GIT_TAG origin/main
  WORKSPACE data_ws INSTALL_DEPENDENCIES
)
list(APPEND MC_KINOVA_DEPENDS bota_driver_ros2)

AddCatkinProject(
  serial
  GITHUB wjwwood/serial
  GIT_TAG origin/pr-303
  WORKSPACE data_ws
)

AddCatkinProject(
  ros2_robotiq_gripper
  GITHUB PickNikRobotics/ros2_robotiq_gripper
  GIT_TAG origin/main
  DEPENDS serial
  WORKSPACE data_ws INSTALL_DEPENDENCIES
)
list(APPEND MC_KINOVA_DEPENDS ros2_robotiq_gripper)

AddCatkinProject(
  ros_kortex
  GITHUB Kinovarobotics/ros2_kortex
  GIT_TAG origin/${ROS_DISTRO}
  WORKSPACE data_ws INSTALL_DEPENDENCIES
)

AddProject(
  mc_kinova
  GITHUB_PRIVATE mathieu-celerier/mc_kinova
  GIT_TAG origin/topic/add-genA-bota
  DEPENDS ${MC_KINOVA_DEPENDS}
)

AddProject(
  mc_kortex
  GITHUB_PRIVATE mathieu-celerier/mc_kortex
  GIT_TAG origin/main
  DEPENDS mc_rtc ros_kortex
)