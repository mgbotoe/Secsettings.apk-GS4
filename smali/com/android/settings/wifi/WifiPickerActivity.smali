.class public Lcom/android/settings/wifi/WifiPickerActivity;
.super Landroid/preference/PreferenceActivity;
.source "WifiPickerActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# static fields
.field private static DBG:Z

.field private static final WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z


# instance fields
.field private backButton:Landroid/widget/Button;

.field private isCurrentAPchecked:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private nextButton:Landroid/widget/Button;

.field private skipButton:Landroid/widget/Button;

.field private v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConnectCaptivePortalDuringSetupWizard"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    .line 77
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 276
    new-instance v0, Lcom/android/settings/wifi/WifiPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiPickerActivity$5;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiPickerActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiPickerActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiPickerActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiPickerActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    sget-boolean v2, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v2, :cond_3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 289
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 290
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 292
    :cond_2
    const-string v2, "WifiPickerActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    if-nez v2, :cond_3

    .line 294
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_CAPTIVE_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 298
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 236
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :cond_0
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v8, "WifiPickerActivity"

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v8, 0x1020308

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    .local v0, buttonBar:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 94
    move-object v2, p0

    .line 95
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v8, "layout_inflater"

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 97
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f04016e

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    .line 98
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 100
    .local v6, intent:Landroid/content/Intent;
    const-string v8, "extra_prefs_show_button_bar"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 101
    const-string v8, "WifiPickerActivity"

    const-string v9, "Exception while onCreate 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v8, "wifi_show_custom_button"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    const-string v8, "wifi_auto_finish_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    const-string v8, "WifiPickerActivity"

    const-string v9, "wifi_auto_finish_on_connect is true !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v8, "WifiPickerActivity"

    const-string v9, "EXTRA_SHOW_CUSTOM_BUTTON is true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b0161

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03e9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03eb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 112
    .local v3, customButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    new-instance v8, Lcom/android/settings/wifi/WifiPickerActivity$1;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiPickerActivity$1;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .end local v3           #customButton:Landroid/widget/Button;
    :cond_0
    const-string v8, "wifi_auto_finish_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "wifi_show_custom_button"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 126
    const-string v8, "WifiPickerActivity"

    const-string v9, "wifi_auto_finish_on_connect is false !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03e9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    .line 129
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03eb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    .line 130
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    .line 132
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b0161

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const-string v8, "extra_prefs_show_skip"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 134
    const-string v8, "WifiPickerActivity"

    const-string v9, "skip_button set VISIBLE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03e9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_0
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03eb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const-string v8, "connectivity"

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 146
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    const/4 v7, 0x0

    .line 147
    .local v7, wifiNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 148
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/wifi/WifiPickerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiPickerActivity$2;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/wifi/WifiPickerActivity$3;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiPickerActivity$3;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/wifi/WifiPickerActivity$4;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiPickerActivity$4;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .end local v1           #connectivity:Landroid/net/ConnectivityManager;
    .end local v7           #wifiNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v8, "wifi_show_wifi_required_info"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03e8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    .line 186
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    return-void

    .line 138
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    const-string v8, "WifiPickerActivity"

    const-string v9, "skip_button set INVISIBLE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v9, 0x7f0b03e9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 179
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    const-string v8, "WifiPickerActivity"

    const-string v9, "Exception while onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->finish()V

    goto :goto_2

    .line 152
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #wifiNetworkInfo:Landroid/net/NetworkInfo;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 254
    sget-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 258
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 247
    sget-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiPickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    :cond_0
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x1

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    const-string v2, ":android:show_fragment"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    const-string v2, ":android:no_headers"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 205
    .local v1, orgIntent:Landroid/content/Intent;
    const-string v2, "extra_prefs_show_button_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const-string v2, "extra_prefs_show_button_bar"

    const-string v3, "extra_prefs_show_button_bar"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    :cond_0
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "extra_prefs_set_next_text"

    const-string v3, "extra_prefs_set_next_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :cond_1
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    const-string v2, "extra_prefs_set_back_text"

    const-string v3, "extra_prefs_set_back_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_2
    const-string v2, "wifi_show_action_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const-string v2, "wifi_show_action_bar"

    const-string v3, "wifi_show_action_bar"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    :cond_3
    const-string v2, "wifi_show_menus"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 222
    const-string v2, "wifi_show_menus"

    const-string v3, "wifi_show_menus"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    :cond_4
    if-nez p3, :cond_5

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_5
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
