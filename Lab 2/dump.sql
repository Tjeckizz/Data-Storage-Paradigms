--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: contact_person_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_person_emails (
    email character varying(100) NOT NULL,
    student_id integer NOT NULL,
    relationship character varying(100)
);


ALTER TABLE public.contact_person_emails OWNER TO postgres;

--
-- Name: contact_person_phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_person_phone_numbers (
    phone_number character varying(100) NOT NULL,
    student_id integer NOT NULL,
    relationship character varying(100)
);


ALTER TABLE public.contact_person_phone_numbers OWNER TO postgres;

--
-- Name: instructor_availability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_availability (
    instructor_id integer NOT NULL,
    from_time timestamp(6) without time zone,
    to_time timestamp(6) without time zone
);


ALTER TABLE public.instructor_availability OWNER TO postgres;

--
-- Name: instructor_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_emails (
    email character varying(100) NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instructor_emails OWNER TO postgres;

--
-- Name: instructor_instruments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_instruments (
    instructor_id integer NOT NULL,
    instrument_type character varying(100) NOT NULL
);


ALTER TABLE public.instructor_instruments OWNER TO postgres;

--
-- Name: instructor_phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_phone_numbers (
    phone_number character varying(100) NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instructor_phone_numbers OWNER TO postgres;

--
-- Name: instructors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructors (
    instructor_id integer NOT NULL,
    personal_number character varying(12) NOT NULL,
    name character varying(100),
    street_name character varying(100),
    zip_code character varying(10),
    city character varying(100)
);


ALTER TABLE public.instructors OWNER TO postgres;

--
-- Name: instructors_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.instructors ALTER COLUMN instructor_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.instructors_instructor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: instruments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instruments (
    instrument_id integer NOT NULL,
    instrument_type character varying(100) NOT NULL,
    instrument_brand character varying(100),
    available boolean NOT NULL
);


ALTER TABLE public.instruments OWNER TO postgres;

--
-- Name: instruments_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.instruments ALTER COLUMN instrument_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.instruments_instrument_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: leased_instruments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leased_instruments (
    student_id integer NOT NULL,
    instrument_id integer NOT NULL,
    lease_period_start date NOT NULL,
    lease_period_end date,
    price_per_month character varying(100) NOT NULL
);


ALTER TABLE public.leased_instruments OWNER TO postgres;

--
-- Name: lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lessons (
    lesson_id integer NOT NULL,
    price_id character varying(100) NOT NULL,
    start_time timestamp without time zone NOT NULL,
    instructor_id integer NOT NULL,
    min_student_limit character varying(100),
    max_student_limit character varying(100),
    target_genre character varying(100),
    instrument_type character varying(100),
    lesson_type character varying(100) NOT NULL,
    skill_level character varying(100) NOT NULL,
    end_time timestamp(6) without time zone,
    location character varying(100) NOT NULL
);


ALTER TABLE public.lessons OWNER TO postgres;

--
-- Name: lessons_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.lessons ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lessons_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: pricing_schemes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_schemes (
    price_id character varying(100) NOT NULL,
    lesson_type character varying(100) NOT NULL,
    skill_level character varying(100) NOT NULL,
    instructor_lesson_salary character varying(100),
    lesson_price character varying(100)
);


ALTER TABLE public.pricing_schemes OWNER TO postgres;

--
-- Name: siblings_on_school; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siblings_on_school (
    student_id integer NOT NULL,
    sibling_id integer NOT NULL
);


ALTER TABLE public.siblings_on_school OWNER TO postgres;

--
-- Name: student_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_emails (
    email character varying(100) NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.student_emails OWNER TO postgres;

--
-- Name: student_lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_lessons (
    student_id integer NOT NULL,
    lesson_id integer NOT NULL,
    price_id character varying(100) NOT NULL
);


ALTER TABLE public.student_lessons OWNER TO postgres;

--
-- Name: student_phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_phone_numbers (
    phone_number character varying(100) NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.student_phone_numbers OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    personal_number character varying(12) NOT NULL,
    name character varying(100),
    street_name character varying(100),
    zip_code character varying(10),
    city character varying(100),
    discount_percentage character varying(10) NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.students ALTER COLUMN student_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.students_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: contact_person_emails contact_person_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_emails
    ADD CONSTRAINT contact_person_email_pkey PRIMARY KEY (email);


--
-- Name: contact_person_phone_numbers contact_person_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_phone_numbers
    ADD CONSTRAINT contact_person_phone_numbers_pkey PRIMARY KEY (phone_number);


--
-- Name: instructor_emails instructor_phone_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_emails
    ADD CONSTRAINT instructor_phone_emails_pkey PRIMARY KEY (email);


--
-- Name: instructor_phone_numbers instructor_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_phone_numbers
    ADD CONSTRAINT instructor_phone_numbers_pkey PRIMARY KEY (phone_number);


--
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (instructor_id);


--
-- Name: instruments instruments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instruments_pkey PRIMARY KEY (instrument_id);


--
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (lesson_id);


--
-- Name: pricing_schemes pricing_scheme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_schemes
    ADD CONSTRAINT pricing_scheme_pkey PRIMARY KEY (price_id);


--
-- Name: student_phone_numbers student_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phone_numbers
    ADD CONSTRAINT student_phone_numbers_pkey PRIMARY KEY (phone_number);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: contact_person_emails contact_person_email_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_emails
    ADD CONSTRAINT contact_person_email_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: contact_person_phone_numbers contact_person_phone_numbers_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_phone_numbers
    ADD CONSTRAINT contact_person_phone_numbers_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: instructor_availability instructor_availability_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_availability
    ADD CONSTRAINT instructor_availability_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructors(instructor_id) ON DELETE CASCADE;


--
-- Name: instructor_instruments instructor_instruments_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_instruments
    ADD CONSTRAINT instructor_instruments_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructors(instructor_id) ON DELETE CASCADE;


--
-- Name: instructor_emails instructor_phone_emails_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_emails
    ADD CONSTRAINT instructor_phone_emails_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructors(instructor_id) ON DELETE CASCADE;


--
-- Name: instructor_phone_numbers instructor_phone_numbers_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_phone_numbers
    ADD CONSTRAINT instructor_phone_numbers_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructors(instructor_id) ON DELETE CASCADE;


--
-- Name: leased_instruments leased_instruments_instrument_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leased_instruments
    ADD CONSTRAINT leased_instruments_instrument_id_fkey FOREIGN KEY (instrument_id) REFERENCES public.instruments(instrument_id);


--
-- Name: leased_instruments leased_instruments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leased_instruments
    ADD CONSTRAINT leased_instruments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: lessons lessons_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructors(instructor_id);


--
-- Name: lessons lessons_price_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.pricing_schemes(price_id);


--
-- Name: siblings_on_school siblings_on_school_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings_on_school
    ADD CONSTRAINT siblings_on_school_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: student_emails student_emails_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_emails
    ADD CONSTRAINT student_emails_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: student_lessons student_lessons_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_lessons
    ADD CONSTRAINT student_lessons_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id) ON DELETE CASCADE;


--
-- Name: student_lessons student_lessons_price_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_lessons
    ADD CONSTRAINT student_lessons_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.pricing_schemes(price_id);


--
-- Name: student_lessons student_lessons_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_lessons
    ADD CONSTRAINT student_lessons_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: student_phone_numbers student_phone_numbers_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phone_numbers
    ADD CONSTRAINT student_phone_numbers_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

