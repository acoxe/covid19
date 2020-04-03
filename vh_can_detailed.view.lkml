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

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: cases_per_million {
    type: number
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
