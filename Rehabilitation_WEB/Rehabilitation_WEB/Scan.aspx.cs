using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AForge.Video;
using AForge.Video.DirectShow;
using ZXing;

namespace Rehabilitation_WEB
{
    public partial class Scan : System.Web.UI.Page
    {

        FilterInfoCollection filterInfoCollection;
        VideoCaptureDevice captureDevice;
        

        private void Page_Load(object sender, EventArgs e)
        {
            filterInfoCollection = new FilterInfoCollection(FilterCategory.VideoInputDevice);
            foreach (FilterInfo filterInfo in filterInfoCollection) 
                cboDevice.Items.Add(filterInfo.Name);
            cboDevice.SelectedIndex = 0;
        }

        protected void btnStart_Click(object sender, EventArgs e)
        {
            captureDevice = new VideoCaptureDevice(filterInfoCollection[cboDevice.SelectedIndex].MonikerString);
            captureDevice.NewFrame += CaptureDevice_NewFrame;
            captureDevice.Start();
        }

        private void CaptureDevice_NewFrame(object sender, NewFrameEventArgs eventArgs)
        {
            throw new NotImplementedException();
        }

        private void Page_PageClosing(object sender, EventArgs e)
        {
            if (captureDevice.IsRunning)
                captureDevice.Stop();
        }
    }
}