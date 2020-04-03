view: metadata {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."METADATA"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: table {
    type: string
    sql: ${TABLE}."TABLE" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: column {
    type: string
    sql: ${TABLE}."COLUMN" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: nullable {
    type: string
    sql: ${TABLE}."NULLABLE" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  set: detail {
    fields: [
      table,
      description,
      column,
      type,
      nullable,
      comments,
      source
    ]
  }
}
