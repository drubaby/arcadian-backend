## user-machines branch

The purpose of this branch is to reconfigure back-end relationships so that
machine instances are more easily transferred between ppl and locations.

# Renaming models

* Machines should be renamed to "MachineType" to convey that they are archetypical

* LocationMachine should be renamed to "Machine" to convey that is in an *instance* of a machine type
  - Attributes: id, machine_type_id, user_id, location_id

* Rename machine_issues column to be machine_id

# Associate users with machines
 - controller action?

## *User stories* ##

As a user I can buy a machine and have it appear when i query user.machines

As a user I can sell a machine to another user and it then becomes theirs

as a user i can query a particular machine's array of issues

I can query all the issues for my machines
