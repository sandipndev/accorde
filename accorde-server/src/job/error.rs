use thiserror::Error;

use super::JobExecutionError;

#[derive(Error, Debug)]
pub enum JobError {
    #[error("JobError - Sqlx: {0}")]
    Sqlx(#[from] sqlx::Error),
    #[error("JobError - JsonError: {0}")]
    JsonError(#[from] serde_json::Error),
    #[error("JobError - ProcessError: {0}")]
    ProcessError(#[from] crate::process::ProcessError),
}

impl JobExecutionError for JobError {}
