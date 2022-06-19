package com.its.project.repository;

import com.its.project.dto.CartDTO;
import com.its.project.dto.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShopRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int product(ShopDTO shopDTO) {
        return sql.insert("Shop.product", shopDTO);
    }

    public List<ShopDTO> findAll() {
        return sql.selectList("Shop.findAll");
    }

    public ShopDTO findById(Long id) {
        return sql.selectOne("Shop.findById", id);
    }
    public int count(CartDTO cartDTO) { return sql.insert("Cart.count" ,cartDTO);}
    public List<CartDTO> cart() {return sql.selectList("Cart.cart");
    }

    public int cartC(CartDTO cartDTO) {return sql.selectOne("Cart.cartC",cartDTO);
    }
}
