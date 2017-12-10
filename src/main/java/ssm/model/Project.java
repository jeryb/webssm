package ssm.model;

public class Project {
    private Integer id;

    private String name;

    private String time;

    private String rule;

    private Integer athsignup;

    private Integer athplay;

    private Integer scorecalc;

    public Project(Integer id, String name, String time, String rule, Integer athsignup, Integer athplay, Integer scorecalc) {
        this.id = id;
        this.name = name;
        this.time = time;
        this.rule = rule;
        this.athsignup = athsignup;
        this.athplay = athplay;
        this.scorecalc = scorecalc;
    }

    public Project() {
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getRule() {
        return rule;
    }

    public void setRule(String rule) {
        this.rule = rule == null ? null : rule.trim();
    }

    public Integer getAthsignup() {
        return athsignup;
    }

    public void setAthsignup(Integer athsignup) {
        this.athsignup = athsignup;
    }

    public Integer getAthplay() {
        return athplay;
    }

    public void setAthplay(Integer athplay) {
        this.athplay = athplay;
    }

    public Integer getScorecalc() {
        return scorecalc;
    }

    public void setScorecalc(Integer scorecalc) {
        this.scorecalc = scorecalc;
    }
}