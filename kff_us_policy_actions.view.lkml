view: kff_us_policy_actions {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."KFF_US_POLICY_ACTIONS"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: waive_cost_sharing_for_covid_19_treatment {
    type: string
    sql: ${TABLE}."WAIVE_COST_SHARING_FOR_COVID_19_TREATMENT" ;;
  }

  dimension: free_cost_vaccine_when_available {
    type: string
    sql: ${TABLE}."FREE_COST_VACCINE_WHEN_AVAILABLE" ;;
  }

  dimension: state_requires_waiver_of_prior_authorization_requirements {
    type: string
    sql: ${TABLE}."STATE_REQUIRES_WAIVER_OF_PRIOR_AUTHORIZATION_REQUIREMENTS" ;;
  }

  dimension: early_prescription_refills {
    type: string
    sql: ${TABLE}."EARLY_PRESCRIPTION_REFILLS" ;;
  }

  dimension: marketplace_special_enrollment_period {
    type: string
    sql: ${TABLE}."MARKETPLACE_SPECIAL_ENROLLMENT_PERIOD" ;;
  }

  dimension: section_1135_waiver {
    type: string
    sql: ${TABLE}."SECTION_1135_WAIVER" ;;
  }

  dimension: paid_sick_leave {
    type: string
    sql: ${TABLE}."PAID_SICK_LEAVE" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension_group: last_updated_date {
    type: time
    sql: ${TABLE}."LAST_UPDATED_DATE" ;;
  }

  set: detail {
    fields: [
      province_state,
      waive_cost_sharing_for_covid_19_treatment,
      free_cost_vaccine_when_available,
      state_requires_waiver_of_prior_authorization_requirements,
      early_prescription_refills,
      marketplace_special_enrollment_period,
      section_1135_waiver,
      paid_sick_leave,
      notes,
      last_updated_date_time
    ]
  }
}
