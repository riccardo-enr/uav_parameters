## Repository structure

```bash
uav_parameters/
└── config/
    └── params.yaml
```

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
% Load the parameters from the YAML file
params = readstruct('config/params.yaml');

% Access the parameters
uav_name = params.uav.name;
uav_mass = params.uav.parameters.uav_mass;
num_of_arms = params.uav.parameters.num_of_arms;
arm_length = params.uav.parameters.arm_length;
... other params ...
PWM_MIN = params.uav.parameters.PWM_MIN;
PWM_MAX = params.uav.parameters.PWM_MAX;
input_scaling = params.uav.parameters.input_scaling;
zero_position_armed = params.uav.parameters.zero_position_armed;
gravity = params.environment.parameters.gravity;

...
```
