.class public Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderMobileHotspot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderMobileHotspot"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 229
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 97
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderMobileHotspot"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    const v1, 0x7f0b0010

    invoke-static {p0, v3}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 107
    invoke-static {v0, p0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 108
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040004

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderMobileHotspot"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 223
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    .line 225
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->registerBroadcastReceiver()V

    .line 227
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    const-class v1, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_hotspot_widget"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 208
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderMobileHotspot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0
.end method

.method private static isAirplaneMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 216
    .local v0, result:Z
    :cond_0
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_hotspot_widget"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 196
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 199
    :cond_2
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const v1, 0x7f09043a

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 3
    .parameter "views"
    .parameter "context"

    .prologue
    const v2, 0x7f0b0013

    const/4 v1, 0x0

    .line 133
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const v0, 0x7f02000b

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 138
    const-string v0, "AccessibilityWidgetProviderMobileHotspot"

    const-string v1, "updateButtons , icon_on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const v0, 0x7f02000a

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 141
    const-string v0, "AccessibilityWidgetProviderMobileHotspot"

    const-string v1, "updateButtons , icon_off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 120
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 121
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderMobileHotspot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 123
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const-string v0, "AccessibilityWidgetProviderMobileHotspot"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->unregisterBroadcastReceiver()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;

    .line 86
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    const-string v0, "AccessibilityWidgetProviderMobileHotspot"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 171
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 173
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, buttonId:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 175
    const-string v2, "AccessibilityWidgetProviderMobileHotspot"

    const-string v3, "BUTTON_CENTER : "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->toggleWidgetMode(Landroid/content/Context;)V

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->updateWidget(Landroid/content/Context;)V

    .line 187
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 65
    const-string v2, "AccessibilityWidgetProviderMobileHotspot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 68
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 69
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
