/*  1  */
SELECT `students`.*, `degrees`.*
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
AND `degrees`.`name` = 'Corso di Laurea in Economia';

/*  2  */
SELECT `departments`.*, `degrees`.*
FROM `departments`
INNER JOIN `degrees`
ON `degrees`.`department_id` = `departments`.`id`
AND `degrees`.`level` = 'magistrale'
AND `departments`.`name` = 'Dipartimento di Neuroscienze';

/*  3  */
SELECT `course_teacher`.*,  `courses`.*
FROM `courses`
INNER JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
AND `course_teacher`.`teacher_id` = 44;

/*  4  */
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`name` ASC;

/*  5  */
SELECT `degrees`.`name`, `courses`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees`
INNER JOIN `courses`
	ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `course_teacher`
INNER JOIN `teachers`
	ON `courses`.`id` = `course_teacher`.`course_id`
	AND `course_teacher`.`teacher_id` = `teachers`.`id`
ORDER BY `degrees`.`name` ASC;

/*  6  */
SELECT `departments`.`name`,`teachers`.`name`, `teachers`.`surname`
FROM `departments`
INNER JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
    AND `departments`.`name` = 'Dipartimento di Matematica'
INNER JOIN `courses`
	ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
GROUP BY `teachers`.`name`, `teachers`.`surname`;

/*  7  */
