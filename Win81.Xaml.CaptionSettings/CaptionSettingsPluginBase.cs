﻿// <copyright file="CaptionSettingsPluginBase.cs" company="Microsoft Corporation">
// Copyright (c) 2013 Microsoft Corporation All Rights Reserved
// </copyright>
// <author>Michael S. Scherotter</author>
// <email>mischero@microsoft.com</email>
// <date>2013-10-28</date>
// <summary>Caption Settings Plugin base class</summary>

namespace Microsoft.PlayerFramework.CaptionSettings
{
    using System;
    using Microsoft.PlayerFramework.CaptionSettings.Model;

    /// <summary>
    /// base class for Caption Settings Plug-ins
    /// </summary>
    public partial class CaptionSettingsPluginBase : PluginBase
    {
        #region Events
        /// <summary>
        /// Event to load caption settings
        /// </summary>
        public event EventHandler<CustomCaptionSettingsEventArgs> OnLoadCaptionSettings;

        /// <summary>
        /// Event to save caption settings
        /// </summary>
        public event EventHandler<CustomCaptionSettingsEventArgs> OnSaveCaptionSettings;
        #endregion

        #region Properties
        /// <summary>
        /// Gets or sets the settings
        /// </summary>
        public CustomCaptionSettings Settings { get; set; }

        /// <summary>
        /// Gets a value indicating whether this is using the default settings
        /// </summary>
        public bool IsDefault { get; private set; }

        #endregion

        #region Methods
        /// <summary>
        /// Apply the caption settings to the media player
        /// </summary>
        /// <param name="settings">the caption settings</param>
        public void ApplyCaptionSettings(CustomCaptionSettings settings)
        {
            ////System.Diagnostics.Debug.WriteLineIf(settings != null, "Applying Caption Settings: " + settings.ToXmlString());

            if (this.MediaPlayer == null)
            {
                return;
            }

            // 12/23/2013 - set to default if a null caption settings is applied
            // but do not set to false if a settings value is applied
            if (settings == null)
            {
                this.IsDefault = true;
            }

            // let the derived class apply the settings
            this.OnApplyCaptionSettings(settings);

            if (this.OnSaveCaptionSettings != null)
            {
                this.OnSaveCaptionSettings(this, new CustomCaptionSettingsEventArgs(settings));
            }

            this.Save();
        }

        /// <summary>
        /// Default implementation does nothing - derived classes should 
        /// override this to apply caption settings.
        /// </summary>
        /// <param name="settings">the custom caption settings</param>
        public virtual void OnApplyCaptionSettings(CustomCaptionSettings settings)
        {
        }

        /// <summary>
        /// Activate the plug-in
        /// </summary>
        /// <returns>true if the CaptionsPlugIn is also installed</returns>
        protected override bool OnActivate()
        {
            this.Activate();

            if (this.OnLoadCaptionSettings != null)
            {
                var eventArgs = new CustomCaptionSettingsEventArgs(this.Settings);

                this.OnLoadCaptionSettings(this, eventArgs);

                this.Settings = eventArgs.Settings;
            }

            this.ApplyCaptionSettings(this.Settings);

            return true;
        }

        /// <summary>
        /// Disconnect the settings pane command requested and caption parsed event handlers.
        /// </summary>
        protected override void OnDeactivate()
        {
            this.Deactivate();
        }

        #endregion

        #region Implementation
        #endregion
    }
}
