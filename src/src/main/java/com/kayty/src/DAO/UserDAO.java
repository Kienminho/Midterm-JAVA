package com.kayty.src.DAO;

import com.kayty.src.Model.User;
import com.kayty.src.Repository.Repository;
import com.kayty.src.Repository.UserRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;

import java.util.List;

@org.springframework.stereotype.Repository
public class UserDAO implements Repository {
    @PersistenceContext
    private EntityManager entityManager;
    private static UserRepository userRepository;


    private final String GET_USER_BY_NAME = "SELECT NEW com.kayty.src.Model.User(u.username, u.password) FROM User u WHERE u.username = :username";

    @Override
    public Object add(Object item) {
        return userRepository.save((User) item);

    }

    @Override
    public Object get(Object id) {
        return userRepository.findById((Long) id).orElse(null);
    }

    @Override
    public List getAll() {
        return null;
    }

    @Override
    public boolean deleteById(Object id) {
        return false;
    }

    @Override
    public Object getByName(Object name) {
        Query query = entityManager.createQuery(GET_USER_BY_NAME);
        query.setParameter("username", (String) name);
        try {
            User user = (User) query.getSingleResult();

            System.out.println(user.getUsername());
            return (User) query.getSingleResult();
        }
        catch (Exception e) {
            return  null;
        }
    }

    @Override
    public boolean update(Object item) {
        return false;
    }
}
