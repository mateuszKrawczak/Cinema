﻿namespace Cinema
{
    partial class ReportClientPanel
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.textBoxReport = new System.Windows.Forms.TextBox();
            this.buttonReport = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // textBoxReport
            // 
            this.textBoxReport.BackColor = System.Drawing.Color.LavenderBlush;
            this.textBoxReport.Location = new System.Drawing.Point(201, 68);
            this.textBoxReport.Multiline = true;
            this.textBoxReport.Name = "textBoxReport";
            this.textBoxReport.Size = new System.Drawing.Size(524, 501);
            this.textBoxReport.TabIndex = 0;
            // 
            // buttonReport
            // 
            this.buttonReport.Font = new System.Drawing.Font("Castellar", 12F, System.Drawing.FontStyle.Bold);
            this.buttonReport.Location = new System.Drawing.Point(387, 620);
            this.buttonReport.Name = "buttonReport";
            this.buttonReport.Size = new System.Drawing.Size(188, 67);
            this.buttonReport.TabIndex = 1;
            this.buttonReport.Text = "Report";
            this.buttonReport.UseVisualStyleBackColor = true;
            this.buttonReport.Click += new System.EventHandler(this.buttonReport_Click);
            // 
            // ReportClientPanel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.Lavender;
            this.Controls.Add(this.buttonReport);
            this.Controls.Add(this.textBoxReport);
            this.Name = "ReportClientPanel";
            this.Size = new System.Drawing.Size(728, 690);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBoxReport;
        private System.Windows.Forms.Button buttonReport;
    }
}
