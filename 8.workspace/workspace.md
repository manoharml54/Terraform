Terraform workspaces provide a mechanism to manage multiple, isolated instances of infrastructure using a single Terraform configuration. They allow you to maintain separate state files for different environments (e.g., development, staging, production) within the same working directory, preventing resource conflicts and ensuring consistent deployments.

Subcommands:
    new       Create a new workspace
    list      List Workspaces
    select    Select a workspace
    delete    Delete a workspace
    show      Show the name of the current workspace