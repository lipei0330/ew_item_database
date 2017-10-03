## Design the users tables ##

Assume that one user has one unique **UserID**, one **FamilyName** and more than one children. Therefore, we need to create a separate table for children.

**User_tbl** includes below attributes:

- UserID(**PK**)
- DateCreated
- FamilyName
- Address(Address will be in a separate table in the future as **State City Street**)
- Region

**children_tbl** includes below attributes:

- ChildID (**PK**)
- UserID(**FK**)
- ChildName
- Gender
- Age
- TopSize
- BottomSize
- Premium/Deluxe

## Generate sample data in two tables for training ##





