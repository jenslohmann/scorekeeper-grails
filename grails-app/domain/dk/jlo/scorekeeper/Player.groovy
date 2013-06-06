package dk.jlo.scorekeeper

class Player {
    String name

    static belongsTo = Team
    static hasMany = [teams: Team]
    static mapping = {
        table 'players'
        teams column: 'team_id'
    }
    static constraints = {
        name(nullable: false)
    }
}
