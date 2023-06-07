package com.wipro.onlinecinematicket.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.wipro.onlinecinematicket.bean.CreditCard;

public interface CreditCardRepo extends JpaRepository<CreditCard, Integer>{
	@Query("select n from CreditCard n where n.cardnumber=:cardnumber and n.cvv=:cvv and n.expiry=:expiry")
	CreditCard findByCardnumberAndCvvCardAndExpiry (String cardnumber, int cvv, String expiry);


}
