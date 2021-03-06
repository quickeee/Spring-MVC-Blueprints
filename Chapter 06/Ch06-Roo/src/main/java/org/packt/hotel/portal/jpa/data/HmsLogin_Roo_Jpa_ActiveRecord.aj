// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.packt.hotel.portal.jpa.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.packt.hotel.portal.jpa.data.HmsLogin;
import org.springframework.transaction.annotation.Transactional;

privileged aspect HmsLogin_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager HmsLogin.entityManager;
    
    public static final List<String> HmsLogin.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager HmsLogin.entityManager() {
        EntityManager em = new HmsLogin().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long HmsLogin.countHmsLogins() {
        return entityManager().createQuery("SELECT COUNT(o) FROM HmsLogin o", Long.class).getSingleResult();
    }
    
    public static List<HmsLogin> HmsLogin.findAllHmsLogins() {
        return entityManager().createQuery("SELECT o FROM HmsLogin o", HmsLogin.class).getResultList();
    }
    
    public static List<HmsLogin> HmsLogin.findAllHmsLogins(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM HmsLogin o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, HmsLogin.class).getResultList();
    }
    
    public static HmsLogin HmsLogin.findHmsLogin(Long id) {
        if (id == null) return null;
        return entityManager().find(HmsLogin.class, id);
    }
    
    public static List<HmsLogin> HmsLogin.findHmsLoginEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM HmsLogin o", HmsLogin.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<HmsLogin> HmsLogin.findHmsLoginEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM HmsLogin o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, HmsLogin.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void HmsLogin.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void HmsLogin.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            HmsLogin attached = HmsLogin.findHmsLogin(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void HmsLogin.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void HmsLogin.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public HmsLogin HmsLogin.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        HmsLogin merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
