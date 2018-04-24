package kr.co.mlec.repository.domain;

public class Location {

    //  지역번호
    private String locationSeq;

    //  지역이름
    private String locationName;

    public String getLocationSeq() {
        return locationSeq;
    }

    public void setLocationSeq(String locationSeq) {
        this.locationSeq = locationSeq;
    }

    public String getLocationName() {
        return locationName;
    }

    public void setLocationName(String locationName) {
        this.locationName = locationName;
    }

}