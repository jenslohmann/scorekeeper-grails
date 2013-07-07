package dk.jlo.scorekeeper

class Match {
    // FIXME Calendar or something w/ timestamp/TZ
    Date time

    static belongsTo = [tournament:Tournament]
    static hasMany = [score:Score]
    static mapping = {
        table 'matches'
        tournament column: 'tnmt_id'
    }
    static constraints = {
    }

    @Override
    String toString() {
        // Assumes foosball match
        "${score} - "
    }
}
