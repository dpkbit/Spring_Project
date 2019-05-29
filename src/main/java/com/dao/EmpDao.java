package com.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
//import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.beans.Emp;    
    
public class EmpDao {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}

public List<Emp> getEmployees(){    
    return template.query("select * from jan",new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {    
            Emp e=new Emp();    
            e.setId(rs.getInt(1));    
            e.setEmp_name(rs.getString(2));    
            e.setDay1(rs.getString(3));    
            e.setDay2(rs.getString(4));
            e.setDay3(rs.getString(5));
            e.setDay4(rs.getString(6));
            e.setDay5(rs.getString(7));
            e.setDay6(rs.getString(8));
            e.setDay7(rs.getString(9));
            e.setDay8(rs.getString(10));
            e.setDay9(rs.getString(11));
            e.setDay10(rs.getString(12));
            e.setDay11(rs.getString(13));
            e.setDay12(rs.getString(14));
            e.setDay13(rs.getString(15));
            e.setDay14(rs.getString(16));
            e.setDay15(rs.getString(17));
            e.setDay16(rs.getString(18));
            e.setDay17(rs.getString(19));
            e.setDay18(rs.getString(20));
            e.setDay19(rs.getString(21));
            e.setDay20(rs.getString(22));
            e.setDay21(rs.getString(23));
            e.setDay22(rs.getString(24));
            e.setDay23(rs.getString(25));
            e.setDay24(rs.getString(26));
            e.setDay25(rs.getString(27));
            e.setDay26(rs.getString(28));
            e.setDay27(rs.getString(29));
            e.setDay28(rs.getString(30));
            e.setDay29(rs.getString(31));
            e.setDay30(rs.getString(32));
            e.setDay31(rs.getString(33));
            
            
            
            return e;    
        }    
    });
}
    
public List<Emp> getEmployees1(){    
    return template.query("select * from feb",new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {    
            Emp e=new Emp();    
            e.setId(rs.getInt(1));    
            e.setEmp_name(rs.getString(2));    
            e.setDay1(rs.getString(3));    
            e.setDay2(rs.getString(4));
            e.setDay3(rs.getString(5));
            e.setDay4(rs.getString(6));
            e.setDay5(rs.getString(7));
            e.setDay6(rs.getString(8));
            e.setDay7(rs.getString(9));
            e.setDay8(rs.getString(10));
            e.setDay9(rs.getString(11));
            e.setDay10(rs.getString(12));
            e.setDay11(rs.getString(13));
            e.setDay12(rs.getString(14));
            e.setDay13(rs.getString(15));
            e.setDay14(rs.getString(16));
            e.setDay15(rs.getString(17));
            e.setDay16(rs.getString(18));
            e.setDay17(rs.getString(19));
            e.setDay18(rs.getString(20));
            e.setDay19(rs.getString(21));
            e.setDay20(rs.getString(22));
            e.setDay21(rs.getString(23));
            e.setDay22(rs.getString(24));
            e.setDay23(rs.getString(25));
            e.setDay24(rs.getString(26));
            e.setDay25(rs.getString(27));
            e.setDay26(rs.getString(28));
            e.setDay27(rs.getString(29));
            e.setDay28(rs.getString(30));
           
            
            
            return e;    
        }    
    }); 
}

public List<Emp> getEmployees2(){    
    return template.query("select * from march",new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {    
            Emp e=new Emp();    
            e.setId(rs.getInt(1));    
            e.setEmp_name(rs.getString(2));    
            e.setDay1(rs.getString(3));    
            e.setDay2(rs.getString(4));
            e.setDay3(rs.getString(5));
            e.setDay4(rs.getString(6));
            e.setDay5(rs.getString(7));
            e.setDay6(rs.getString(8));
            e.setDay7(rs.getString(9));
            e.setDay8(rs.getString(10));
            e.setDay9(rs.getString(11));
            e.setDay10(rs.getString(12));
            e.setDay11(rs.getString(13));
            e.setDay12(rs.getString(14));
            e.setDay13(rs.getString(15));
            e.setDay14(rs.getString(16));
            e.setDay15(rs.getString(17));
            e.setDay16(rs.getString(18));
            e.setDay17(rs.getString(19));
            e.setDay18(rs.getString(20));
            e.setDay19(rs.getString(21));
            e.setDay20(rs.getString(22));
            e.setDay21(rs.getString(23));
            e.setDay22(rs.getString(24));
            e.setDay23(rs.getString(25));
            e.setDay24(rs.getString(26));
            e.setDay25(rs.getString(27));
            e.setDay26(rs.getString(28));
            e.setDay27(rs.getString(29));
            e.setDay28(rs.getString(30));
            e.setDay29(rs.getString(31));
            e.setDay30(rs.getString(32));
            e.setDay31(rs.getString(33));
           
            
            
            return e;    
        }    
    });  
    
}}
