# Spring-MVC-CRUD-Eclipse
<h2> prerequisites </h2>

<ul>
  <li>Java 11</li>
  <li>Eclipse ide Version: 2021-09 (4.21.0) </li>
  <li>Tomcat 8.5 </li>
  <li>mysql  Ver 8.0.26 for Linux on x86_64 (MySQL Community Server - GPL)</p>

</ul>
<h2>Steps for creating Spring MVC CRUD(create, read, update, delete)</h2>
<p>We will use Mysql as database, and Spring Data JPA</p>
<h3>Create the database</h3>
<p>Open a terminal and open mysql client. </p>
<p>We type next command to create database as below</p>

![crud_02](pictures/crud_02.png)
<p> create a table named person</p>

![crud_03](pictures/crud_04.png)
<p>Insert several records as example</p>

![crud_03](pictures/crud_05.png)

![crud_03](pictures/crud_06.png)

<p>add repositori mysql and spring-jdbc to pom file.</p>

![crud_09](pictures/crud_09.png)
<p>File  web.xml look as below.</p>

![crud_10](pictures/crud_10.png)
<p>File spring-servlet.xml has a config to connect  to the database.</p>

![crud_11](pictures/crud_11.png)
<p>Create a package named "com.alberto.beans"</p>
<p>Create a bean class named "Person" </p>

![crud_12](pictures/crud_12.png)
<p>Create a package named "com.alberto.controller"</p>
<p>Create a bean class named "CrudController" </p>

![crud_13](pictures/crud_13.png)

![crud_14](pictures/crud_14.png)
<p>Create a package named "com.alberto.dao"</p>
<p>Create a bean class named "PersonDao" </p>
<pre>
    <code>
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
    </code>
</pre>

<p>Move index.jsp to /WEB-INF folder as below</p>

![crud_15](pictures/crud_15.png)

<p>Create addPerson.jsp in /WEB-INF folder</p>

![crud_16](pictures/crud_16.png)
<p>Create edit.jsp in /WEB-INF folder </p>

![crud_17](pictures/crud_17.png)

<h1>We do maven built</h1>
Right click on project -> Run as -> Maven build
<p>Right click on project -> Rus as -> Maven build</p>

![crud_18](pictures/crud_18.png)
<h1>Run the application</h1>
<p>Right click on project -> run as -> run on server</p>
<p>Select apache tomcat and click on finish.</p>

![crud_19](pictures/crud_19.png)

<h1>You will see below screen:</h1>

<h3>index</h3>

![crud_20](pictures/crud_20.png)
<h3>addPerson</h3>

![crud_20](pictures/crud_21.png)
<p>editPerson</p>

![crud_22](pictures/crud_22.png)

<h1>possible errors</h1>

![crud_23](pictures/crud_23.png)
<p>fix it </p>
<p> add "?useSSL=false&amp;serverTimezone=UTC" after name of database </p>

![crud_24](pictures/crud_24.png)













