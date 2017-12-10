package ssm.model;

public class Athlete {
    private Integer id;

    private String name;

    private String identity;

    private Short age;

    private String sex;

    private Long tel;

    private Short score;

    private Short teamId;

    public Athlete(Integer id, String name, String identity, Short age, String sex, Long tel, Short score, Short teamId) {
        this.id = id;
        this.name = name;
        this.identity = identity;
        this.age = age;
        this.sex = sex;
        this.tel = tel;
        this.score = score;
        this.teamId = teamId;
    }

    public Athlete() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    public Short getAge() {
        return age;
    }

    public void setAge(Short age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Long getTel() {
        return tel;
    }

    public void setTel(Long tel) {
        this.tel = tel;
    }

    public Short getScore() {
        return score;
    }

    public void setScore(Short score) {
        this.score = score;
    }

    public Short getTeamId() {
        return teamId;
    }

    public void setTeamId(Short teamId) {
        this.teamId = teamId;
    }
}