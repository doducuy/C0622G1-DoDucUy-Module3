package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"truongngu"));
        productList.add(new Product(2,"khangcon"));
    }
    @Override
    public List<Product> showAll() {
        return productList;
    }

    @Override
    public void add(Product product) {

    }
}
