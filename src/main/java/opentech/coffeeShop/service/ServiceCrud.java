package opentech.coffeeShop.service;

public interface ServiceCrud {
    //create
    Object create(Object object);
    //read
    Object getAll();
    Object getOne(Long id);
    //update
    Object update (Object object);
    //delete
    void delete(Object object);
}
