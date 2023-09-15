/*  1  */
SELECT YEAR(`enrolment_date`), COUNT(*)
FROM `students`
GROUP BY  YEAR(`enrolment_date`);

/*  2  */
SELECT `office_address`, COUNT(*) 
FROM `teachers`
GROUP BY `office_address`;

/*  3  */
SELECT AVG(`vote`), `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;

/*  4  */
SELECT `department_id`, COUNT(*)
FROM `degrees`
GROUP BY `department_id`;