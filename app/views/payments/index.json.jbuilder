json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_tab_id, :value, :success, :payment_date
  json.url payment_url(payment, format: :json)
end
