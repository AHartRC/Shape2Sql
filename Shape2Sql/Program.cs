using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shape2Sql
{
	using System.Configuration;
	using System.Globalization;
	using System.IO;
	using System.IO.Compression;
	using System.Text.RegularExpressions;
	using Shape2Sql.Properties;

	class Program
	{
		public static string ArchiveFolder
		{
			get
			{
				return ConfigurationManager.AppSettings["ArchiveFolder"];
			}
		}
		public static string ShapesFolder
		{
			get
			{
				return ConfigurationManager.AppSettings["ShapeFolder"];
			}
		}
		public static string ShapeExtension
		{
			get
			{
				return ConfigurationManager.AppSettings["ShapeExtension"];
			}
		}
		public static string USFileFilter
		{
			get
			{
				return ConfigurationManager.AppSettings["USFileFilter"];
			}
		}
		public static string StateFileFilter
		{
			get
			{
				return ConfigurationManager.AppSettings["StateFileFilter"];
			}
		}
		public static string CountyFileFilter
		{
			get
			{
				return ConfigurationManager.AppSettings["CountyFileFilter"];
			}
		}
		public static string UseGeography
		{
			get
			{
				return ConfigurationManager.AppSettings["UseGeography"].ToLower();
			}
		}
		public static string GeographyColumnName
		{
			get
			{
				return ConfigurationManager.AppSettings["GeographyColumnName"];
			}
		}
		public static string AppendRecords
		{
			get
			{
				return ConfigurationManager.AppSettings["AppendRecords"];
			}
		}
		public static string ConnString(string connStringName)
		{
			return ConfigurationManager.ConnectionStrings[connStringName].ConnectionString;
		}

		static void Main(string[] args)
		{
			//ExtractFiles();
			Process();
		}

		private static void Process()
		{
			DirectoryInfo workingDirectory;

			if (File.Exists(ShapesFolder))
			{
				Console.WriteLine("You have provided a file path as your shapes folder location.\r\nUtilizing the current directory of the specified file!");
				FileInfo info = new FileInfo(ShapesFolder);
				workingDirectory = info.Directory;
			}
			else
			{
				if (!Directory.Exists(ShapesFolder))
				{
					Console.WriteLine("No directory exists at the specified path. Please correct the path and try again!");
					return;
				}

				workingDirectory = new DirectoryInfo(ShapesFolder);
			}

			if (workingDirectory == null)
			{
				Console.WriteLine("There was a problem loading the directory!");
				return;
			}

			List<FileInfo> allFiles = workingDirectory.GetFiles("*.shp",
														 SearchOption.AllDirectories).OrderBy(o => o.Name).ToList();

			if (allFiles.Count > 0)
			{
				var categories = allFiles.GroupBy(g => g.Name.Split('_').Last().Substring(0, g.Name.Split('_').Last().Length - 4));
				foreach (var group in categories)
				{
					var files = group.OrderByDescending(o => o.Name.Split('_')[1])
												 .ThenBy(tb => tb.Name.Split('_').Last())
												 .ThenBy(tb => tb.Name.Split('_')[2])
												 //.ThenByDescending(tb => tb.Length)
												 .ToList();

					int batchCount = 100;
					for (int i = 0; i < files.Count(); i += batchCount)
					{
						ProcessFiles(group.Key, i, i + batchCount, files.Skip(i).Take(batchCount).ToList());
					}
				}

				//List<FileInfo> nationalFiles =
				//    files.Where(w => Regex.IsMatch(w.Name, "tl_\\d+?_us_\\w.+?\\.shp"))
				//         .OrderByDescending(o => o.Name.Split('_')[1])
				//         .ThenBy(tb => tb.Name.Split('_').Last())
				//         .ThenBy(tb => tb.Name.Split('_')[2])
				//         .ToList();
				////.OrderBy(o => o.Name.Split('_').Last()).ThenBy(tb => tb.Name.Split('_')[2]).ToList();
				//if (nationalFiles.Count > 0)
				//    ProcessFiles("USConnection", nationalFiles);

				//List<FileInfo> stateFiles = files.Where(w => Regex.IsMatch(w.Name, "tl_\\d+?_\\d{2}_\\w+?\\.shp"))
				//         .OrderByDescending(o => o.Name.Split('_')[1])
				//         .ThenBy(tb => tb.Name.Split('_').Last())
				//         .ThenBy(tb => tb.Name.Split('_')[2])
				//         .ToList();
				//if (stateFiles.Count > 0)
				//    ProcessFiles("StateConnection", stateFiles);

				//List<FileInfo> countyFiles = files.Where(w => Regex.IsMatch(w.Name, "tl_\\d+?_\\d{5}_\\w+?\\.shp"))
				//         .OrderByDescending(o => o.Name.Split('_')[1])
				//         .ThenBy(tb => tb.Name.Split('_').Last())
				//         .ThenBy(tb => tb.Name.Split('_')[2])
				//         .ToList();
				//if (countyFiles.Count > 0)
				//    ProcessFiles("CountyConnection", countyFiles);
			}
		}

		private static void ProcessFiles(string connStringName, int start, int end, List<FileInfo> files)
		{
			string batchFileName = string.Format("{0}_{1}_{2}", connStringName, start, end);
			string batchFilePath = string.Format("GDAL\\{0}.bat", batchFileName);
			using (FileStream fs = File.Create(batchFilePath))
			{
				fs.Flush();
				fs.Close();
			}

			int fileCount = files.Count();
			long counter = 0;

			List<string> commandsList = new List<string>();

			Console.WriteLine("\r\nTotal number of {0} records to be processed!", fileCount);

			foreach (FileInfo file in files)
			{
				string fileName = file.Name.Substring(0, file.Name.Length - 4).Split('_').Last();
				string fileYear = file.Name.Split('_')[1];
				string exeCmd =
					string.Format(
					"ogr2ogr -progress -append -skipfailures -nln \"{0}_{1}\" -lco \"GEOM_TYPE=GEOMETRY\" -lco \"GEOM_NAME=Geom\" -a_srs \"EPSG:4326\" -t_srs \"EPSG:4326\" -f \"MSSQLSpatial\" \"MSSQL:{2}\" \"{3}\"",
								  fileName,
								  fileYear,
								  ConnString("DefaultConnection"),
								  file.FullName);
				counter++;
				Console.Write("Processing File {0} of {1}: {2}          \r", counter, fileCount, file.Name);
				commandsList.Add(string.Format("@echo Processing File {0} of {1}: {2}", counter, fileCount, file.Name));
				commandsList.Add(exeCmd);
			}
			File.AppendAllText(batchFilePath, string.Format(Resources.BatchHeader, batchFileName, string.Join("\r\n", commandsList)));
			Console.WriteLine("\r\n{0} Total records processed!", counter);
		}

		private static void ExtractFiles()
		{
			DirectoryInfo workingDirectory;

			if (File.Exists(ArchiveFolder))
			{
				Console.WriteLine("You have provided a file path as your shapes folder location.\r\nUtilizing the current directory of the specified file!");
				FileInfo info = new FileInfo(ArchiveFolder);
				workingDirectory = info.Directory;
			}
			else
			{
				if (!Directory.Exists(ArchiveFolder))
				{
					Console.WriteLine("No directory exists at the specified path. Please correct the path and try again!");
					return;
				}

				workingDirectory = new DirectoryInfo(ArchiveFolder);
			}

			if (workingDirectory == null)
			{
				Console.WriteLine("There was a problem loading the directory!");
				return;
			}

			List<FileInfo> files = workingDirectory.GetFiles("*.zip",
														 SearchOption.AllDirectories).OrderBy(o => o.Name).ToList();

			if (files.Count > 0)
			{
				Console.WriteLine("{0} files found!", files.Count());

				foreach (FileInfo file in files)
				{
					string fullName = file.FullName;

					ZipArchive archive = new ZipArchive(file.Open(FileMode.Open, FileAccess.Read, FileShare.None), ZipArchiveMode.Read, false);
					foreach (ZipArchiveEntry entry in archive.Entries)
					{
						string outputFilePath = string.Format("{0}\\{1}", ShapesFolder, entry.Name);

						if (!File.Exists(outputFilePath))
						{
							using (StreamReader sr = new StreamReader(entry.Open()))
							{
								using (FileStream sw = File.Create(outputFilePath))
								{
									Console.Write("\rCopying file to {0}. . . Please wait!\t\t", outputFilePath);
									sr.BaseStream.CopyTo(sw);
								}
							}
						}
					}
				}
			}
			else
			{
				Console.WriteLine("No files found.");
			}
		}
	}
}
