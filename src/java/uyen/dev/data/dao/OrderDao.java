package uyen.dev.data.dao;

import uyen.dev.data.model.Order;

public interface OrderDao {

    public void insert(Order order);

    public Order findByCode(String code);

}
