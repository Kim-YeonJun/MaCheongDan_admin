package com.mapojob.admin.dao;

import com.mapojob.admin.domain.NoticeBoardDto;
import com.mapojob.admin.domain.SearchCondition;

import java.util.List;
import java.util.Map;

public interface NoticeBoardDao {
    int count() throws Exception // T selectOne(String statement)
    ;

    int deleteAll() // int delete(String statement)
    ;

    int delete(Integer bno, String writer) throws Exception // int delete(String statement, Object parameter)
    ;

    int insert(NoticeBoardDto dto) throws Exception // int insert(String statement, Object parameter)
    ;

    List<NoticeBoardDto> selectAll() throws Exception // List<E> selectList(String statement)
    ;

    NoticeBoardDto select(Integer bno) throws Exception // T selectOne(String statement, Object parameter)
    ;

    List<NoticeBoardDto> selectPage(Map map) throws Exception // List<E> selectList(String statement, Object parameter)
    ;

    int update(NoticeBoardDto dto) throws Exception // int update(String statement, Object parameter)
    ;

    int increaseViewCnt(Integer bno) throws Exception // int update(String statement, Object parameter)
    ;

    List<NoticeBoardDto> searchSelectPage(SearchCondition sc) throws Exception // List<E> selectList(String statement, Object parameter)
    ;

    int updateCommentCnt(Integer bno, int cnt);

    int searchResultCnt(SearchCondition sc) throws Exception;

    int alterTable_AutoIncre() throws Exception;
}
