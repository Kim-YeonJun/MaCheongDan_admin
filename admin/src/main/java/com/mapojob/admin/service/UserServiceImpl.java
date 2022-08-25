package com.mapojob.admin.service;

import com.mapojob.admin.dao.UserDao;
import com.mapojob.admin.domain.SearchCondition;
import com.mapojob.admin.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public UserDto login(String uid) throws Exception{
        return userDao.selectUser(uid);
    }

    @Override
    public List<UserDto> userListAll() throws Exception{
        return userDao.selectUserAll();
    }

    @Override
    public int getSearchResultCnt(SearchCondition sc) throws Exception {
        return userDao.searchResultCnt(sc);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<UserDto> getSearchResultPage(SearchCondition sc) throws Exception {
        List<UserDto> list = userDao.searchSelectPage(sc);
        return list;
    }

    @Override
    public int removeUser(String userId) throws Exception{
        return userDao.deleteUser(userId);
    }

    @Override
    public int setModifyUser(UserDto userDto) throws Exception{
        return userDao.modifyUser(userDto);
    }

    @Override
    public int addUser(UserDto userDto) throws Exception{
        return userDao.insertUser(userDto);
    }
    @Override
    public UserDto getSelectUser(String userId) throws Exception{
        return userDao.selectUser(userId);
    }
    @Override
    public int getGenderCount(String userGender) throws Exception{
        return userDao.genderCount(userGender);
    }
}
