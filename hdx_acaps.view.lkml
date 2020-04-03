view: hdx_acaps {
  derived_table: {
    sql: select * from PUBLIC.HDX_ACAPS
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country_state {
    type: string
    sql: ${TABLE}."COUNTRY_STATE" ;;
  }

  dimension: admin_2 {
    type: string
    sql: ${TABLE}."ADMIN_2" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: measure {
    type: string
    sql: ${TABLE}."MEASURE" ;;
  }

  dimension: targeted_pop_group {
    type: string
    sql: ${TABLE}."TARGETED_POP_GROUP" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: non_compliance {
    type: string
    sql: ${TABLE}."NON_COMPLIANCE" ;;
  }

  dimension: date_implemented {
    type: date
    sql: ${TABLE}."DATE_IMPLEMENTED" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}."SOURCE_TYPE" ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}."LINK" ;;
  }

  dimension: entry_date {
    type: date
    sql: ${TABLE}."ENTRY_DATE" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension_group: last_updated_date {
    type: time
    sql: ${TABLE}."LAST_UPDATED_DATE" ;;
  }

  set: detail {
    fields: [
      country_state,
      admin_2,
      region,
      category,
      measure,
      targeted_pop_group,
      comments,
      non_compliance,
      date_implemented,
      source,
      source_type,
      link,
      entry_date,
      iso3166_1,
      last_updated_date_time
    ]
  }
}
