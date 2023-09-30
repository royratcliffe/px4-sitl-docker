FROM px4io/px4-dev-nuttx-jammy

# The simulator runs *without* upgrading Jammy. It does not display the
# graphics, however. Upgrading fixes it.
RUN apt update && apt upgrade -y

RUN git clone -b jmavsim-run-p-instance --recurse-submodules https://github.com/royratcliffe/PX4-Autopilot.git
WORKDIR PX4-Autopilot
RUN make px4_sitl build_jmavsim_iris

WORKDIR build/px4_sitl_default/src/modules/simulation/simulator_mavlink
ENTRYPOINT [ "cmake", "-E", "env", "PX4_SYS_AUTOSTART=10017", "/PX4-Autopilot/build/px4_sitl_default/bin/px4" ]
