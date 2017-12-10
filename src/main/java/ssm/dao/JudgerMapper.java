package ssm.dao;

import ssm.model.Judger;

public interface JudgerMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Judger record);

    int insertSelective(Judger record);

    Judger selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Judger record);

    int updateByPrimaryKey(Judger record);
}