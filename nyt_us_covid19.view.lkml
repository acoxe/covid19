view: nyt_us_covid19 {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."NYT_US_COVID19"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
  }

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: cases_since_prev_day {
    type: number
    sql: ${TABLE}."CASES_SINCE_PREV_DAY" ;;
  }

  dimension: deaths_since_prev_day {
    type: number
    sql: ${TABLE}."DEATHS_SINCE_PREV_DAY" ;;
  }

  dimension_group: last_update_date {
    type: time
    sql: ${TABLE}."LAST_UPDATE_DATE" ;;
  }

  set: detail {
    fields: [
      date,
      county,
      state,
      fips,
      cases,
      deaths,
      iso3166_1,
      iso3166_2,
      cases_since_prev_day,
      deaths_since_prev_day,
      last_update_date_time
    ]
  }
}
