view: ct_us_covid_tests {
  derived_table: {
    sql: select * from PUBLIC.CT_US_COVID_TESTS
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

  dimension: positive {
    type: number
    sql: ${TABLE}."POSITIVE" ;;
  }

  dimension: positive_since_previous_day {
    type: number
    sql: ${TABLE}."POSITIVE_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: negative {
    type: number
    sql: ${TABLE}."NEGATIVE" ;;
  }

  dimension: negative_since_previous_day {
    type: number
    sql: ${TABLE}."NEGATIVE_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: pending {
    type: number
    sql: ${TABLE}."PENDING" ;;
  }

  dimension: pending_since_previous_day {
    type: number
    sql: ${TABLE}."PENDING_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: death {
    type: number
    sql: ${TABLE}."DEATH" ;;
  }

  dimension: death_since_previous_day {
    type: number
    sql: ${TABLE}."DEATH_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: hospitalized {
    type: number
    sql: ${TABLE}."HOSPITALIZED" ;;
  }

  dimension: hospitalized_since_previous_day {
    type: number
    sql: ${TABLE}."HOSPITALIZED_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  dimension: total_since_previous_day {
    type: number
    sql: ${TABLE}."TOTAL_SINCE_PREVIOUS_DAY" ;;
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
      positive,
      positive_since_previous_day,
      negative,
      negative_since_previous_day,
      pending,
      pending_since_previous_day,
      death,
      death_since_previous_day,
      hospitalized,
      hospitalized_since_previous_day,
      total,
      total_since_previous_day,
      iso3166_1,
      iso3166_2,
      last_updated_date_time
    ]
  }
}
