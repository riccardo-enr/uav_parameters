## Reading the parameters in a ROS 2/C++ node

```cpp
// Declare the parameters
this->declare_parameter<std::string>("uav.name");
this->declare_parameter<double>("uav.parameters.uav_mass");
this->declare_parameter<int>("uav.parameters.num_of_arms");

...
// Allocate memory for the parameters
std::string uav_name;
double uav_mass, arm_length,

...
// Get the parameters
this->get_parameter("uav.name", uav_name);
this->get_parameter("uav.parameters.uav_mass", uav_mass);
this->get_parameter("uav.parameters.num_of_arms", num_of_arms);
```

## Reading parameters on MATLAB

```matlab
params = readstruct('config/<params>.yaml');

% Access the parameters
mass = params.uav.mass;
max_speed = params.uav.max_speed;
sensor_range = params.uav.sensor_range;
autopilot_enabled = params.uav.autopilot.enabled;
kp = params.uav.autopilot.gains.kp;
ki = params.uav.autopilot.gains.ki;
kd = params.uav.autopilot.gains.kd;

% Display the parameters
disp('UAV Parameters:');
disp(['Mass: ', num2str(mass)]);
disp(['Max Speed: ', num2str(max_speed)]);
disp(['Sensor Range: ', num2str(sensor_range)]);
disp(['Autopilot Enabled: ', num2str(autopilot_enabled)]);
disp(['Gains - kp: ', num2str(kp), ', ki: ', num2str(ki), ', kd: ', num2str(kd)]);
```
