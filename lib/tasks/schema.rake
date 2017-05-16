namespace :schema do
	desc "schema management with ridgepole"
	task :sync, ['org'] => :environment do |task, args|
		if args.org.present?
			if ! Org.pluck(:prefix).include?(args.org)
				puts "Invalid Option: Org NOT registered."
				next
			end

			schema_path = "#{Rails.root.to_s}/app/models/#{args.org}"
			if ! Dir.exist? schema_path
				puts "#{schema_path} NOT exist."
				next
			end
			puts `bash #{Rails.root.to_s}/bin/apply-schema.sh #{schema_path} #{Rails.env}`
		else
			schema_file = "#{Rails.root.to_s}/config/Schemafile"
			if ! File.exist? schema_file
				puts "#{schema_file} NOT exist."
				next
			elsif File.exist? "#{Rails.root.to_s}/config/_Schemafile_base"
				puts "Schemafile & _Schemafile_base cannot co-exist"
				next
			end
			puts `ridgepole -c config/database.yml -f #{schema_file} -a -E #{Rails.env}`
		end
	end
end
