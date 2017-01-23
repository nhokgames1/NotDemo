package com.ex.dao;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.ex.model.Student;
@Transactional
public interface StudentDao extends JpaRepository<Student,Long> {
		@Query("from Student s where s.name=:studentName")
		public Student getStudentByName(@Param("studentName")String binhSV);
			
}	
