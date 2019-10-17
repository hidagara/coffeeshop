package sharaga.coffeeShop.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sharaga.coffeeShop.model.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, Long> {
}
