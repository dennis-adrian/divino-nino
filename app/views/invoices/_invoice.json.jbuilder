json.extract! invoice, :id, :number, :creation_date, :due_date, :total_cost, :notes, :client_id, :reservation_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
