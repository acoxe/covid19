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

  measure: hospitalized {
    type: sum
    sql: ${TABLE}."HOSPITALIZED" ;;
  }

  measure: intensive_care {
    type: sum
    sql: ${TABLE}."INTENSIVE_CARE" ;;
  }

  measure: total_hospitalized {
    type: sum
    sql: ${TABLE}."TOTAL_HOSPITALIZED" ;;
  }

  measure: home_isolation {
    type: sum
    sql: ${TABLE}."HOME_ISOLATION" ;;
  }

  measure: total_positive {
    type: sum
    sql: ${TABLE}."TOTAL_POSITIVE" ;;
  }

  measure: new_positive {
    type: sum
    sql: ${TABLE}."NEW_POSITIVE" ;;
  }

  measure: discharged_healed {
    type: sum
    sql: ${TABLE}."DISCHARGED_HEALED" ;;
  }

  measure: deceased {
    type: sum
    sql: ${TABLE}."DECEASED" ;;
  }

  measure: total_cases {
    type: sum
    sql: ${TABLE}."TOTAL_CASES" ;;
  }

  measure: tested {
    type: sum
    sql: ${TABLE}."TESTED" ;;
  }

  measure: hospitalized_since_prev_day {
    type: sum
    sql: ${TABLE}."HOSPITALIZED_SINCE_PREV_DAY" ;;
  }

  measure: intensive_care_since_prev_day {
    type: sum
    sql: ${TABLE}."INTENSIVE_CARE_SINCE_PREV_DAY" ;;
  }

  measure: total_hospitalized_since_prev_day {
    type: sum
    sql: ${TABLE}."TOTAL_HOSPITALIZED_SINCE_PREV_DAY" ;;
  }

  measure: home_isolation_since_prev_day {
    type: sum
    sql: ${TABLE}."HOME_ISOLATION_SINCE_PREV_DAY" ;;
  }

  measure: total_positive_since_prev_day {
    type: sum
    sql: ${TABLE}."TOTAL_POSITIVE_SINCE_PREV_DAY" ;;
  }

  measure: discharged_healed_since_prev_day {
    type: sum
    sql: ${TABLE}."DISCHARGED_HEALED_SINCE_PREV_DAY" ;;
  }

  measure: deceased_since_prev_day {
    type: sum
    sql: ${TABLE}."DECEASED_SINCE_PREV_DAY" ;;
  }

  measure: total_cases_since_prev_day {
    type: sum
    sql: ${TABLE}."TOTAL_CASES_SINCE_PREV_DAY" ;;
  }

  measure: tested_since_prev_day {
    type: sum
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
