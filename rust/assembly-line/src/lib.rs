pub fn production_rate_per_hour(speed: u8) -> f64 {
    let success_rate_100_range = 1..=4;
    let success_rate_90_range = 5..=8;
    let success_rate_77_range = 9..=10;
    let cars_per_hour_at_100_success = 221.0;
    if success_rate_100_range.contains(&speed) {
      speed as f64 * cars_per_hour_at_100_success * 1.0
    } else if success_rate_90_range.contains(&speed) {
      speed as f64 * cars_per_hour_at_100_success * 0.9
    } else if success_rate_77_range.contains(&speed) {
      speed as f64 * cars_per_hour_at_100_success * 0.77
    } else {
      0.0
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    production_rate_per_hour(speed) as u32 / 60
}
