@pushd %~dp0%

cd Microsoft.PlayerFramework
del *.vsix
cd ..

rmdir /s /q "Microsoft.PlayerFramework.Js\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Adaptive\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Adaptive\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Adaptive\References\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Advertising\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Advertising\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Advertising\References\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Analytics\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Analytics\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Analytics\References\"
rmdir /s /q "Microsoft.PlayerFramework.Js.TimedText\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.TimedText\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.TimedText\References\"
rmdir /s /q "Microsoft.PlayerFramework.Win8.Dash\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Win8.Dash\References\"

rmdir /s /q "Microsoft.PlayerFramework.Xaml\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Adaptive\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Adaptive\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Advertising\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Advertising\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Analytics\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Analytics\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.CaptionMarkers\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.CaptionMarkers\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.TimedText\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.TimedText\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.WebVTT\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.WebVTT\References"

rmdir /s /q "Microsoft.PlayerFramework.Js.Win81\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Adaptive\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Adaptive\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Adaptive\References\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Advertising\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Advertising\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Advertising\References\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Analytics\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Analytics\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.Analytics\References\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.TimedText\DesignTime\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.TimedText\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Js.Win81.TimedText\References\"
rmdir /s /q "Microsoft.PlayerFramework.Win81.Dash\Redist\"
rmdir /s /q "Microsoft.PlayerFramework.Win81.Dash\References\"

rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.Adaptive\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.Adaptive\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.Advertising\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.Advertising\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.Analytics\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.Analytics\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.CaptionMarkers\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.CaptionMarkers\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.TimedText\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.TimedText\References"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.WebVTT\Redist"
rmdir /s /q "Microsoft.PlayerFramework.Xaml.Win81.WebVTT\References"

rmdir /s /q "Microsoft.PlayerFramework.WP8\References"
rmdir /s /q "Microsoft.PlayerFramework.WP8.Adaptive\References"
rmdir /s /q "Microsoft.PlayerFramework.WP8.Advertising\References"
rmdir /s /q "Microsoft.PlayerFramework.WP8.Analytics\References"
rmdir /s /q "Microsoft.PlayerFramework.WP8.TimedText\References"
rmdir /s /q "Microsoft.PlayerFramework.WP8.WebVTT\References"
rmdir /s /q "Microsoft.PlayerFramework.WP8.Dash\References"

@popd

@echo.
@echo Done.
@echo.
