# Gearman 

### [官网](http://gearman.org/)

### 命令
- 查看任务状态: gearadmin --status
    - Column 0​ Job/task name​
    - Column 1​ Number of unfinished tasks​
    - Column 2​ Number of currently running tasks​
    - Column 3​ Number of workers that can handle that task

- 放弃任务 gearadmin --drop-function {taskname}
    - taskname 是上面命令的 Column 0, 不支持批量操作