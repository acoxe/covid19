view: kff_us_icu_beds {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."KFF_US_ICU_BEDS"
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

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."NOTE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: hospitals {
    type: sum
    sql: ${TABLE}."HOSPITALS" ;;
  }

  measure: icu_beds {
    type: sum
    sql: ${TABLE}."ICU_BEDS" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
  }

  set: detail {
    fields: [
      country_region,
      iso3166_1,
      iso3166_2,
      note,
      state,
      hospitals,
      icu_beds,
      county,
      fips
    ]
  }
}
