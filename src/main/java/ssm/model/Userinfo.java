package ssm.model;

public class Userinfo {
    private Integer userId;

    private String userName;

    private Integer userAge;

    private String userAddress;

    public Userinfo(Integer userId, String userName, Integer userAge, String userAddress) {
        this.userId = userId;
        this.userName = userName;
        this.userAge = userAge;
        this.userAddress = userAddress;
    }

    public Userinfo() {
        super();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }
}