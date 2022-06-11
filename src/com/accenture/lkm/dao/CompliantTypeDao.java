package com.accenture.lkm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.RepositoryDefinition;
import org.springframework.transaction.annotation.Transactional;

import com.accenture.lkm.entity.CompliantEntity;
import com.accenture.lkm.entity.CompliantTypeEntity;

@RepositoryDefinition(idClass = Integer.class, domainClass = CompliantEntity.class)
@Transactional(value = "txManager")
public interface CompliantTypeDao extends JpaRepository<CompliantTypeEntity, String> {
}
