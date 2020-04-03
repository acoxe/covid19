view: jhu_covid_19 {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."JHU_COVID_19"
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

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}."CASE_TYPE" ;;
  }

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}."LONG" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: difference {
    type: number
    sql: ${TABLE}."DIFFERENCE" ;;
  }

  dimension_group: last_updated_date {
    type: time
    sql: ${TABLE}."LAST_UPDATED_DATE" ;;
  }

  set: detail {
    fields: [
      country_region,
      province_state,
      county,
      fips,
      date,
      case_type,
      cases,
      long,
      lat,
      iso3166_1,
      iso3166_2,
      difference,
      last_updated_date_time
    ]
  }
}