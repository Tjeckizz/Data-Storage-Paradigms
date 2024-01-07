CREATE VIEW yearly_lessons AS
SELECT
   TO_CHAR(start_time, 'Mon') AS Month,
   COUNT(*) AS Total,
   COUNT(CASE WHEN lesson_type = 'Solitary' THEN 1 END) AS Individual,
   COUNT(CASE WHEN lesson_type = 'Group' THEN 1 END) AS Group,
   COUNT(CASE WHEN lesson_type = 'Ensemble' THEN 1 END) AS Ensemble
FROM
   lessons
WHERE
   EXTRACT(YEAR FROM start_time) = 2023 -- Specify the desired year
GROUP BY
   TO_CHAR(start_time, 'Mon')
ORDER BY
   TO_DATE(TO_CHAR(start_time, 'Mon'), 'Mon');

CREATE VIEW siblings AS
WITH SiblingCounts AS (
  SELECT
    student_id AS id1,
    sibling_id AS id2
  FROM
    siblings_on_school
  UNION
  SELECT
    sibling_id AS id1,
    student_id AS id2
  FROM
    siblings_on_school)
SELECT
  num_siblings AS "No of Siblings",
  COUNT(*) AS "No of Students"
FROM (
  SELECT
    students.student_id,
    COALESCE(COUNT(DISTINCT id2), 0) AS num_siblings
  FROM
    students
    LEFT JOIN SiblingCounts ON students.student_id = SiblingCounts.id1
  GROUP BY
    students.student_id
) AS SiblingCountsGrouped
GROUP BY
  num_siblings
ORDER BY
  num_siblings;

CREATE MATERIALIZED VIEW instructor_lessons_this_month AS
SELECT
   i.instructor_id AS "Instructor Id",
   i.name AS "Name",
   COUNT(l.lesson_id) AS "No of Lessons"
FROM
   instructors i
JOIN
   lessons l ON i.instructor_id = l.instructor_id
WHERE
   EXTRACT(MONTH FROM l.start_time) = EXTRACT(MONTH FROM CURRENT_DATE) -- Filter for the current month
GROUP BY
   i.instructor_id, i.name
HAVING
   COUNT(l.lesson_id) > 0 -- Adjust this threshold as needed
ORDER BY
   COUNT(l.lesson_id) DESC;
   
SELECT * FROM public.yearly_lessons;
SELECT * FROM public.siblings;
SELECT * FROM public.instructor_lessons_this_month;