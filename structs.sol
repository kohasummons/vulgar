// Structs are types that are used to represent a record

contract structss {
    struct Movie {
        string director
        string title
        uint movie_id
    }

    Movie juno;

    function setMovie() public {
        juno = Movie('Drev', 'Juno 192', 10)
    }

    function getMovieId() public returns(uint) {
        return juno.movie_id;
    }
}