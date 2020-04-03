view: pcm_dps_covid19_details {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."PCM_DPS_COVID19_DETAILS"
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

  dimension: hospitalized {
    type: number
    sql: ${TABLE}."HOSPITALIZED" ;;
  }

  dimension: intensive_care {
    type: number
    sql: ${TABLE}."INTENSIVE_CARE" ;;
  }

  dimension: total_hospitalized {
    type: number
    sql: ${TABLE}."TOTAL_HOSPITALIZED" ;;
  }

  dimension: home_isolation {
    type: number
    sql: ${TABLE}."HOME_ISOLATION" ;;
  }

  dimension: total_positive {
    type: number
    sql: ${TABLE}."TOTAL_POSITIVE" ;;
  }

  dimension: new_positive {
    type: number
    sql: ${TABLE}."NEW_POSITIVE" ;;
  }

  dimension: discharged_healed {
    type: number
    sql: ${TABLE}."DISCHARGED_HEALED" ;;
  }

  dimension: deceased {
    type: number
    sql: ${TABLE}."DECEASED" ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}."TOTAL_CASES" ;;
  }

  dimension: tested {
    type: number
    sql: ${TABLE}."TESTED" ;;
  }

  dimension: hospitalized_since_prev_day {
    type: number
    sql: ${TABLE}."HOSPITALIZED_SINCE_PREV_DAY" ;;
  }

  dimension: intensive_care_since_prev_day {
    type: number
    sql: ${TABLE}."INTENSIVE_CARE_SINCE_PREV_DAY" ;;
  }

  dimension: total_hospitalized_since_prev_day {
    type: number
    sql: ${TABLE}."TOTAL_HOSPITALIZED_SINCE_PREV_DAY" ;;
  }

  dimension: home_isolation_since_prev_day {
    type: number
    sql: ${TABLE}."HOME_ISOLATION_SINCE_PREV_DAY" ;;
  }

  dimension: total_positive_since_prev_day {
    type: number
    sql: ${TABLE}."TOTAL_POSITIVE_SINCE_PREV_DAY" ;;
  }

  dimension: discharged_healed_since_prev_day {
    type: number
    sql: ${TABLE}."DISCHARGED_HEALED_SINCE_PREV_DAY" ;;
  }

  dimension: deceased_since_prev_day {
    type: number
    sql: ${TABLE}."DECEASED_SINCE_PREV_DAY" ;;
  }

  dimension: total_cases_since_prev_day {
    type: number
    sql: ${TABLE}."TOTAL_CASES_SINCE_PREV_DAY" ;;
  }

  dimension: tested_since_prev_day {
    type: number
    sql: ${TABLE}."TESTED_SINCE_PREV_DAY" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: note_it {
    type: string
    sql: ${TABLE}."NOTE_IT" ;;
  }

  dimension: note_en {
    type: string
    sql: ${TABLE}."NOTE_EN" ;;
  }

  set: detail {
    fields: [
      country_region,
      province_state,
      date,
      hospitalized,
      intensive_care,
      total_hospitalized,
      home_isolation,
      total_positive,
      new_positive,
      discharged_healed,
      deceased,
      total_cases,
      tested,
      hospitalized_since_prev_day,
      intensive_care_since_prev_day,
      total_hospitalized_since_prev_day,
      home_isolation_since_prev_day,
      total_positive_since_prev_day,
      discharged_healed_since_prev_day,
      deceased_since_prev_day,
      total_cases_since_prev_day,
      tested_since_prev_day,
      iso3166_1,
      iso3166_2,
      note_it,
      note_en
    ]
  }
}
