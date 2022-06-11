package com.accenture.lkm.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.RepositoryDefinition;
import org.springframework.transaction.annotation.Transactional;

import com.accenture.lkm.entity.CompliantEntity;

@RepositoryDefinition(idClass = Integer.class, domainClass = CompliantEntity.class)
@Transactional(value = "txManager")
// name of TransactionManger can be any thing
public interface CompliantDao extends JpaRepository<CompliantEntity,String>{
	@Query(name = "getCustomerByCompliantType")
	CompliantEntity getCustomerByCompliantType(String customerName, int compliantTypeId);
	@Query(name="getCompliantDetailsByDate")
	List<CompliantEntity> getCompliantDetailsByDate(Date fromDate, Date toDate);
}
