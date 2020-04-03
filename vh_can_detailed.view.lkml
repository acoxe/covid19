view: vh_can_detailed {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."VH_CAN_DETAILED"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: state_region {
    type: string
    sql: ${TABLE}."STATE_REGION" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  measure: cases {
    type: sum
    sql: ${TABLE}."CASES" ;;
  }

  measure: deaths {
    type: sum
    sql: ${TABLE}."DEATHS" ;;
  }

  measure: cases_per_million {
    type: sum
    sql: ${TABLE}."CASES_PER_MILLION" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  set: detail {
    fields: [
      state_region,
      province_state,
      cases,
      deaths,
      cases_per_million,
      iso3166_1,
      iso3166_2
    ]
  }
}
