using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HANAtoPostgreSyncApp.Models
{
    public class CountDownTimer
    {

        private TimerApplication timerApplication;


        //private System.Timers.Timer timer;
        public static System.Timers.Timer timer; //.debug want to this public and hopefully stopc running instance of time with timer.eneabled= false ;
        private int timerInterval;  // in seconds
        private int togo; // in seconds
        public bool running = false;
        private bool stopped = false;

        private string[] runTimes;
        private string nextRunTime;

        public CountDownTimer(TimerApplication timerApplication, int timerInterval)
        {
            this.timerApplication = timerApplication;

            this.timerInterval = timerInterval * 60;
            this.togo = this.timerInterval;
        }

        public CountDownTimer(TimerApplication timerApplication, string[] runTimes)
        {
            this.timerApplication = timerApplication;

            this.runTimes = runTimes;
            Array.Sort(this.runTimes);

            timerInterval = GetNextRunTime();
            this.togo = this.timerInterval;
        }

        public void Start()
        {
            timer = new System.Timers.Timer();

            timer.Interval = 1000;
            timer.Elapsed += HandleTimer;
            timer.AutoReset = true;
            timer.Enabled = true;
            timer.Start();

        }

        public void Disable() //.debug dss on 1/16/2018 added this method
        {
            timer.Enabled = false;
        }



        private void HandleTimer(Object source, EventArgs e)
        {

            if (running) return;

            if (stopped)
            {
                timer.Enabled = false;
                return;
            }


            if (togo >= 0)
            {
                TimeSpan timeSpan = TimeSpan.FromSeconds(togo);
                string ts;
                if (togo > 3600)
                {
                    ts = timeSpan.ToString(@"hh\:mm\:ss");
                }
                else
                {
                    ts = timeSpan.ToString(@"mm\:ss");
                }


                string msg = ts + " remaining until next run";
                if (nextRunTime == null)
                {
                    msg += ".";
                }
                else
                {
                    msg += " (" + nextRunTime + ").";
                }
                Utility.TraceService(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location), msg);
                togo--;

            }
            else
            {
                running = true;
                timerApplication.Run();
                running = false;

                if (runTimes != null)
                {
                    timerInterval = GetNextRunTime();
                }

                togo = timerInterval;
            }


        }

        private int GetNextRunTime()
        {
            int[] diffs = new int[runTimes.Length];

            int now = (int)TimeSpan.Parse(DateTime.Now.ToString("HH:mm:ss")).TotalSeconds;

            int i;

            bool found = false;
            for (i = 0; i < runTimes.Length; i++)
            {
                diffs[i] = (int)TimeSpan.Parse(runTimes[i]).TotalSeconds - now;
                if (diffs[i] > 0)
                {
                    found = true;
                    break;
                }
            }

            if (found)
            {
                nextRunTime = runTimes[i];
                return diffs[i];
            }
            else
            {
                nextRunTime = runTimes[0];
                return 86400 + diffs[0];
            }



        }

        public void Stop()
        {
            Utility.TraceService(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location), "Stopped");
            stopped = true;
        }

        public void Done()
        {

            running = false;

        }


        public bool IsRunning()
        {
            return running;
        }

        public bool IsStopped()
        {
            return stopped;
        }

    }
}
