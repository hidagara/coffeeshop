package sharaga.coffeeShop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sharaga.coffeeShop.dao.StoreRepository;

@Service
public class StoreService implements ServiceCrud{

    @Autowired
    StoreRepository storeRepository;

    @Override
    public Object create(Object object) {
        return null;
    }

    @Override
    public Object getAll() {
        return null;
    }

    @Override
    public Object getOne(Long id) {
        return null;
    }

    @Override
    public Object update(Object object) {
        return null;
    }

    @Override
    public void delete(Object object) {

    }
}
