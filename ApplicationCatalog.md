# Application Catalog

## Argonautica

*Argonautica* is a simple application that allows the user to upload a JSON file, edit it, and then download the edited version (potentially with a new name).

Argonautica, originally, was the name of a poem about Jason (you know, because you are working with JSON files) and the Argonauts. See [Wikipedia](https://en.wikipedia.org/wiki/Argonautica) for information or [Project Gutenberg](https://gutenberg.org/files/830/830-h/830-h.htm) to read it.

### TODO

* pie-in-the-sky - put the JSON editor in a tabbed control and have another tab be a set of components to make editing the JSON more user friendly.

## versionStamp

*versionStamp* is a simple module that reads and writes version numbers (datetime stamps) to the Retool database. As a module, it can be embedded in any Retool app.

### Module Inputs

*versionStamp* expects the following inputs:

* inputAppName - the name of the application to display in the modal (such as `versionStamp`).

* inputCopyright - copyright information (such as `Copyright (C) May 17, 2024 Walter March; MIT License`).

* inputDeveloper - a Retool group or Retool user email indicating the users who should be allowed to update the version of the app in which the module is embedded (such as `admin`).

### Expected Retool Database table

*versionStamp* also expects a Retool database table named `app_versions` with the following fields:

* `app_name` - Primary key; Field type: Text; PostgreSQL type: TEXT; Nullable: false; Unique: true; Default value: No Default.

* `current_version` Field type: Text; PostgreSQL type: TEXT; Nullable: false; Unique: false; Default value: No Default.
