package dk.jlo.scorekeeper

class Tournament {
    String name

    String toString() { "${name}"}
    static mapping = {
        table 'tournaments'
    }
    static constraints = {
        name nullable: false, blank: false, unique: true
    }
}
