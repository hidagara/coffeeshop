package sharaga.coffeeShop.model;

import javax.persistence.*;
import java.util.List;


@Table(name = "STORE")
public class Store {
    @Id
    Long id;
    @Column(name = "NAME")
    String name;
    @Column(name = "WORKERS")
    List<String> workers;
    @Column(name = "ADDRESS")
    String address;
    @OneToMany(mappedBy = "stores")
    List<Product> products;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getWorkers() {
        return workers;
    }

    public void setWorkers(List<String> workers) {
        this.workers = workers;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Store{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", workers=" + workers +
                ", address='" + address + '\'' +
                ", products=" + products +
                '}';
    }
}
