package com.entity;

import java.util.HashSet;
import java.util.Set;


/**
 * Articletype entity. @author MyEclipse Persistence Tools
 */

public class ArticleType  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String name;
     private String descript;
     private Set articles = new HashSet(0);


    // Constructors

    /** default constructor */
    public ArticleType() {
    }

	/** minimal constructor */
    public ArticleType(String name) {
        this.name = name;
    }
    
    /** full constructor */
    public ArticleType(String name, String descript, Set articles) {
        this.name = name;
        this.descript = descript;
        this.articles = articles;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getDescript() {
        return this.descript;
    }
    
    public void setDescript(String descript) {
        this.descript = descript;
    }

    public Set getArticles() {
        return this.articles;
    }
    
    public void setArticles(Set articles) {
        this.articles = articles;
    }
   








}