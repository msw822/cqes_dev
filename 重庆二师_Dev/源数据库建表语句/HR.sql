/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.4.0

Source Server         : renshi
Source Server Version : 110200
Source Host           : 10.2.15.146:1521
Source Schema         : HR

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2018-02-03 10:26:23
*/


-- ----------------------------
-- Table structure for COUNTRIES
-- ----------------------------
DROP TABLE "HR"."COUNTRIES";
CREATE TABLE "HR"."COUNTRIES" (
"COUNTRY_ID" CHAR(2 BYTE) NOT NULL ,
"COUNTRY_NAME" VARCHAR2(40 BYTE) NULL ,
"REGION_ID" NUMBER NULL ,
PRIMARY KEY ("COUNTRY_ID")
)
ORGANIZATION INDEX NOLOGGING NOCOMPRESS PCTTHRESHOLD 50 

;
COMMENT ON TABLE "HR"."COUNTRIES" IS 'country table. Contains 25 rows. References with locations table.';
COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_ID" IS 'Primary key of countries table.';
COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_NAME" IS 'Country name';
COMMENT ON COLUMN "HR"."COUNTRIES"."REGION_ID" IS 'Region ID for the country. Foreign key to region_id column in the departments table.';

-- ----------------------------
-- Table structure for DEPARTMENTS
-- ----------------------------
DROP TABLE "HR"."DEPARTMENTS";
CREATE TABLE "HR"."DEPARTMENTS" (
"DEPARTMENT_ID" NUMBER(4) NOT NULL ,
"DEPARTMENT_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"MANAGER_ID" NUMBER(6) NULL ,
"LOCATION_ID" NUMBER(4) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "HR"."DEPARTMENTS" IS 'Departments table that shows details of departments where employees
work. Contains 27 rows; references with locations, employees, and job_history tables.';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_ID" IS 'Primary key column of departments table.';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_NAME" IS 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."MANAGER_ID" IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."LOCATION_ID" IS 'Location id where a department is located. Foreign key to location_id column of locations table.';

-- ----------------------------
-- Table structure for EMPLOYEES
-- ----------------------------
DROP TABLE "HR"."EMPLOYEES";
CREATE TABLE "HR"."EMPLOYEES" (
"EMPLOYEE_ID" NUMBER(6) NOT NULL ,
"FIRST_NAME" VARCHAR2(20 BYTE) NULL ,
"LAST_NAME" VARCHAR2(25 BYTE) NOT NULL ,
"EMAIL" VARCHAR2(25 BYTE) NOT NULL ,
"PHONE_NUMBER" VARCHAR2(20 BYTE) NULL ,
"HIRE_DATE" DATE NOT NULL ,
"JOB_ID" VARCHAR2(10 BYTE) NOT NULL ,
"SALARY" NUMBER(8,2) NULL ,
"COMMISSION_PCT" NUMBER(2,2) NULL ,
"MANAGER_ID" NUMBER(6) NULL ,
"DEPARTMENT_ID" NUMBER(4) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "HR"."EMPLOYEES" IS 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."EMPLOYEE_ID" IS 'Primary key of employees table.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."FIRST_NAME" IS 'First name of the employee. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."LAST_NAME" IS 'Last name of the employee. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."EMAIL" IS 'Email id of the employee';
COMMENT ON COLUMN "HR"."EMPLOYEES"."PHONE_NUMBER" IS 'Phone number of the employee; includes country code and area code';
COMMENT ON COLUMN "HR"."EMPLOYEES"."HIRE_DATE" IS 'Date when the employee started on this job. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."JOB_ID" IS 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."SALARY" IS 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
COMMENT ON COLUMN "HR"."EMPLOYEES"."COMMISSION_PCT" IS 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
COMMENT ON COLUMN "HR"."EMPLOYEES"."MANAGER_ID" IS 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
COMMENT ON COLUMN "HR"."EMPLOYEES"."DEPARTMENT_ID" IS 'Department id where employee works; foreign key to department_id
column of the departments table';

-- ----------------------------
-- Table structure for JOB_HISTORY
-- ----------------------------
DROP TABLE "HR"."JOB_HISTORY";
CREATE TABLE "HR"."JOB_HISTORY" (
"EMPLOYEE_ID" NUMBER(6) NOT NULL ,
"START_DATE" DATE NOT NULL ,
"END_DATE" DATE NOT NULL ,
"JOB_ID" VARCHAR2(10 BYTE) NOT NULL ,
"DEPARTMENT_ID" NUMBER(4) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "HR"."JOB_HISTORY" IS 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."EMPLOYEE_ID" IS 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."START_DATE" IS 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."END_DATE" IS 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."JOB_ID" IS 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."DEPARTMENT_ID" IS 'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';

-- ----------------------------
-- Table structure for JOBS
-- ----------------------------
DROP TABLE "HR"."JOBS";
CREATE TABLE "HR"."JOBS" (
"JOB_ID" VARCHAR2(10 BYTE) NOT NULL ,
"JOB_TITLE" VARCHAR2(35 BYTE) NOT NULL ,
"MIN_SALARY" NUMBER(6) NULL ,
"MAX_SALARY" NUMBER(6) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "HR"."JOBS" IS 'jobs table with job titles and salary ranges. Contains 19 rows.
References with employees and job_history table.';
COMMENT ON COLUMN "HR"."JOBS"."JOB_ID" IS 'Primary key of jobs table.';
COMMENT ON COLUMN "HR"."JOBS"."JOB_TITLE" IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
COMMENT ON COLUMN "HR"."JOBS"."MIN_SALARY" IS 'Minimum salary for a job title.';
COMMENT ON COLUMN "HR"."JOBS"."MAX_SALARY" IS 'Maximum salary for a job title';

-- ----------------------------
-- Table structure for LOCATIONS
-- ----------------------------
DROP TABLE "HR"."LOCATIONS";
CREATE TABLE "HR"."LOCATIONS" (
"LOCATION_ID" NUMBER(4) NOT NULL ,
"STREET_ADDRESS" VARCHAR2(40 BYTE) NULL ,
"POSTAL_CODE" VARCHAR2(12 BYTE) NULL ,
"CITY" VARCHAR2(30 BYTE) NOT NULL ,
"STATE_PROVINCE" VARCHAR2(25 BYTE) NULL ,
"COUNTRY_ID" CHAR(2 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "HR"."LOCATIONS" IS 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';
COMMENT ON COLUMN "HR"."LOCATIONS"."LOCATION_ID" IS 'Primary key of locations table';
COMMENT ON COLUMN "HR"."LOCATIONS"."STREET_ADDRESS" IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
COMMENT ON COLUMN "HR"."LOCATIONS"."POSTAL_CODE" IS 'Postal code of the location of an office, warehouse, or production site
of a company. ';
COMMENT ON COLUMN "HR"."LOCATIONS"."CITY" IS 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
COMMENT ON COLUMN "HR"."LOCATIONS"."STATE_PROVINCE" IS 'State or Province where an office, warehouse, or production site of a
company is located.';
COMMENT ON COLUMN "HR"."LOCATIONS"."COUNTRY_ID" IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';

-- ----------------------------
-- Table structure for REGIONS
-- ----------------------------
DROP TABLE "HR"."REGIONS";
CREATE TABLE "HR"."REGIONS" (
"REGION_ID" NUMBER NOT NULL ,
"REGION_NAME" VARCHAR2(25 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- View structure for EMP_DETAILS_VIEW
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "HR"."EMP_DETAILS_VIEW" AS 
SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY 
CONSTRAINTS "SYS_C0011032";

-- ----------------------------
-- Procedure structure for ADD_JOB_HISTORY
-- ----------------------------
CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY"
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;
/

-- ----------------------------
-- Procedure structure for SECURE_DML
-- ----------------------------
CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML"
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;
/

-- ----------------------------
-- Sequence structure for DEPARTMENTS_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."DEPARTMENTS_SEQ";
CREATE SEQUENCE "HR"."DEPARTMENTS_SEQ"
 INCREMENT BY 10
 MINVALUE 1
 MAXVALUE 9990
 START WITH 280
 NOCACHE ;

-- ----------------------------
-- Sequence structure for EMPLOYEES_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."EMPLOYEES_SEQ";
CREATE SEQUENCE "HR"."EMPLOYEES_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 207
 NOCACHE ;

-- ----------------------------
-- Sequence structure for LOCATIONS_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."LOCATIONS_SEQ";
CREATE SEQUENCE "HR"."LOCATIONS_SEQ"
 INCREMENT BY 100
 MINVALUE 1
 MAXVALUE 9900
 START WITH 3300
 NOCACHE ;

-- ----------------------------
-- Indexes structure for table COUNTRIES
-- ----------------------------

-- ----------------------------
-- Checks structure for table COUNTRIES
-- ----------------------------
ALTER TABLE "HR"."COUNTRIES" ADD CHECK ("COUNTRY_ID" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table DEPARTMENTS
-- ----------------------------
CREATE INDEX "HR"."DEPT_LOCATION_IX"
ON "HR"."DEPARTMENTS" ("LOCATION_ID" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table DEPARTMENTS
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENTS" ADD CHECK ("DEPARTMENT_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table DEPARTMENTS
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENTS" ADD PRIMARY KEY ("DEPARTMENT_ID");

-- ----------------------------
-- Indexes structure for table EMPLOYEES
-- ----------------------------
CREATE INDEX "HR"."EMP_DEPARTMENT_IX"
ON "HR"."EMPLOYEES" ("DEPARTMENT_ID" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."EMP_JOB_IX"
ON "HR"."EMPLOYEES" ("JOB_ID" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."EMP_MANAGER_IX"
ON "HR"."EMPLOYEES" ("MANAGER_ID" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."EMP_NAME_IX"
ON "HR"."EMPLOYEES" ("LAST_NAME" ASC, "FIRST_NAME" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table EMPLOYEES
-- ----------------------------
CREATE OR REPLACE TRIGGER "HR"."SECURE_EMPLOYEES" BEFORE INSERT OR DELETE OR UPDATE ON "HR"."EMPLOYEES" REFERENCING OLD AS "OLD" NEW AS "NEW" DISABLE
BEGIN
  secure_dml;
END secure_employees;CREATE OR REPLACE TRIGGER "HR"."UPDATE_JOB_HISTORY" AFTER UPDATE OF "DEPARTMENT_ID","JOB_ID" ON "HR"."EMPLOYEES" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;
-- ----------------------------
-- Uniques structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD UNIQUE ("EMAIL");

-- ----------------------------
-- Checks structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD CHECK ("EMAIL" IS NOT NULL);
ALTER TABLE "HR"."EMPLOYEES" ADD CHECK ("HIRE_DATE" IS NOT NULL);
ALTER TABLE "HR"."EMPLOYEES" ADD CHECK ("JOB_ID" IS NOT NULL);
ALTER TABLE "HR"."EMPLOYEES" ADD CHECK ("LAST_NAME" IS NOT NULL);
ALTER TABLE "HR"."EMPLOYEES" ADD CHECK (salary > 0);

-- ----------------------------
-- Primary Key structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD PRIMARY KEY ("EMPLOYEE_ID");

-- ----------------------------
-- Indexes structure for table JOB_HISTORY
-- ----------------------------
CREATE INDEX "HR"."JHIST_DEPARTMENT_IX"
ON "HR"."JOB_HISTORY" ("DEPARTMENT_ID" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."JHIST_EMPLOYEE_IX"
ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."JHIST_JOB_IX"
ON "HR"."JOB_HISTORY" ("JOB_ID" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table JOB_HISTORY
-- ----------------------------
ALTER TABLE "HR"."JOB_HISTORY" ADD CHECK (end_date > start_date);
ALTER TABLE "HR"."JOB_HISTORY" ADD CHECK ("EMPLOYEE_ID" IS NOT NULL);
ALTER TABLE "HR"."JOB_HISTORY" ADD CHECK ("END_DATE" IS NOT NULL);
ALTER TABLE "HR"."JOB_HISTORY" ADD CHECK ("JOB_ID" IS NOT NULL);
ALTER TABLE "HR"."JOB_HISTORY" ADD CHECK ("START_DATE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table JOB_HISTORY
-- ----------------------------
ALTER TABLE "HR"."JOB_HISTORY" ADD PRIMARY KEY ("EMPLOYEE_ID", "START_DATE");

-- ----------------------------
-- Indexes structure for table JOBS
-- ----------------------------

-- ----------------------------
-- Checks structure for table JOBS
-- ----------------------------
ALTER TABLE "HR"."JOBS" ADD CHECK ("JOB_TITLE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table JOBS
-- ----------------------------
ALTER TABLE "HR"."JOBS" ADD PRIMARY KEY ("JOB_ID");

-- ----------------------------
-- Indexes structure for table LOCATIONS
-- ----------------------------
CREATE INDEX "HR"."LOC_CITY_IX"
ON "HR"."LOCATIONS" ("CITY" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."LOC_COUNTRY_IX"
ON "HR"."LOCATIONS" ("COUNTRY_ID" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "HR"."LOC_STATE_PROVINCE_IX"
ON "HR"."LOCATIONS" ("STATE_PROVINCE" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table LOCATIONS
-- ----------------------------
ALTER TABLE "HR"."LOCATIONS" ADD CHECK ("CITY" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table LOCATIONS
-- ----------------------------
ALTER TABLE "HR"."LOCATIONS" ADD PRIMARY KEY ("LOCATION_ID");

-- ----------------------------
-- Indexes structure for table REGIONS
-- ----------------------------

-- ----------------------------
-- Checks structure for table REGIONS
-- ----------------------------
ALTER TABLE "HR"."REGIONS" ADD CHECK ("REGION_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table REGIONS
-- ----------------------------
ALTER TABLE "HR"."REGIONS" ADD PRIMARY KEY ("REGION_ID");

-- ----------------------------
-- Foreign Key structure for table "HR"."COUNTRIES"
-- ----------------------------
ALTER TABLE "HR"."COUNTRIES" ADD FOREIGN KEY ("REGION_ID") REFERENCES "HR"."REGIONS" ("REGION_ID");

-- ----------------------------
-- Foreign Key structure for table "HR"."DEPARTMENTS"
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENTS" ADD FOREIGN KEY ("LOCATION_ID") REFERENCES "HR"."LOCATIONS" ("LOCATION_ID");
ALTER TABLE "HR"."DEPARTMENTS" ADD FOREIGN KEY ("MANAGER_ID") REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID");

-- ----------------------------
-- Foreign Key structure for table "HR"."EMPLOYEES"
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID");
ALTER TABLE "HR"."EMPLOYEES" ADD FOREIGN KEY ("JOB_ID") REFERENCES "HR"."JOBS" ("JOB_ID");
ALTER TABLE "HR"."EMPLOYEES" ADD FOREIGN KEY ("MANAGER_ID") REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID");

-- ----------------------------
-- Foreign Key structure for table "HR"."JOB_HISTORY"
-- ----------------------------
ALTER TABLE "HR"."JOB_HISTORY" ADD FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID");
ALTER TABLE "HR"."JOB_HISTORY" ADD FOREIGN KEY ("EMPLOYEE_ID") REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID");
ALTER TABLE "HR"."JOB_HISTORY" ADD FOREIGN KEY ("JOB_ID") REFERENCES "HR"."JOBS" ("JOB_ID");

-- ----------------------------
-- Foreign Key structure for table "HR"."LOCATIONS"
-- ----------------------------
ALTER TABLE "HR"."LOCATIONS" ADD FOREIGN KEY ("COUNTRY_ID") REFERENCES "HR"."COUNTRIES" ("COUNTRY_ID");
