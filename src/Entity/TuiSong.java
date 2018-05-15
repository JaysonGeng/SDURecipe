package Entity;

public class TuiSong {
    private int id;
    private String name;
    private String reason;
    private String picture;
    private String url;
    private String tuisong;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTuisong() {
        return tuisong;
    }

    public void setTuisong(String tuisong) {
        this.tuisong = tuisong;
    }
}
