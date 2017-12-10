package ssm.model;

public class Admin {
    private String id;

    private String pwd;

    public Admin(String id, String pwd) {
        this.id = id;
        this.pwd = pwd;
    }

    public Admin() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }
}