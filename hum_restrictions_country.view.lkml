view: hum_restrictions_country {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."HUM_RESTRICTIONS_COUNTRY"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country {
    type: string
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}."LONG" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: published {
    type: date
    sql: ${TABLE}."PUBLISHED" ;;
  }

  dimension: sources {
    type: string
    sql: ${TABLE}."SOURCES" ;;
  }

  dimension: restriction_text {
    type: string
    sql: ${TABLE}."RESTRICTION_TEXT" ;;
  }

  dimension: info_date {
    type: date
    sql: ${TABLE}."INFO_DATE" ;;
  }

  dimension: quarantine_text {
    type: string
    sql: ${TABLE}."QUARANTINE_TEXT" ;;
  }

  dimension_group: last_update_date {
    type: time
    sql: ${TABLE}."LAST_UPDATE_DATE" ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}."lat" ;;
    sql_longitude: ${TABLE}."long" ;;
  }

  set: detail {
    fields: [
      country,
      iso3166_1,
      long,
      lat,
      published,
      sources,
      restriction_text,
      info_date,
      quarantine_text,
      last_update_date_time
    ]
  }
}
