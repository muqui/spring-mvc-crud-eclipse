package com.alberto.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;  

import com.alberto.beans.Person;   
public class PersonDao {
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}     

	public int save(Person p){    
	    String sql="insert into person(name, email,nationality)  values('"+p.getName()+"','"+p.getEmail()+"','"+p.getNationality()+"')";    
	    return template.update(sql);    
	}    
	public int update(Person p){    
	    String sql="update person set name='"+p.getName()+"', email='"+p.getEmail()+"',nationality='"+p.getNationality()+"' where id="+p.getId()+"";    
	    return template.update(sql);    
	}   
	public int delete(int id){    
	    String sql="delete from person where id="+id+"";    
	    return template.update(sql);    
	} 
	public Person getEmpById(int id){    
	    String sql="select * from person where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Person>(Person.class));    
	}    
	public List<Person> getEmployees(){    
	    return template.query("select * from person",new RowMapper<Person>(){    
	        public Person mapRow(ResultSet rs, int row) throws SQLException {    
	        	Person e=new Person();    
	            e.setId(rs.getInt(1));    
	            e.setName(rs.getString(2));    
	            e.setEmail(rs.getString(3));   
	            e.setNationality(rs.getString(4));   
	            return e;    
	        }    
	    });    
	}   
}
