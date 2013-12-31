.class public Lcom/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z


# instance fields
.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private isCurrentAPchecked:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private nextButton:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private previousButton:Landroid/view/View;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private scanButton:Landroid/widget/Button;

.field private wifiSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConnectCaptivePortalDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v4, 0x3f80

    const v5, 0x3ecccccd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v3, :cond_2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 195
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v3, "WifiSecSetupActivity"

    const-string v6, "onHandle"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v3, "WifiSecSetupActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v3, "WifiSecSetupActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v6, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v6, :cond_1

    .line 200
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 202
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    if-nez v3, :cond_2

    .line 203
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.WIFI_CAPTIVE_ACTIVITY"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 208
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_4

    .line 209
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 213
    .restart local v1       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 215
    .local v2, isConn:Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 216
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 218
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 220
    if-eqz v2, :cond_7

    .line 221
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 222
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 229
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #isConn:Z
    :cond_4
    :goto_2
    return-void

    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #isConn:Z
    :cond_5
    move v3, v5

    .line 216
    goto :goto_0

    :cond_6
    move v4, v5

    .line 218
    goto :goto_1

    .line 224
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 225
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, frame:Landroid/widget/FrameLayout;
    const v2, 0x7f0b049b

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 182
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 184
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 185
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 187
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 160
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onScanMenuPressed()V

    goto :goto_0

    .line 165
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 171
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x7f0b007f -> :sswitch_2
        0x7f0b0545 -> :sswitch_0
        0x7f0b0546 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x4

    const v5, 0x3ecccccd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 99
    :cond_1
    const v1, 0x7f0401e3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    .line 101
    const v1, 0x7f0b0545

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    .line 102
    const v1, 0x7f0b0546

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    .line 103
    const v1, 0x7f0b04e4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0b04e3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    .line 106
    const v1, 0x7f0b0547

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0b0548

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f0b0543

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    .line 110
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    .line 116
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 118
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 141
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 142
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    return-void

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 134
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 247
    return-void
.end method
