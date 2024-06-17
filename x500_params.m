% UAV Parameters
uav.name = 'x500';
uav.parameters.uav_mass = 2.0; % kg
uav.parameters.num_of_arms = 4;
uav.parameters.arm_length = 0.25; % m
uav.parameters.inertia.xx = 0.08612; % kg*m^2
uav.parameters.inertia.yy = 0.08962; % kg*m^2
uav.parameters.inertia.zz = 0.16088; % kg*m^2
uav.parameters.moment_constant = 0.016;
uav.parameters.thrust_constant = 8.54858e-06;
uav.parameters.min_rotor_speed = 0;
uav.parameters.max_rotor_speed = 1000;
uav.parameters.omega_to_pwm_coefficient.x_2 = 0.001142;
uav.parameters.omega_to_pwm_coefficient.x_1 = 0.2273;
uav.parameters.omega_to_pwm_coefficient.x_0 = 914.2;
uav.parameters.PWM_MIN = 1075;
uav.parameters.PWM_MAX = 1950;
uav.parameters.input_scaling = 1000;
uav.parameters.zero_position_armed = 10;

% Environment Parameters
environment.parameters.gravity = 9.81;
