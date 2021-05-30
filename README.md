# Project Progress Reports App

## The Application Structure

```
User (Model)

- email:string
- password:string
- full_name:string

- has_many :projects
- has_many :reports

Instructor (Model)

- email:string
- password:string
- full_name:string

Project (Model)

- name:string
- user_id:integer

- belongs_to :user
- has_many :reports

Report (Model)

- title:string
- description:text
- comment:text
- files(attachments)
- user_id:integer
- project_id:integer

- belongs_to :user
- belongs_to :project
```
