view: kff_hcp_capacity {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."KFF_HCP_CAPACITY"
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

  dimension: total_hospital_beds {
    type: number
    sql: ${TABLE}."TOTAL_HOSPITAL_BEDS" ;;
  }

  dimension: hospital_beds_per_1000_population {
    type: number
    sql: ${TABLE}."HOSPITAL_BEDS_PER_1000_POPULATION" ;;
  }

  dimension: total_chcs {
    type: number
    sql: ${TABLE}."TOTAL_CHCS" ;;
  }

  dimension: chc_service_delivery_sites {
    type: number
    sql: ${TABLE}."CHC_SERVICE_DELIVERY_SITES" ;;
  }

  set: detail {
    fields: [
      country_region,
      province_state,
      total_hospital_beds,
      hospital_beds_per_1000_population,
      total_chcs,
      chc_service_delivery_sites
    ]
  }
}
