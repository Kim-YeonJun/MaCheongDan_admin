package com.mapojob.admin.dao;

import com.mapojob.admin.domain.UserDto;
import com.mapojob.admin.domain.SearchCondition;
import com.mapojob.admin.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.mapojob.admin.dao.UserMapper.";

    public UserDto selectUser(String uid) throws Exception {
        System.out.println("uid = " + uid);
        return session.selectOne(namespace+"selectUser", uid);
    }

    @Override
    public List<UserDto> selectUserAll() throws Exception {
        return session.selectList(namespace+"selectUserAll");
    }

    @Override
    public int searchResultCnt(SearchCondition sc) throws Exception {
        return session.selectOne(namespace+"searchResultCnt", sc);
    }

    @Override
    public List<UserDto> searchSelectPage(SearchCondition sc) throws Exception {
        return session.selectList(namespace+"searchSelectPage", sc);
    }

    @Override
    public int deleteUser(String userId) throws Exception {
        return session.update(namespace+"deleteUser", userId);
    }

    @Override
    public int modifyUser(UserDto userDto) throws Exception {
        return session.update(namespace+"modifyUser", userDto);
    }

    @Override
    public int insertUser(UserDto userDto) throws Exception {
        return session.update(namespace+"insertUser", userDto);
    }

    @Override
    public int genderCount(String userGender) throws Exception {
        return session.selectOne(namespace+"genderCount", userGender);
    }
}
