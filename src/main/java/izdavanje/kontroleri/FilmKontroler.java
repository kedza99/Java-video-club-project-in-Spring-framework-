package izdavanje.kontroleri;

import izdavanje.modeli.Film;
import izdavanje.repozitorijumi.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class FilmKontroler {

    @Autowired
    FilmRepository filmRepository;

    //pokazuje sve filmove
    @GetMapping("/film")
    public List<Film> sviFilmovi(){
        return filmRepository.findAll();
    }

    //pokazuje film po id-u
    @GetMapping("/film/{id}")
    public Film pokaziFilm(@PathVariable String id){
        int fId = Integer.parseInt(id);
        return filmRepository.findById(fId).orElse(null);
    }

    //kreira ili azurira film
    @PostMapping("/film")
    public Film napraviAuto(@RequestBody Film film){
        return filmRepository.save(film);
    }

    //brise odredjeni film
    @DeleteMapping("film/{id}")
    public boolean brisiFilm(@PathVariable String id){
        int fId= Integer.parseInt(id);
        filmRepository.deleteById(fId);
        return true;
    }
}
