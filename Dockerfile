FROM px4io/px4-dev-nuttx-jammy

# The simulator runs *without* upgrading Jammy. It does not display the
# graphics, however. Upgrading fixes it.
RUN apt update && apt upgrade -y

RUN git clone -b jmavsim-run-p-instance --recurse-submodules https://github.com/royratcliffe/PX4-Autopilot.git
WORKDIR PX4-Autopilot
RUN make

CMD [ "make", "px4_sitl", "jmavsim" ]
