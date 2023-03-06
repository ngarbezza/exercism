pub fn production_rate_per_hour(speed: u8) -> f64 {
    let success_rate;
    let cars_per_hour_at_100_success = 221.0;
    if (1..=4).contains(&speed) {
      success_rate = 1.0
    } else if (5..=8).contains(&speed) {
      success_rate = 0.9
    } else if (9..=10).contains(&speed) {
      success_rate = 0.77
    } else {
      success_rate = 0.0
    }

    speed as f64 * cars_per_hour_at_100_success * success_rate
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    production_rate_per_hour(speed) as u32 / 60
}
