package ssm.model;

public class Judger {
    private Short id;

    private Long tel;

    private String age;

    private String identity;

    private String password;

    private String name;

    private Short teamId;

    public Judger(Short id, Long tel, String age, String identity, String password, String name, Short teamId) {
        this.id = id;
        this.tel = tel;
        this.age = age;
        this.identity = identity;
        this.password = password;
        this.name = name;
        this.teamId = teamId;
    }

    public Judger() {
        super();
    }

    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public Long getTel() {
        return tel;
    }

    public void setTel(Long tel) {
        this.tel = tel;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age == null ? null : age.trim();
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Short getTeamId() {
        return teamId;
    }

    public void setTeamId(Short teamId) {
        this.teamId = teamId;
    }
}