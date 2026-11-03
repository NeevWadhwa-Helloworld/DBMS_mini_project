CREATE TABLE company (
    company_id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    industry VARCHAR2(100)
);

CREATE TABLE applicant (
    applicant_id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    resume VARCHAR2(200)
);

CREATE TABLE job (
    job_id NUMBER NOT NULL PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    requirements VARCHAR2(500),
    salary NUMBER(10,2),
    company_id NUMBER NOT NULL,
    CONSTRAINT fk_job_company FOREIGN KEY (company_id) REFERENCES company(company_id)
);

CREATE TABLE application (
    application_id NUMBER NOT NULL PRIMARY KEY,
    applicant_id NUMBER NOT NULL,
    job_id NUMBER NOT NULL,
    status VARCHAR2(30),
    applied_date DATE,
    CONSTRAINT fk_app_applicant FOREIGN KEY (applicant_id) REFERENCES applicant(applicant_id),
    CONSTRAINT fk_app_job FOREIGN KEY (job_id) REFERENCES job(job_id)
);

INSERT INTO company (company_id, name, industry) VALUES (1, 'TechCorp', 'Software');
INSERT INTO company (company_id, name, industry) VALUES (2, 'HealthPlus', 'Healthcare');
INSERT INTO company (company_id, name, industry) VALUES (3, 'FinServe', 'Finance');
INSERT INTO company (company_id, name, industry) VALUES (4, 'EduGlobal', 'Education');
INSERT INTO company (company_id, name, industry) VALUES (5, 'RetailGiant', 'Retail');
INSERT INTO company (company_id, name, industry) VALUES (6, 'AutoMakers', 'Automotive');
INSERT INTO company (company_id, name, industry) VALUES (7, 'GreenEnergy', 'Energy');
INSERT INTO company (company_id, name, industry) VALUES (8, 'BuildIt', 'Construction');
INSERT INTO company (company_id, name, industry) VALUES (9, 'Foodies', 'Hospitality');
INSERT INTO company (company_id, name, industry) VALUES (10, 'LogisticsPro', 'Transportation');
INSERT INTO company (company_id, name, industry) VALUES (11, 'CloudNet', 'IT Services');
INSERT INTO company (company_id, name, industry) VALUES (12, 'MedEquip', 'Manufacturing');
INSERT INTO company (company_id, name, industry) VALUES (13, 'SecureBank', 'Finance');
INSERT INTO company (company_id, name, industry) VALUES (14, 'LearnFast', 'Education');
INSERT INTO company (company_id, name, industry) VALUES (15, 'ShopSmart', 'E-commerce');

INSERT INTO applicant (applicant_id, name, email, resume) VALUES (1, 'Alice Smith', 'alice@email.com', 'alice_resume.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (2, 'Bob Jones', 'bob@email.com', 'bob_resume.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (3, 'Charlie Brown', 'charlie@email.com', 'charlie_r.doc');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (4, 'Diana Prince', 'diana@email.com', 'diana_cv.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (5, 'Evan Wright', 'evan@email.com', 'evan_resume.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (6, 'Fiona Gallagher', 'fiona@email.com', 'fiona_cv.docx');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (7, 'George Lucas', 'george@email.com', 'glucas_resume.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (8, 'Hannah Abbott', 'hannah@email.com', 'h_abbott_cv.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (9, 'Ian Malcolm', 'ian@email.com', 'ian_m_resume.doc');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (10, 'Julia Child', 'julia@email.com', 'jchild_cv.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (11, 'Kevin Hart', 'kevin@email.com', 'khart_resume.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (12, 'Laura Croft', 'laura@email.com', 'lcroft_cv.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (13, 'Mike Ross', 'mike@email.com', 'mross_resume.docx');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (14, 'Nina Sayers', 'nina@email.com', 'nsayers_cv.pdf');
INSERT INTO applicant (applicant_id, name, email, resume) VALUES (15, 'Oscar Isaac', 'oscar@email.com', 'oisaac_resume.pdf');

INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (1, 'Software Engineer', 'Java, SQL', 85000, 1);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (2, 'Data Analyst', 'Python, Tableau', 70000, 3);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (3, 'Registered Nurse', 'BSN, State License', 75000, 2);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (4, 'Teacher', 'Bachelors in Ed', 55000, 4);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (5, 'Store Manager', '5+ years retail experience', 60000, 5);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (6, 'Mechanical Engineer', 'CAD, Manufacturing exp', 82000, 6);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (7, 'Solar Technician', 'Electrical certification', 65000, 7);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (8, 'Project Manager', 'PMP certification', 95000, 8);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (9, 'Executive Chef', 'Culinary degree', 80000, 9);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (10, 'Supply Chain Analyst', 'Logistics background', 72000, 10);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (11, 'Cloud Architect', 'AWS Certified', 120000, 11);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (12, 'Production Supervisor', 'Lean Six Sigma', 68000, 12);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (13, 'Financial Advisor', 'Series 7', 90000, 13);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (14, 'Instructional Designer', 'E-learning tools', 65000, 14);
INSERT INTO job (job_id, title, requirements, salary, company_id) VALUES (15, 'Marketing Manager', 'SEO, SEM', 85000, 15);

INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (1, 1, 1, 'Pending', DATE '2023-10-01');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (2, 2, 2, 'Accepted', DATE '2023-10-02');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (3, 3, 3, 'Rejected', DATE '2023-10-03');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (4, 4, 4, 'Interviewing', DATE '2023-10-04');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (5, 5, 5, 'Pending', DATE '2023-10-05');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (6, 6, 6, 'Accepted', DATE '2023-10-06');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (7, 7, 7, 'Pending', DATE '2023-10-07');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (8, 8, 8, 'Interviewing', DATE '2023-10-08');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (9, 9, 9, 'Rejected', DATE '2023-10-09');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (10, 10, 10, 'Accepted', DATE '2023-10-10');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (11, 11, 11, 'Pending', DATE '2023-10-11');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (12, 12, 12, 'Interviewing', DATE '2023-10-12');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (13, 13, 13, 'Rejected', DATE '2023-10-13');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (14, 14, 14, 'Pending', DATE '2023-10-14');
INSERT INTO application (application_id, applicant_id, job_id, status, applied_date) VALUES (15, 15, 15, 'Accepted', DATE '2023-10-15');

COMMIT;