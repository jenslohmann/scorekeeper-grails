package dk.jlo.scorekeeper

class Team {
    String name

    static hasMany = [scores: Score, players: Player]
    static mapping = {
        table 'teams'
        scores column: 'scor_id'
        players column: 'plyr_id'
    }
    static constraints = {
        name nullable: false, blank: false
    }

    String toString() { "${name} (id:${id})" }
}
