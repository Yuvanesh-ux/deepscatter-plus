precision mediump float;


uniform float u_zoom_balance;

uniform float u_update_time;
uniform float u_transition_duration;

// Type of jitter.
uniform float u_jitter;
uniform float u_last_jitter;


// Whether to plot only a single category.
uniform float u_only_color;
uniform float u_grid_mode;

uniform vec3 u_filter_numeric; // An override for simple numeric operations.
uniform vec3 u_filter_last_numeric; // An override for simple numeric operations.

// Transform from data space to the open window.
uniform mat3 u_window_scale;
uniform mat3 u_last_window_scale;
// Transform from the open window to the d3-zoom.
uniform mat3 u_zoom;

uniform float u_width;
uniform float u_height;

uniform float u_maxix;           // The maximum index to plot.
uniform float u_time;            // The current time.
uniform float u_k;               // The d3-scale factor.
uniform float u_color_picker_mode;
uniform float u_base_size;
uniform float u_current_alpha;
uniform float u_last_alpha;

// The same set of items for a variety of aesthetics.


// whether to continuously interpolate between
// lastx and x, lasty and y.
uniform float u_position_interpolation_mode;

/*
python code to generate what follows.
ks = ["x", "y", "jitter_radius", "jitter_speed", "size", "filter", "x0", "y0"]
times = ["", "last_"]
for k in ks:
  for time in times:
    timek = time + k
    print(f"""
uniform float u_{timek}_buffer_num;
uniform float u_{timek}_constant;
uniform float u_{timek}_transform;
uniform vec2 u_{timek}_domain;
uniform vec2 u_{timek}_range;
uniform sampler2D u_{timek}_map;
uniform float u_{timek}_needs_map;
float a_{timek};
    """)

for i in range(1, 15):
  print(f"attribute float buffer_{i};")

for k in ks:
  for time in times:
    timek = time + k
    print(f"""
  if (u_{timek}_buffer_num > -0.5) {{
    a_{timek} = get_buffer(u_{timek}_buffer_num);
  }} else {{
    a_{timek} = u_{timek}_constant;
  }}"""
*/

attribute float buffer_0;
attribute float buffer_1;
attribute float buffer_2;
attribute float buffer_3;
attribute float buffer_4;
attribute float buffer_5;
attribute float buffer_6;
attribute float buffer_7;
attribute float buffer_8;
attribute float buffer_9;
attribute float buffer_10;
attribute float buffer_11;
attribute float buffer_12;
attribute float buffer_13;
attribute float buffer_14;
attribute float buffer_15;

uniform float u_x_buffer_num;
uniform float u_x_constant;
uniform float u_x_transform;
uniform vec2 u_x_domain;
uniform vec2 u_x_range;
uniform sampler2D u_x_map;
uniform float u_x_needs_map;
float a_x;
    

uniform float u_last_x_buffer_num;
uniform float u_last_x_constant;
uniform float u_last_x_transform;
uniform vec2 u_last_x_domain;
uniform vec2 u_last_x_range;
uniform sampler2D u_last_x_map;
uniform float u_last_x_needs_map;
float a_last_x;
    

uniform float u_y_buffer_num;
uniform float u_y_constant;
uniform float u_y_transform;
uniform vec2 u_y_domain;
uniform vec2 u_y_range;
uniform sampler2D u_y_map;
uniform float u_y_needs_map;
float a_y;
    

uniform float u_last_y_buffer_num;
uniform float u_last_y_constant;
uniform float u_last_y_transform;
uniform vec2 u_last_y_domain;
uniform vec2 u_last_y_range;
uniform sampler2D u_last_y_map;
uniform float u_last_y_needs_map;
float a_last_y;
    

uniform float u_jitter_radius_buffer_num;
uniform float u_jitter_radius_constant;
uniform float u_jitter_radius_transform;
uniform vec2 u_jitter_radius_domain;
uniform vec2 u_jitter_radius_range;
uniform sampler2D u_jitter_radius_map;
uniform float u_jitter_radius_needs_map;
float a_jitter_radius;
    

uniform float u_last_jitter_radius_buffer_num;
uniform float u_last_jitter_radius_constant;
uniform float u_last_jitter_radius_transform;
uniform vec2 u_last_jitter_radius_domain;
uniform vec2 u_last_jitter_radius_range;
uniform sampler2D u_last_jitter_radius_map;
uniform float u_last_jitter_radius_needs_map;
float a_last_jitter_radius;
    

uniform float u_jitter_speed_buffer_num;
uniform float u_jitter_speed_constant;
uniform float u_jitter_speed_transform;
uniform vec2 u_jitter_speed_domain;
uniform vec2 u_jitter_speed_range;
uniform sampler2D u_jitter_speed_map;
uniform float u_jitter_speed_needs_map;
float a_jitter_speed;
    

uniform float u_last_jitter_speed_buffer_num;
uniform float u_last_jitter_speed_constant;
uniform float u_last_jitter_speed_transform;
uniform vec2 u_last_jitter_speed_domain;
uniform vec2 u_last_jitter_speed_range;
uniform sampler2D u_last_jitter_speed_map;
uniform float u_last_jitter_speed_needs_map;
float a_last_jitter_speed;
    

uniform float u_size_buffer_num;
uniform float u_size_constant;
uniform float u_size_transform;
uniform vec2 u_size_domain;
uniform vec2 u_size_range;
uniform sampler2D u_size_map;
uniform float u_size_needs_map;
float a_size;

uniform float u_last_size_buffer_num;
uniform float u_last_size_constant;
uniform float u_last_size_transform;
uniform vec2 u_last_size_domain;
uniform vec2 u_last_size_range;
uniform sampler2D u_last_size_map;
uniform float u_last_size_needs_map;
float a_last_size;
    

uniform float u_filter_buffer_num;
uniform float u_filter_constant;
uniform float u_filter_transform;
uniform vec2 u_filter_domain;
uniform vec2 u_filter_range;
uniform sampler2D u_filter_map;
uniform float u_filter_needs_map;
float a_filter;
    

uniform float u_last_filter_buffer_num;
uniform float u_last_filter_constant;
uniform float u_last_filter_transform;
uniform vec2 u_last_filter_domain;
uniform vec2 u_last_filter_range;
uniform sampler2D u_last_filter_map;
uniform float u_last_filter_needs_map;
float a_last_filter;
    

uniform float u_x0_buffer_num;
uniform float u_x0_constant;
uniform float u_x0_transform;
uniform vec2 u_x0_domain;
uniform vec2 u_x0_range;
uniform sampler2D u_x0_map;
uniform float u_x0_needs_map;
float a_x0;
    

uniform float u_last_x0_buffer_num;
uniform float u_last_x0_constant;
uniform float u_last_x0_transform;
uniform vec2 u_last_x0_domain;
uniform vec2 u_last_x0_range;
uniform sampler2D u_last_x0_map;
uniform float u_last_x0_needs_map;
float a_last_x0;
    

uniform float u_y0_buffer_num;
uniform float u_y0_constant;
uniform float u_y0_transform;
uniform vec2 u_y0_domain;
uniform vec2 u_y0_range;
uniform sampler2D u_y0_map;
uniform float u_y0_needs_map;
float a_y0;
    

uniform float u_last_y0_buffer_num;
uniform float u_last_y0_constant;
uniform float u_last_y0_transform;
uniform vec2 u_last_y0_domain;
uniform vec2 u_last_y0_range;
uniform sampler2D u_last_y0_map;
uniform float u_last_y0_needs_map;
float a_last_y0;
    

float a_color;
float a_last_color;

uniform float u_color_buffer_num;
uniform float u_last_color_buffer_num;

uniform vec3 u_color_constant;
uniform vec3 u_last_color_constant;

uniform float u_color_transform;
uniform float u_last_color_transform;
uniform vec2 u_color_domain;
uniform vec2 u_last_color_domain;
uniform sampler2D u_color_map;
uniform sampler2D u_last_color_map;
uniform float u_last_color_needs_map;
uniform float u_color_needs_map;
uniform vec3 u_constant_color;
uniform vec3 u_constant_last_color;


// The fill color.
varying vec4 fill;
varying float point_size;


uniform float u_jitter_radius_lookup;
uniform float u_jitter_radius_lookup_y_constant;
uniform sampler2D u_jitter_radius_lookup_map;
uniform vec2 u_jitter_radius_lookup_x_domain;
uniform vec2 u_jitter_radius_lookup_y_domain;
uniform vec2 u_jitter_radius_lookup_z_domain;

float point_size_adjust;

// A coordinate to throw away a vertex point.
vec4 discard_me = vec4(100.0, 100.0, 1.0, 1.0);

// Initialized in the main loop
// mat3 from_coord_to_gl;

const float e = 1.618282;
// I've been convinced.
const float tau = 2. * 3.14159265359;

// uniform vec4 corners;

/*************** COLOR SCALES *******************************/

// Ha! A gazillion version of this function:
// https://gist.github.com/kylemcdonald/f8df3bc2f8d38ca2b7cb
/*vec3 hsv2rgb(in vec3 c) {
  vec3 rgb = clamp(abs(mod(c.x * 6.0 + vec3(0.0, 4.0, 2.0), 6.0) - 3.0) - 1.0,
                   0.0, 1.0);
  rgb = rgb * rgb * (3.0 - 2.0 * rgb);
  return c.z * mix(vec3(1.0), rgb, c.y);
}*/

float interpolate_raw(in float x, in float min, in float max) {
  if (x < min) {return 0.;}
  if (x > max) {return 1.;}
  return (x - min)/(max - min);
}

float interpolate(in float x, in float min, in float max) {
  if (max < min) {
    return 1. - interpolate_raw(x, max, min);
  } else {
    return interpolate_raw(x, min, max);
  }
}

/*

The following glsl code was written in python.

buffers = [*range(16)]

def write_buffs(buffs):
    if len(buffs) == 1:
        return[f"return buffer_{buffs[0]}"]
    condition_1 = ["  " + line for line in write_buffs(buffs[:len(buffs)//2])]
    condition_2 = ["" + line for line in write_buffs(buffs[len(buffs)//2:])]

    args = [
        f"if (i < {buffs[len(buffs) // 2 - 1]}.5) {{",
        *condition_1,
        "}",
        *condition_2
    ]
    return args

print("\n".join(write_buffs(buffers)))
*/

float get_buffer(in float i) {
  //given an index, returns the appropriate buffer.
  if (i < 7.5) {
    if (i < 3.5) {
      if (i < 1.5) {
        if (i < 0.5) {
          return buffer_0;
        }
        return buffer_1;
      }
      if (i < 2.5) {
        return buffer_2;
      }
      return buffer_3;
    }
    if (i < 5.5) {
      if (i < 4.5) {
        return buffer_4;
      }
      return buffer_5;
    }
    if (i < 6.5) {
      return buffer_6;
    }
    return buffer_7;
  }
  if (i < 11.5) {
    if (i < 9.5) {
      if (i < 8.5) {
        return buffer_8;
      }
      return buffer_9;
    }
    if (i < 10.5) {
      return buffer_10;
    }
    return buffer_11;
  }
  if (i < 13.5) {
    if (i < 12.5) {
      return buffer_12;
    }
    return buffer_13;
  }
  if (i < 14.5) {
    return buffer_14;
  }
  return buffer_15;
}


float linstep(in vec2 range, in float x) {
  return interpolate(x, range.x, range.y);
  float scale_size = range.y - range.x;
  float from_left = x - range.x;
  return clamp(from_left / scale_size, 0.0, 1.0);
}

float linscale(in vec2 range, in float x) {
  float scale_size = range.y - range.x;
  float from_left = x - range.x;
  return from_left / scale_size;
}

highp float ix_to_random(in float ix, in float seed) {
  // For high numbers, taking the log avoids coincidence.
  highp float seed2 = log(ix) + 1.;
  vec2 co = vec2(seed2, seed);
  highp float a = 12.9898;
  highp float b = 78.233;
  highp float c = 43758.5453;
  highp float dt = dot(co.xy, vec2(a, b));
  highp float sn = mod(dt, 3.14);
  return fract(sin(sn) * c);
}

vec2 box_muller(in float ix, in float seed) {
  // Box-Muller transform gives you two gaussian randoms for two uniforms.
  highp float U = ix_to_random(ix, seed);
  highp float V = ix_to_random(ix, seed + 17.123123);
  return vec2(sqrt(-2. * log(U)) * cos(tau * V),
              sqrt(-2. * log(U)) * sin(tau * V));
}

/*************** END COLOR SCALES *******************************/

float domainify(in vec2 domain, in float transform, in float attr, in bool clamped) {

  // Clamp an attribute into a domain, with an option log or sqrt transform.
  if (transform == 2.) {
    domain = sqrt(domain);
    attr = sqrt(attr);
  }
  if (transform == 3.) {
    domain = log(domain);
    attr = log(attr);
  }
  if (clamped) {
    return linstep(domain, attr);
  } else {
    return linscale(domain, attr);
  }
}

mat3 pixelspace_to_glspace;

float run_filter(in float a_filter,
  in float u_filter_op, in float u_filter_param_1,
  in float u_filter_param_2) {
  bool truthy;
  if (u_filter_op < 1.5) {
    truthy = a_filter < u_filter_param_1;
  } else if (u_filter_op < 2.5) {
    truthy = a_filter > u_filter_param_1;
  } else if (u_filter_op < 3.5) {
    truthy = a_filter == u_filter_param_1;
  } else if (u_filter_op < 4.5) {
    truthy = abs(a_filter - u_filter_param_2) < u_filter_param_1;
  }
  if (truthy) {return 1.;} else {return 0.;}
}

#pragma glslify: logarithmic_spiral_jitter = require('./log_spiral_jitter.vert')
#pragma glslify: packFloat = require('glsl-read-float')
#pragma glslify: easeCubic = require(glsl-easings/sine-in-out)

#ifndef PI
#define PI 3.141592653589793
#endif

float sineInOut(float t) {
  return -0.5 * (cos(PI * t) - 1.0);
}

const vec4 decoder = vec4(1./256./256./256., 1. / 256. / 256., 1. / 256., 1.);

float RGBAtoFloat(in vec4 floater) {
  //return 0.05;
  // Scale values up by 256.
  return dot(floater, decoder);
}


float texture_float_lookup(in sampler2D texture,
                           in vec2 domain,
                           in vec2 range,
                           in float transform,
                           in float attr,
                           in float use_texture,
                           in float y_attr,
                           in vec2 y_range) {
  if (transform == 4.0) {
    // Literal transforms aren't looked up, just returned as is.
    return attr;
  }
  float inrange = domainify(domain, transform, attr, true);
  if (use_texture > 0.) {
    float y_pos = linstep(y_range, y_attr);
    vec4 encoded = texture2D(texture, vec2(y_pos, inrange));
    return RGBAtoFloat(encoded);
  } else {
    return mix(range.x, range.y, inrange);
  }
}

float texture_float_lookup(in sampler2D texture,
                           in vec2 domain,
                           in vec2 range,
                           in float transform,
                           in float attr,
                           in float use_texture) {
  return texture_float_lookup(texture,
                              domain,
                              range,
                              transform,
                              attr,use_texture,
                              1., vec2(0., 2.));
}

vec2 calculate_position(in vec2 position, in float x_scale_type,
                        in vec2 x_domain, in vec2 x_range, in float y_scale_type,
                        in vec2 y_domain, in vec2 y_range, in mat3 window_scale,
                        in mat3 zoom, in sampler2D x_map, in float x_needs_map,
                        in sampler2D y_map, in float y_needs_map
                        ) {
    float x;
    float y;

    if (x_scale_type < 4.0) {
      x = texture_float_lookup(x_map, x_domain, x_range,
        x_scale_type,
        position.x, x_needs_map, 1., vec2(0., 2.)
        );
    } else {
      x = position.x;
    }

    if (x_scale_type < 4.0) {
      y = texture_float_lookup(y_map, y_domain, y_range, y_scale_type,
        position.y, y_needs_map, 1., vec2(0., 2.)
        );
    } else {
      y = position.y;
    }

    vec3 pos2d = vec3(x, y, 1.0) * window_scale * zoom * pixelspace_to_glspace;
    return pos2d.xy;
}

float cubicInOut(float t) {
  return t < 0.5
    ? 4.0 * t * t * t
    : 1. - 4.0 * pow(1. - t, 3.0);
}


vec4 ixToRGBA(in float ix)  {
  float min = fract(ix / 256.);
  float mid = fract((ix - min) / 256.);
  float high = fract((ix - min - mid * 256.) / (256.) / 256.);
  return vec4(min, mid, high, 1.);
}

vec2 circle_jitter(in float ix, in float aspect_ratio, in float time,
                   in float radius, in float speed) {
  vec2 two_gaussians = box_muller(ix, 12.);

  float stagger_time = two_gaussians.y * tau;

  // How long does a circuit take?

  float units_per_period = radius * radius * tau / 2.;
  float units_per_second = speed / 100.;
  float seconds_per_period = units_per_period / units_per_second;
  float time_period = seconds_per_period;
  if (time_period > 1e4) {
    return vec2(0., 0.);
  }

  // Adjust time from the clock to our current spot.
  float varying_time = time + stagger_time * time_period;
  // Where are we from 0 to 1 relative to the time period

  float relative_time = 1. - mod(varying_time, time_period) / time_period;

  float theta = relative_time * tau;

  float r_mult = (sqrt(ix_to_random(ix, 7.)));
  return vec2(cos(theta) * r_mult, aspect_ratio * sin(theta) * r_mult) *
         radius;
}

vec2 calculate_jitter(
  in float jitter_type,
  in float ix, // distinguishing index
  in sampler2D jitter_radius_map,
  in vec2 jitter_radius_domain,
  in vec2 jitter_radius_range,
  in float jitter_radius_transform,
  in float jitter_radius,
  in sampler2D jitter_speed_map, in vec2 jitter_speed_domain,
  in vec2 jitter_speed_range,
  in float jitter_speed_transform,
  in float jitter_speed,
  in float jitter_radius_needs_map,
  in float jitter_speed_needs_map
) {
  if (jitter_type == 0.) {
    // No jitter
    return vec2(0., 0.);
  }

  if (jitter_type == 5.) {
    float time_period = 60.;
    float share = 1./4.;
    float offset = ix_to_random(ix, 12.);
    float fractional = fract((offset * time_period + u_time)/time_period);
    if (fractional > share) {
      return vec2(0., 0.);
    }
    float size = 0.5 * (1. - cos(2. * 3.1415926 * min(fractional/share, 1. - fractional/share)));
    size = clamp(size, 0., 1.);
    return vec2(size, 0.);
  }

  float jitter_r = texture_float_lookup(
    jitter_radius_map, jitter_radius_domain,
    jitter_radius_range,
    jitter_radius_transform, jitter_radius,
    jitter_radius_needs_map,
    1.,
    vec2(0., 2.));

if (jitter_type == 3.) {
    // normally distributed on x and y.
    return jitter_r * box_muller(ix, 1.) * vec2(1., u_width/u_height);
  }
  if (jitter_type == 2.) {
    // uniform in the circle.
    float theta = ix_to_random(ix, 15.) * tau;
    // Rescale.
    float r = jitter_r * sqrt(ix_to_random(ix, 145.));
    return vec2(cos(theta) * r, sin(theta)*r * u_width / u_height);
  }
  /* Jittering that includes motion) */

  float p_jitter_speed =
      texture_float_lookup(jitter_speed_map, jitter_speed_domain,
                          jitter_speed_range,
                          jitter_speed_transform, jitter_speed,
                          jitter_speed_needs_map,  1., vec2(0., 2.));

  if (jitter_type == 1.) {
    return logarithmic_spiral_jitter(
                ix,
                0.005 * jitter_r,                     // a
                1.3302036,                       // angle parameter
                0.005,                                 // angle random
                jitter_r,                             // max radius
                0.03,                                 // random_rotation
                0.06,                                 // random radius
                0.003 * point_size_adjust * jitter_r, // donut.
                .5 * p_jitter_speed * jitter_r / point_size_adjust, // speed
                u_time,                                           // time
                0.8,                                              // acceleration
                2.0,                                              // n_spirals
                .09, //shear
                u_width/u_height         // shear
            );
  }

  if (jitter_type == 4.) {
    // circle
    return circle_jitter(ix, u_width/u_height, u_time, jitter_r, p_jitter_speed);
  }
}

void run_color_fill(in float ease) {
  if (u_only_color >= -1.5) {
    if (u_only_color > -.5 && a_color != u_only_color) {
      gl_Position = discard_me;
      return;
    } else {
      // -1 is a special value meaning 'plot everything'.
      fill = vec4(0., 0., 0., 1. / 255.);
      gl_PointSize = 1.;
    }
  } else {
    if (u_constant_color.r > -1.) {
      fill = vec4(u_constant_color.rgb, u_current_alpha);
    } else {
      float fractional_color = linstep(u_color_domain, a_color);
      fill = texture2D(u_color_map, vec2(0., fractional_color));
      fill = vec4(fill.rgb, u_current_alpha);
    }
    if (ease < 1.) {
      vec4 last_fill;
      if (u_constant_last_color.r > 0.) {
        last_fill = vec4(u_constant_last_color.rgb, u_last_alpha);
      } else {
        float last_fractional = linstep(u_last_color_domain, a_last_color);
        last_fill = texture2D(u_last_color_map, vec2(0., last_fractional));
        // Alpha channel interpolation already happened.
        last_fill = vec4(last_fill.rgb, u_last_alpha);
      }
      // RGB blending is bad--maybe use https://www.shadertoy.com/view/lsdGzN
      // instead?
      fill = mix(last_fill, fill, ease);
    }
  }
}

void main() {

  float ix = buffer_0;

  if (ix > u_maxix) {
    // throwaway points that are too low.
    gl_Position = discard_me;
    return;
  }

 if (u_x_buffer_num > -0.5) {
    a_x = get_buffer(u_x_buffer_num);
  } else {
    a_x = u_x_constant;
  }

  if (u_last_x_buffer_num > -0.5) {
    a_last_x = get_buffer(u_last_x_buffer_num);
  } else {
    a_last_x = u_last_x_constant;
  }

  if (u_y_buffer_num > -0.5) {
    a_y = get_buffer(u_y_buffer_num);
  } else {
    a_y = u_y_constant;
  }

  if (u_last_y_buffer_num > -0.5) {
    a_last_y = get_buffer(u_last_y_buffer_num);
  } else {
    a_last_y = u_last_y_constant;
  }

  if (u_jitter_radius_buffer_num > -0.5) {
    a_jitter_radius = get_buffer(u_jitter_radius_buffer_num);
  } else {
    a_jitter_radius = u_jitter_radius_constant;
  }

  if (u_last_jitter_radius_buffer_num > -0.5) {
    a_last_jitter_radius = get_buffer(u_last_jitter_radius_buffer_num);
  } else {
    a_last_jitter_radius = u_last_jitter_radius_constant;
  }

  if (u_jitter_speed_buffer_num > -0.5) {
    a_jitter_speed = get_buffer(u_jitter_speed_buffer_num);
  } else {
    a_jitter_speed = u_jitter_speed_constant;
  }

  if (u_last_jitter_speed_buffer_num > -0.5) {
    a_last_jitter_speed = get_buffer(u_last_jitter_speed_buffer_num);
  } else {
    a_last_jitter_speed = u_last_jitter_speed_constant;
  }

  if (u_size_buffer_num > -0.5) {
    a_size = get_buffer(u_size_buffer_num);
  } else {
    a_size = u_size_constant;
  }

  if (u_last_size_buffer_num > -0.5) {
    a_last_size = get_buffer(u_last_size_buffer_num);
  } else {
    a_last_size = u_last_size_constant;
  }

  if (u_filter_buffer_num > -0.5) {
    a_filter = get_buffer(u_filter_buffer_num);
  } else {
    a_filter = u_filter_constant;
  }

  if (u_last_filter_buffer_num > -0.5) {
    a_last_filter = get_buffer(u_last_filter_buffer_num);
  } else {
    a_last_filter = u_last_filter_constant;
  }

  if (u_x0_buffer_num > -0.5) {
    a_x0 = get_buffer(u_x0_buffer_num);
  } else {
    a_x0 = u_x0_constant;
  }

  if (u_last_x0_buffer_num > -0.5) {
    a_last_x0 = get_buffer(u_last_x0_buffer_num);
  } else {
    a_last_x0 = u_last_x0_constant;
  }

  if (u_y0_buffer_num > -0.5) {
    a_y0 = get_buffer(u_y0_buffer_num);
  } else {
    a_y0 = u_y0_constant;
  }

  if (u_last_y0_buffer_num > -0.5) {
    a_last_y0 = get_buffer(u_last_y0_buffer_num);
  } else {
    a_last_y0 = u_last_y0_constant;
  }

  if (u_color_buffer_num > -0.5) {
    a_color = get_buffer(u_color_buffer_num);
  } else {
    a_color = ix;
  }

  if (u_last_color_buffer_num > -0.5) {
    a_last_color = get_buffer(u_last_color_buffer_num);
  } else {
    a_last_color = ix;
  }

  pixelspace_to_glspace = mat3(
      2. / u_width, 0., -1.,
      0., - 2. / u_height, 1.,
      0., 0., 1.
  );

  float interpolation =
    interpolate(u_update_time, 0., u_transition_duration);

  float ease = interpolation;
//  float ease = easeCubic(interpolation);
//  from_coord_to_gl = u_window_scale * u_zoom * pixelspace_to_glspace;

  float debug_mode = 0.;


  vec2 position = vec2(a_x, a_y);



  vec2 old_position = vec2(a_last_x, a_last_y);

  old_position = calculate_position(old_position, u_last_x_transform,
     u_last_x_domain, u_last_x_range,
     u_last_y_transform, u_last_y_domain, u_last_y_range,
     u_last_window_scale,
     u_zoom, u_last_x_map, u_last_x_needs_map, u_last_y_map,
     u_last_y_needs_map);

  bool plot_actual_position = u_grid_mode < .5;

  if (plot_actual_position) {
    position = calculate_position(position, u_x_transform,
      u_x_domain, u_x_range,
      u_y_transform, u_y_domain, u_y_range, u_window_scale, u_zoom, u_x_map,
      u_x_needs_map, u_y_map, u_y_needs_map);

    float xpos = clamp((1. + position.x) / 2., 0., 1.);
    float randy = ix_to_random(ix, 13.76);
    float delay = xpos + randy * .1;

    delay = delay * 3.;
    // delay = 0.;
    float frac = interpolate(
      u_update_time,
      delay,
      u_transition_duration + delay
    );

    if (u_position_interpolation_mode > 0.) {
      // If it's a continuous loop, just choose a random point along that loop.
      frac = fract(u_update_time/u_transition_duration);
      frac = fract(frac + randy);
    }

    frac = easeCubic(frac);

    if (frac <= 0.) {
      position = old_position;
    } else if (frac < 1.) {
      // position = mix(old_position, position, u_interpolation);
      frac = fract(frac);
      vec2 midpoint = box_muller(ix, 3.) * .05 *
         dot(old_position - position, old_position - position)
         + old_position / 2. + position / 2.;

      position = mix(
        mix(old_position, midpoint, frac),
        mix(midpoint, position, frac),
        frac);
    }

  } else {
     position.x = -1. + 2. * linscale(u_x_domain, position.x);
    //position.y = -1.0;
    vec2 jitterspec = vec2(
      (ix_to_random(ix, 3.) * a_jitter_radius ) * 2.,
      (ix_to_random(ix, 1.5) * a_jitter_speed ) * 2.
    );

    position = position + jitterspec;
  }

  if (debug_mode > 0.) {
    // Just plot every point.
    gl_PointSize = 1.;
    fill = vec4(1., 1., 1., 1.);
    gl_Position = vec4(position, 1., 1.);
    return;
  }

  float my_filter;
  float last_filter;

  if (u_filter_numeric.r < 0.5) {
    my_filter = texture_float_lookup(u_filter_map, vec2(-2047., 2047.),
                                        vec2(0., 1.),
                                        0., a_filter,
                                        1.,  1., vec2(0., 2.));
  } else {
    my_filter = run_filter(a_filter,
       u_filter_numeric.r, u_filter_numeric.g, u_filter_numeric.b);
  }
  if (u_filter_last_numeric.r < 0.5) {
    last_filter = texture_float_lookup(
      u_last_filter_map, u_last_filter_domain, vec2(0., 1.),
      u_last_filter_transform, a_last_filter, 0.,  1., vec2(0., 2.));
  } else {
    last_filter = run_filter(a_last_filter,
      u_filter_last_numeric.r, u_filter_last_numeric.g, u_filter_last_numeric.b);
  }
  // Progress through the filters at different rates.
  if (ix_to_random(ix, 13.5) > ease) {
    my_filter = last_filter;
  }

  if (my_filter < 0.5) {
    gl_Position = discard_me;
    return;
  }

  
  float size_multiplier = texture_float_lookup(
    u_size_map, u_size_domain, u_size_range,
    u_size_transform, a_size, u_size_needs_map);

  float last_size_multiplier = texture_float_lookup(
    u_last_size_map, u_last_size_domain, u_last_size_range,
                                              u_last_size_transform, a_last_size,
                                              u_last_size_needs_map);

  size_multiplier = u_base_size * 
     mix(last_size_multiplier, size_multiplier, ease);
  float depth_size_adjust = (1.0 - ix / (u_maxix));

  point_size_adjust = exp(log(u_k) * u_zoom_balance);

  gl_PointSize = point_size_adjust * size_multiplier;

  if (plot_actual_position && (u_jitter > 0. || u_last_jitter > 0.)) {

    /* JITTER */

    float jitter_radius_value = a_jitter_radius;

    float jitter_radius_fraction;

    // removed
    if (u_jitter_radius_lookup == -10.) {

      float y_frac =
        linstep(u_jitter_radius_lookup_y_domain,
        u_jitter_radius_lookup_y_constant);
      float x_frac = linstep(u_jitter_radius_lookup_x_domain, a_jitter_radius);

      //x_frac = 0.;
      //y_frac = .8;

      vec4 jitter_radius_texel = texture2D(
        u_jitter_radius_lookup_map,
        vec2(
          // Reversed 'cause of the way it's fed in.
          y_frac, x_frac
        ));


        jitter_radius_fraction = RGBAtoFloat(jitter_radius_texel);

        jitter_radius_value = mix(
          u_jitter_radius_lookup_z_domain.x,
          u_jitter_radius_lookup_z_domain.y,
          jitter_radius_fraction
        );
    } else {
      if (u_jitter == 0.) {
        jitter_radius_value = 0.;
      }
    }
    jitter_radius_value = 0.1;

    vec2 jitter = calculate_jitter(
      u_jitter, ix, u_jitter_radius_map,
      u_jitter_radius_domain,
      u_jitter_radius_range,
      u_jitter_radius_transform,
      jitter_radius_value,
      u_jitter_speed_map, u_jitter_speed_domain,
      u_jitter_speed_range,
       u_jitter_speed_transform, a_jitter_speed,
       u_jitter_radius_needs_map,
       u_jitter_speed_needs_map
    );

    if (ease < 1.) {

      vec2 last_jitter = calculate_jitter(
        //u_jitter,
        u_last_jitter,
        ix,
        u_last_jitter_radius_map,
        u_last_jitter_radius_domain,
        u_last_jitter_radius_range,
        u_last_jitter_radius_transform,
        a_last_jitter_radius,
        u_last_jitter_speed_map, u_last_jitter_speed_domain,
        u_last_jitter_speed_range,
        u_last_jitter_speed_transform, a_last_jitter_speed,
        u_last_jitter_radius_needs_map,
        u_last_jitter_speed_needs_map
      );

    }

    if (u_jitter == 5.) {
      gl_PointSize *= jitter.x;
      jitter = vec2(0., 0.);
      if (gl_PointSize < 0.05) {
        gl_Position = discard_me;
        return;
      }
    }
    gl_Position = vec4(position + 1. * a_jitter_radius * jitter * point_size_adjust, 0., 1.);
  } else {
    gl_Position = vec4(position, 0., 1.);
  }  
  if (u_color_picker_mode > 0.) {
    fill = packFloat(ix);
  } else {
    run_color_fill(ease);
//    fill = packFloat(ix);
  }
  point_size = gl_PointSize;
}
