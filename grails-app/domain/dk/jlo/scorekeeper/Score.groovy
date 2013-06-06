package dk.jlo.scorekeeper

class Score {
    long score

    static belongsTo = [match: Match]
    static hasOne = [team: Team]
    static mapping = {
        table 'scores'
        match column: 'mtch_id'
    }
    static constraints = {
        score(nullable: false)
    }
}
