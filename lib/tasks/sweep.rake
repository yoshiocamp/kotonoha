# namespace :sweep do
#   desc "Delete kotobas after 24 hours"
#   task kotobas: :environment do
#     Kotoba.where('created_at <= ?', 24.hours.ago).destroy_all
#   end
# end
namespace :sweep do
  desc "Delete kotobas after 1 hour"
  task kotobas: :environment do
    Kotoba.where('created_at <= ?', 1.hour.ago).destroy_all
  end
end