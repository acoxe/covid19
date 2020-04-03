view: pcm_dps_covid19 {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."PCM_DPS_COVID19"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}."CASE_TYPE" ;;
  }

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}."LONG" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: difference {
    type: number
    sql: ${TABLE}."DIFFERENCE" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension_group: last_updated_date {
    type: time
    sql: ${TABLE}."LAST_UPDATED_DATE" ;;
  }

  set: detail {
    fields: [
      country_region,
      province_state,
      date,
      case_type,
      cases,
      long,
      lat,
      difference,
      iso3166_1,
      iso3166_2,
      last_updated_date_time
    ]
  }
}
