view: demographics {
  derived_table: {
    sql: SELECT * FROM PUBLIC.DEMOGRAPHICS
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  measure: total_population {
    type: sum
    sql: ${TABLE}."TOTAL_POPULATION" ;;
  }

  measure: total_male_population {
    type: sum
    sql: ${TABLE}."TOTAL_MALE_POPULATION" ;;
  }

  measure: total_female_population {
    type: sum
    sql: ${TABLE}."TOTAL_FEMALE_POPULATION" ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}."latitude" ;;
    sql_longitude: ${TABLE}."longitude" ;;
  }

  set: detail {
    fields: [
      iso3166_1,
      iso3166_2,
      fips,
      latitude,
      longitude,
      state,
      county,
      total_population,
      total_male_population,
      total_female_population,
      location
    ]
  }
}
