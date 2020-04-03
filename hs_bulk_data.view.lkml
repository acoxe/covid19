view: hs_bulk_data {
  derived_table: {
    sql: select * from PUBLIC.HS_BULK_DATA
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: long {
    type: number
    sql: ${TABLE}."LONG" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: healthcare_provider_type {
    type: string
    sql: ${TABLE}."HEALTHCARE_PROVIDER_TYPE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}."OPERATOR" ;;
  }

  dimension: beds {
    type: number
    sql: ${TABLE}."BEDS" ;;
  }

  dimension: staff_medical {
    type: number
    sql: ${TABLE}."STAFF_MEDICAL" ;;
  }

  dimension: staff_nursing {
    type: number
    sql: ${TABLE}."STAFF_NURSING" ;;
  }

  set: detail {
    fields: [
      long,
      lat,
      healthcare_provider_type,
      name,
      operator,
      beds,
      staff_medical,
      staff_nursing
    ]
  }
}
