view: ct_us_covid_tests {
  derived_table: {
    sql: select * from PUBLIC.CT_US_COVID_TESTS
      ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: positive {
    type: sum
    sql: ${TABLE}."POSITIVE" ;;
  }

  measure: positive_since_previous_day {
    type: sum
    sql: ${TABLE}."POSITIVE_SINCE_PREVIOUS_DAY" ;;
  }

  measure: negative {
    type: sum
    sql: ${TABLE}."NEGATIVE" ;;
  }

  measure: negative_since_previous_day {
    type: sum
    sql: ${TABLE}."NEGATIVE_SINCE_PREVIOUS_DAY" ;;
  }

  measure: pending {
    type: sum
    sql: ${TABLE}."PENDING" ;;
  }

  measure: pending_since_previous_day {
    type: sum
    sql: ${TABLE}."PENDING_SINCE_PREVIOUS_DAY" ;;
  }

  measure: death {
    type: sum
    sql: ${TABLE}."DEATH" ;;
  }

  measure: death_since_previous_day {
    type: sum
    sql: ${TABLE}."DEATH_SINCE_PREVIOUS_DAY" ;;
  }

  measure: hospitalized {
    type: sum
    sql: ${TABLE}."HOSPITALIZED" ;;
  }

  measure: hospitalized_since_previous_day {
    type: sum
    sql: ${TABLE}."HOSPITALIZED_SINCE_PREVIOUS_DAY" ;;
  }

  measure: total {
    type: sum
    sql: ${TABLE}."TOTAL" ;;
  }

  measure: total_since_previous_day {
    type: sum
    sql: ${TABLE}."TOTAL_SINCE_PREVIOUS_DAY" ;;
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
