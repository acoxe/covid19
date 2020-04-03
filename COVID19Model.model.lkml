connection: "covid-19"

# include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

include: "*.view"

explore: ct_us_covid_tests {}

explore: demographics {}

# explore: hdx_acaps {}

# explore: hs_bulk_data {}

# explore: hum_restrictions_airline {}

# explore: hum_restrictions_country {}

explore: jhu_covid_19 {}

# explore: kff_hcp_capacity {}

# explore: kff_us_icu_beds {}

# explore: kff_us_policy_actions {}

# explore: kff_us_state_mitigations {}

# explore: nyt_us_covid19 {}

# explore: pcm_dps_covid19 {}

# explore: pcm_dps_covid19_details {}

# explore: vh_can_detailed {}

# explore: who_situation_reports {}
