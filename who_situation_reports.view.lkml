view: who_situation_reports {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."WHO_SITUATION_REPORTS"
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

  dimension: total_cases {
    type: number
    sql: ${TABLE}."TOTAL_CASES" ;;
  }

  dimension: cases_new {
    type: number
    sql: ${TABLE}."CASES_NEW" ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: deaths_new {
    type: number
    sql: ${TABLE}."DEATHS_NEW" ;;
  }

  dimension: transmission_classification {
    type: string
    sql: ${TABLE}."TRANSMISSION_CLASSIFICATION" ;;
  }

  dimension: days_since_last_reported_case {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_REPORTED_CASE" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: situation_report_name {
    type: string
    sql: ${TABLE}."SITUATION_REPORT_NAME" ;;
  }

  dimension: situation_report_url {
    type: string
    sql: ${TABLE}."SITUATION_REPORT_URL" ;;
  }

  dimension_group: last_update_date {
    type: time
    sql: ${TABLE}."LAST_UPDATE_DATE" ;;
  }

  set: detail {
    fields: [
      country,
      total_cases,
      cases_new,
      deaths,
      deaths_new,
      transmission_classification,
      days_since_last_reported_case,
      iso3166_1,
      country_region,
      date,
      situation_report_name,
      situation_report_url,
      last_update_date_time
    ]
  }
}
