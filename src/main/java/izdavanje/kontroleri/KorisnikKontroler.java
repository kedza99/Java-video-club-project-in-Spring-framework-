package izdavanje.kontroleri;

import izdavanje.modeli.Korisnik;
import izdavanje.repozitorijumi.KorisnikRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class KorisnikKontroler {
    @Autowired
    KorisnikRepository korisnikRepository;

    //pokazuje sve korisnike
    @GetMapping("/korisnik")
    public List<Korisnik> sviKorisnici(){
        return korisnikRepository.findAll();
    }

    //pokazuje korisnika po id-u
    @GetMapping("/korisnik/{id}")
    public Korisnik pokaziKorisnika(@PathVariable String id){
        int kId = Integer.parseInt(id);
        return korisnikRepository.findById(kId).orElse(null);
    }

    //kreira ili azurira korisnika
    @PostMapping("/korisnik")
    public Korisnik napraviKorisnika(@RequestBody Korisnik korisnik){
        return korisnikRepository.save(korisnik);
    }

    //brise odredjenog korisnika
    @DeleteMapping("korisnik/{id}")
    public boolean brisiKorisnika(@PathVariable String id){
        int kId= Integer.parseInt(id);
        korisnikRepository.deleteById(kId);
        return true;
    }
}
