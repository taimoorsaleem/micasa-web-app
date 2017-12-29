using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace MiCasa_Final_Project
{
    public static class ImageManipulation
    {
        public static Image ScaleImage(Image image)
        {
            double CurrentHeight = image.Height;
            double RequiredHeight = 90;
            double RequiredWidthRatio = CurrentHeight / RequiredHeight;
            double CurrentWidth = image.Width;
            double RequiredWidth = CurrentWidth / RequiredWidthRatio;

            //var ratio = (double)maxHeight / image.Height;

            //var newWidth = (int)(image.Width * ratio);
            //var newHeight = (int)(image.Height * ratio);

            var newImage = new Bitmap(Convert.ToInt32(RequiredWidth), Convert.ToInt32(RequiredHeight));
            using (var g = Graphics.FromImage(newImage))
            {
                g.DrawImage(image, 0, 0, Convert.ToInt32(RequiredWidth), Convert.ToInt32(RequiredHeight));
            }
            return newImage;
        }
    }
}