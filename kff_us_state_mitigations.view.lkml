view: kff_us_state_mitigations {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."KFF_US_STATE_MITIGATIONS"
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

  dimension: bar_restaurant_limits {
    type: string
    sql: ${TABLE}."BAR_RESTAURANT_LIMITS" ;;
  }

  dimension: mandatory_quarantine {
    type: string
    sql: ${TABLE}."MANDATORY_QUARANTINE" ;;
  }

  dimension: non_essential_business_closure {
    type: string
    sql: ${TABLE}."NON_ESSENTIAL_BUSINESS_CLOSURE" ;;
  }

  dimension: emergency_declaration {
    type: string
    sql: ${TABLE}."EMERGENCY_DECLARATION" ;;
  }

  dimension: primary_elections_postponed {
    type: string
    sql: ${TABLE}."PRIMARY_ELECTIONS_POSTPONED" ;;
  }

  dimension: state_mandated_school_closures {
    type: string
    sql: ${TABLE}."STATE_MANDATED_SCHOOL_CLOSURES" ;;
  }

  dimension: large_gatherings_ban {
    type: string
    sql: ${TABLE}."LARGE_GATHERINGS_BAN" ;;
  }

  dimension_group: last_updated_date {
    type: time
    sql: ${TABLE}."LAST_UPDATED_DATE" ;;
  }

  set: detail {
    fields: [
      country_region,
      bar_restaurant_limits,
      mandatory_quarantine,
      non_essential_business_closure,
      emergency_declaration,
      primary_elections_postponed,
      state_mandated_school_closures,
      large_gatherings_ban,
      last_updated_date_time
    ]
  }
}
