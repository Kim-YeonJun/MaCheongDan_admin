package com.mapojob.admin.service;

import com.mapojob.admin.domain.SearchCondition;
import com.mapojob.admin.domain.UserDto;

import java.util.List;

public interface UserService {
    UserDto login(String uid) throws Exception;
    List<UserDto> userListAll() throws Exception;
    int getSearchResultCnt(SearchCondition sc) throws Exception;
    List<UserDto> getSearchResultPage(SearchCondition sc) throws Exception;
    int removeUser(String userId) throws Exception;
    int setModifyUser(UserDto userDto) throws Exception;
    int addUser(UserDto userDto) throws Exception;
    UserDto getSelectUser(String userId) throws Exception;
    int getGenderCount(String userGender) throws Exception;
}
