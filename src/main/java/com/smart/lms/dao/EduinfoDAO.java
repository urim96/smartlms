package com.smart.lms.dao;

import java.sql.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.lms.util.Pagination;
import com.smart.lms.vo.AttendClassVO;
import com.smart.lms.vo.ClassVO;
import com.smart.lms.vo.GradeVO;
import com.smart.lms.vo.ProfessorVO;
import com.smart.lms.vo.StudentVO;
import com.smart.lms.vo.TaskVO;
import com.smart.lms.vo.TestVO;
import com.smart.lms.vo.TodateVO;

@Repository
public class EduinfoDAO {
   
    @Autowired private SqlSessionTemplate mybatis;

   public int attendanceTotalCnt(Pagination pg) {
      return mybatis.selectOne("eduinfoDAO.attendanceTotalCnt",pg);
   }

   public List<TodateVO> attendanceList(Pagination pg) {
      return mybatis.selectList("eduinfoDAO.attendanceList", pg);
   }
   
   public List<AttendClassVO> attSearch(Pagination pg) {
      return mybatis.selectList("eduinfoDAO.attendanceList", pg);
   }

   public List<ClassVO> classList(ClassVO vo) {
      return mybatis.selectList("eduinfoDAO.classList", vo);
   }

   public void insertAttendanceTx(TodateVO vo) {
      mybatis.insert("eduinfoDAO.insertAttendanceTx", vo);
   }

   public int updateAttendanceTx(TodateVO vo) {
      return mybatis.update("eduinfoDAO.updateAttendanceTx", vo);
   }

   public int toCnt(Date date) {
      return mybatis.selectOne("eduinfoDAO.toCnt", date);
   }

   public void classInsertTx(ClassVO vo) {
      mybatis.insert("eduinfoDAO.classInsertTx", vo);
   }

   public int classAllTotalCnt(Pagination pg) {
      return mybatis.selectOne("eduinfoDAO.classAllTotalCnt",pg);
   }

   public List<ClassVO> classAllList(Pagination pg) {
      return mybatis.selectList("eduinfoDAO.classAllList", pg);
   }

   public ClassVO classSelect(int c_number) {
      return mybatis.selectOne("eduinfoDAO.classSelect",c_number);
   }

   public int classUpdateTx(ClassVO vo) {
      return mybatis.update("eduinfoDAO.classUpdateTx", vo);
   }

   public int stuAllCnt(Pagination pg) {
      return mybatis.selectOne("eduinfoDAO.stuAllCnt",pg);
   }

   public List<StudentVO> studentList(Pagination pg) {
      return  mybatis.selectList("eduinfoDAO.studentList",pg);
   }

   public int proAllCnt(Pagination pg) {
      return  mybatis.selectOne("eduinfoDAO.proAllCnt",pg);
   }

   public List<ProfessorVO> proList(Pagination pg) {
      return  mybatis.selectList("eduinfoDAO.proList",pg);
   }

   public StudentVO stuInfo(String id) {
      return mybatis.selectOne("eduinfoDAO.stuInfo", id);
   }

   public ProfessorVO proInfo(String id) {
      return mybatis.selectOne("eduinfoDAO.proInfo", id);
   }

   public List<AttendClassVO> attInfo(int c_number) {
      return mybatis.selectList("eduinfoDAO.attInfo", c_number);
   }

   public List<AttendClassVO> attStuSearch(Pagination pg) {
      return mybatis.selectList("eduinfoDAO.attStuSearch", pg);
   }

   public void insertGradeTx(GradeVO gradeVO) {
      mybatis.insert("eduinfoDAO.insertGradeTx", gradeVO);
   }

   public List<GradeVO> gradeList(Pagination pg) {
      return mybatis.selectList("eduinfoDAO.gradeList", pg);
   }

   public int testInsertTx(TestVO vo) {
      return mybatis.insert("eduinfoDAO.testInsertTx", vo);
      
   }

   public List<TestVO> testSelect(TestVO vo) {
      return mybatis.selectList("eduinfoDAO.testSelect", vo);
   }

   public void updateGradeTx(GradeVO gradeVO) {
      mybatis.update("eduinfoDAO.updateGradeTx", gradeVO);
      
   }

   public void testStatusUpTx(int g_number) {
      mybatis.update("eduinfoDAO.testStatusUpTx", g_number);
   }

   public List<TestVO> testSelectUp(TestVO vo) {
      return mybatis.selectList("eduinfoDAO.testSelectUp", vo);
   }

   public int gradeUpdateTx(GradeVO vo) {
      return mybatis.update("eduinfoDAO.gradeUpdateTx", vo);
   }

   public List<GradeVO> gradeSearch(Pagination pg) {
      return mybatis.selectList("eduinfoDAO.gradeSearch", pg);
   }
   
   public void taskInsertTx(TaskVO vo) {
	       mybatis.insert("eduinfoDAO.taskInsertTx", vo);
	   }

   public List<TaskVO> getTaskList(int c_number) {
	 return mybatis.selectList("eduinfoDAO.getTaskList", c_number);
   }

	public TestVO testInfo(String g_number) {
		return mybatis.selectOne("eduinfoDAO.testInfo", g_number);
	   }

	public int testUpdateTx(TestVO vo) {
		return mybatis.update("eduinfoDAO.testUpdateTx", vo);
	}

	public int testAllCnt(Pagination pg) {
		return mybatis.selectOne("eduinfoDAO.testAllCnt", pg);
	}

	public List<TestVO> testAllSelect(Pagination pg) {
		return mybatis.selectList("eduinfoDAO.testAllSelect", pg);
	}
	   
    
}
