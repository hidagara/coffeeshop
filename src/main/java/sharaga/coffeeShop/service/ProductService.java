package sharaga.coffeeShop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sharaga.coffeeShop.dao.ProductRepository;

@Service
public class ProductService implements ServiceCrud{
    @Autowired
    ProductRepository productRepository;


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
