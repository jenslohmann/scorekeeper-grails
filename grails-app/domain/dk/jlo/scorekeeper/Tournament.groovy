package dk.jlo.scorekeeper

class Tournament {
    String name

    static hasMany = [matches:Match]
    String toString() { "${name}"}
    static mapping = {
        table 'tournaments'
    }
    static constraints = {
        name nullable: false, blank: false, unique: true
    }
}
