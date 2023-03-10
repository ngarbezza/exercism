// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
// #![allow(unused)]

/// various log levels
#[derive(Clone, PartialEq, Eq, Debug)]
pub enum LogLevel {
    Debug,
    Info,
    Warning,
    Error,
}
/// primary function for emitting logs
pub fn log(level: LogLevel, message: &str) -> String {
    let uppercase_level = format!("[{level:?}]").to_uppercase();
    return format!("{uppercase_level}: {message}")
}
pub fn info(message: &str) -> String {
    return log(LogLevel::Info, message)
}
pub fn warn(message: &str) -> String {
    return log(LogLevel::Warning, message)
}
pub fn error(message: &str) -> String {
    return log(LogLevel::Error, message)
}
