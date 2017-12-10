package model;

public class Team {
    private Integer id;

    private String teamName;

    private String leaderId;

    private String leaderPhone;

    private String doctorPhone;

    private String coachName;

    private String coachPhone;

    private String coachSex;

    private String coachId;

    private String pwd;

    private String leaderName;

    private String doctorName;

    public Team(Integer id, String teamName, String leaderId, String leaderPhone, String doctorPhone, String coachName, String coachPhone, String coachSex, String coachId, String pwd, String leaderName, String doctorName) {
        this.id = id;
        this.teamName = teamName;
        this.leaderId = leaderId;
        this.leaderPhone = leaderPhone;
        this.doctorPhone = doctorPhone;
        this.coachName = coachName;
        this.coachPhone = coachPhone;
        this.coachSex = coachSex;
        this.coachId = coachId;
        this.pwd = pwd;
        this.leaderName = leaderName;
        this.doctorName = doctorName;
    }

    public Team() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName == null ? null : teamName.trim();
    }

    public String getLeaderId() {
        return leaderId;
    }

    public void setLeaderId(String leaderId) {
        this.leaderId = leaderId == null ? null : leaderId.trim();
    }

    public String getLeaderPhone() {
        return leaderPhone;
    }

    public void setLeaderPhone(String leaderPhone) {
        this.leaderPhone = leaderPhone == null ? null : leaderPhone.trim();
    }

    public String getDoctorPhone() {
        return doctorPhone;
    }

    public void setDoctorPhone(String doctorPhone) {
        this.doctorPhone = doctorPhone == null ? null : doctorPhone.trim();
    }

    public String getCoachName() {
        return coachName;
    }

    public void setCoachName(String coachName) {
        this.coachName = coachName == null ? null : coachName.trim();
    }

    public String getCoachPhone() {
        return coachPhone;
    }

    public void setCoachPhone(String coachPhone) {
        this.coachPhone = coachPhone == null ? null : coachPhone.trim();
    }

    public String getCoachSex() {
        return coachSex;
    }

    public void setCoachSex(String coachSex) {
        this.coachSex = coachSex == null ? null : coachSex.trim();
    }

    public String getCoachId() {
        return coachId;
    }

    public void setCoachId(String coachId) {
        this.coachId = coachId == null ? null : coachId.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getLeaderName() {
        return leaderName;
    }

    public void setLeaderName(String leaderName) {
        this.leaderName = leaderName == null ? null : leaderName.trim();
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName == null ? null : doctorName.trim();
    }
}