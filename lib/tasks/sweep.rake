# namespace :sweep do
#   desc "Delete kotobas after 24 hours"
#   task kotobas: :environment do
#     Kotoba.where('created_at <= ?', 24.hours.ago).destroy_all
#   end
# end
namespace :sweep do
  desc "Delete kotobas after 1 minute"
  task kotobas: :environment do
    Kotoba.where('created_at <= ?', 1.minute.ago).destroy_all
  end
end