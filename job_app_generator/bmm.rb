all_company_rows = File.readlines("bay_area.csv").sample(100)

sample_company_rows = []

all_company_rows.each do |row|
  company, url = row.split(",")
  sample_company_rows << "#{company} | #{url}"
end

sample_companies = File.write("sample_companies.csv", sample_company_rows.join(",\n"))