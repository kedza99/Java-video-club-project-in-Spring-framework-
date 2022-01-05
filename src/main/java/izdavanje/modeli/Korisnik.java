package izdavanje.modeli;

import javax.persistence.*;

@Entity
@Table(name="korisnik")
public class Korisnik {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int korisnik_id;
    private String ime;
    private String prezime;
    private String godiste;
    private String brtel;
    private String adresa;

    public Korisnik() {
    }

    public Korisnik(String ime, String prezime, String godiste, String brtel, String adresa) {
        this.ime = ime;
        this.prezime = prezime;
        this.godiste = godiste;
        this.brtel = brtel;
        this.adresa = adresa;
    }

    public void setKorisnik_id(int korisnik_id) {
        this.korisnik_id = korisnik_id;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public void setGodiste(String godiste) {
        this.godiste = godiste;
    }

    public void setBrtel(String brtel) {
        this.brtel = brtel;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public int getKorisnik_id() {
        return korisnik_id;
    }

    public String getIme() {
        return ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public String getGodiste() {
        return godiste;
    }

    public String getBrtel() {
        return brtel;
    }

    public String getAdresa() {
        return adresa;
    }

    @Override
    public String toString() {
        return "Korisnik{" +
                "korisnik_id=" + korisnik_id +
                ", ime='" + ime + '\'' +
                ", prezime='" + prezime + '\'' +
                ", godiste='" + godiste + '\'' +
                ", brtel='" + brtel + '\'' +
                ", adresa='" + adresa + '\'' +
                '}';
    }
}
