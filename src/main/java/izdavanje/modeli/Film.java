package izdavanje.modeli;

import javax.persistence.*;

@Entity
@Table(name="film")
public class Film {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int film_id;
    private String naziv;
    private String deskripcija;
    private int korisnik_id;

    public Film() {
    }

    public Film(String naziv, String deskripcija, int korisnik_id) {
        this.naziv = naziv;
        this.deskripcija = deskripcija;
        this.korisnik_id = korisnik_id;
    }

    public void setFilm_id(int film_id) {
        this.film_id = film_id;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public void setDeskripcija(String deskripcija) {
        this.deskripcija = deskripcija;
    }

    public void setKorisnik_id(int korisnik_id) {
        this.korisnik_id = korisnik_id;
    }

    public int getFilm_id() {
        return film_id;
    }

    public String getNaziv() {
        return naziv;
    }

    public String getDeskripcija() {
        return deskripcija;
    }

    public int getKorisnik_id() {
        return korisnik_id;
    }

    @Override
    public String toString() {
        return "Film{" +
                "film_id=" + film_id +
                ", naziv='" + naziv + '\'' +
                ", deskripcija='" + deskripcija + '\'' +
                ", korisnik_id=" + korisnik_id +
                '}';
    }
}
