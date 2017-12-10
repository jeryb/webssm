package ssm.dao;

import ssm.model.Athlete;

public interface AthleteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Athlete record);

    int insertSelective(Athlete record);

    Athlete selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Athlete record);

    int updateByPrimaryKey(Athlete record);
}