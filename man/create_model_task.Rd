% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_model_task.R
\name{create_model_task}
\alias{create_model_task}
\title{Create an object of class \code{model_task}}
\usage{
create_model_task(task_ids, output_type, target_metadata)
}
\arguments{
\item{task_ids}{object of class \code{model_task}.}

\item{output_type}{object of class \code{output_type}.}

\item{target_metadata}{object of class \code{target_metadata}.}
}
\value{
a named list of class \code{model_task}.
}
\description{
Create an object of class \code{model_task} representing a model task. Multiple
model tasks can be combined using function \code{\link[=create_model_tasks]{create_model_tasks()}}.
}
\examples{
create_model_task(
  task_ids = create_task_ids(
    create_task_id("origin_date",
      required = NULL,
      optional = c(
        "2023-01-02",
        "2023-01-09",
        "2023-01-16"
      )
    ),
    create_task_id("location",
      required = "US",
      optional = c("01", "02", "04", "05", "06")
    ),
    create_task_id("horizon",
      required = 1L,
      optional = 2:4
    )
  ),
  output_type = create_output_type(
    create_output_type_mean(
      is_required = TRUE,
      value_type = "double",
      value_minimum = 0L
    )
  ),
  target_metadata = create_target_metadata(
    create_target_metadata_item(
      target_id = "inc hosp",
      target_name = "Weekly incident influenza hospitalizations",
      target_units = "rate per 100,000 population",
      target_keys = NULL,
      target_type = "discrete",
      is_step_ahead = TRUE,
      time_unit = "week"
    )
  )
)
}
\seealso{
\code{\link[=create_task_ids]{create_task_ids()}}, \code{\link[=create_output_type]{create_output_type()}}, \code{\link[=create_target_metadata]{create_target_metadata()}},
\code{\link[=create_model_tasks]{create_model_tasks()}}
}
