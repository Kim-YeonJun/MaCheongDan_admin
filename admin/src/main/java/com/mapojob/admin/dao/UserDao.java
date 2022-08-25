package com.mapojob.admin.dao;

import com.mapojob.admin.domain.SearchCondition;
import com.mapojob.admin.domain.UserDto;

import java.util.List;

public interface UserDao {
    UserDto selectUser(String uid) throws Exception;
    List<UserDto> selectUserAll() throws Exception;
    public int searchResultCnt(SearchCondition sc) throws Exception;
    List<UserDto> searchSelectPage(SearchCondition sc) throws Exception;
    int deleteUser(String userId) throws Exception;
    int modifyUser(UserDto userDto) throws Exception;
    int insertUser(UserDto userDto) throws Exception;
    int genderCount(String userGender) throws Exception;
}
