package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> showAll();
    void add(Product product);
}
