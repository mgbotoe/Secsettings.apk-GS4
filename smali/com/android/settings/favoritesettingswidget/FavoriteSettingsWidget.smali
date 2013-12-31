.class public Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "FavoriteSettingsWidget.java"


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.favoritesettingswidget.FavoriteSettingsWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x3800

    const/4 v5, 0x0

    .line 67
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04008b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const v1, 0x7f0b0188

    const v2, 0x7f091379

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/SoundSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v2, "1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    const v2, 0x7f0b0186

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/LockScreenWallpaper;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v2, "direct_wallpaper"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 85
    const v2, 0x7f0b0189

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/SoundSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v2, "3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 92
    const v2, 0x7f0b018c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v2, "4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 99
    const v2, 0x7f0b0190

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 107
    const v2, 0x7f0b0193

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 113
    const v2, 0x7f0b0196

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    const v1, 0x7f0b019a

    invoke-static {p0, v5, v6}, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 122
    const v2, 0x7f0b019d

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 127
    const v2, 0x7f0b01a0

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 129
    return-object v0
.end method

.method private getBatteryChargingState()Z
    .locals 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, sBatteryChargingState:Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/battery/status"

    invoke-direct {p0, v1}, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "FavoriteSettingsWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " BatteryChargingState result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBatteryLevel()I
    .locals 4

    .prologue
    .line 150
    const/4 v0, -0x1

    .line 151
    .local v0, iBatteryLevel:B
    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v1}, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->getByteFromFile(Ljava/lang/String;)B

    move-result v0

    .line 152
    const-string v1, "FavoriteSettingsWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending  BatteryLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-gez v0, :cond_0

    .line 154
    const/16 v0, 0x64

    .line 156
    .end local v0           #iBatteryLevel:B
    :cond_0
    return v0
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .locals 7
    .parameter "path"

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 165
    .local v4, s:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 169
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 170
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    .line 175
    .local v3, ret:B
    if-eqz v2, :cond_1

    .line 176
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 182
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v3

    .line 178
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 181
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ret:B
    .end local v4           #s:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, -0x1

    .line 175
    .restart local v3       #ret:B
    if-eqz v1, :cond_2

    .line 176
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 178
    :catch_2
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ret:B
    :catchall_0
    move-exception v5

    .line 175
    :goto_2
    if-eqz v1, :cond_3

    .line 176
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 180
    :cond_3
    :goto_3
    throw v5

    .line 178
    :catch_3
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 171
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    const-class v1, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, in:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 200
    .local v3, s:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 205
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 210
    if-eqz v2, :cond_1

    .line 211
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 217
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-object v3

    .line 213
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 216
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "ERROR"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    if-eqz v1, :cond_2

    .line 211
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 213
    :catch_2
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 210
    :goto_2
    if-eqz v1, :cond_3

    .line 211
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 215
    :cond_3
    :goto_3
    throw v4

    .line 213
    :catch_3
    move-exception v0

    .line 214
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 209
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 206
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 223
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->getBatteryLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->getBatteryChargingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const v0, 0x7f091193

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const-string v1, "7"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 234
    const/high16 v1, 0x3800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->mContext:Landroid/content/Context;

    .line 48
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/android/settings/favoritesettingswidget/FavoriteSettingsWidget;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 49
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 50
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
