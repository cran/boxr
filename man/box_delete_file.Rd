% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boxr_delete_restore.R
\name{box_delete_file}
\alias{box_delete_file}
\alias{box_delete_folder}
\alias{box_restore_file}
\alias{box_restore_folder}
\title{Move files within Box, from/to trash directory}
\usage{
box_delete_file(file_id)

box_restore_file(file_id)

box_delete_folder(dir_id)

box_restore_folder(dir_id)
}
\arguments{
\item{file_id}{\code{numeric} or \code{character}, file ID at Box.}

\item{dir_id}{\code{numeric} or \code{character}, folder ID at Box.}
}
\value{
\describe{
\item{\code{box_delete_file()}}{Invisible \code{NULL}, called for side effects.}
\item{\code{box_restore_file()}}{Object with S3 class \code{\link[=boxr_S3_classes]{boxr_file_reference}}.}
\item{\code{box_delete_folder()}}{Invisible \code{NULL}, called for side effects.}
\item{\code{box_restore_folder()}}{Object with S3 class \code{\link[=boxr_S3_classes]{boxr_folder_reference}}.}
}
}
\description{
In the Box context, deleting a file moves it to a special folder
within your Box account: 'Trash'. As of mid-2019, Box' default
\href{https://support.box.com/hc/en-us/articles/360044196093-Managing-Trash}{policy}
is to retain files in Trash for 30 days.
}
\details{
\describe{
\item{\code{box_delete_file()}}{Move a file to Trash.}
\item{\code{box_restore_file()}}{Restore a file from Trash.}
\item{\code{box_delete_folder()}}{Move a folder, including contents, to Trash.}
\item{\code{box_restore_folder()}}{Restore a folder, including contents, from Trash.}
}
}
