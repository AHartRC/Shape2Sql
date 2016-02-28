using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shape2Sql
{
    using System.Diagnostics;
    using System.Threading;

    public class ExecuteCommand
    {
        public static void ExecuteCommandSync(object command)
        {
            try
            {
                ProcessStartInfo psi = new ProcessStartInfo("cmd", string.Format("/c {0}", command))
                                       {
                                           RedirectStandardOutput = true,
                                           UseShellExecute = false,
                                           CreateNoWindow = true
                                       };

                Process proc = new Process
                               {
                                   StartInfo = psi
                               };
                proc.Start();

                string result = proc.StandardOutput.ReadToEnd();
                Console.WriteLine(result);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }

        public static void ExecuteCommandAsync(string command)
        {
            try
            {
                Thread newThread = new Thread(ExecuteCommandSync)
                                   {
                                       IsBackground = true,
                                       Priority = ThreadPriority.AboveNormal
                                   };
                newThread.Start(command);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }
}