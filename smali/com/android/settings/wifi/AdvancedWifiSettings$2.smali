.class Lcom/android/settings/wifi/AdvancedWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->finish()V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 242
    const-string v4, "launch_with"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, launchWith:I
    if-eq v2, v9, :cond_1

    .line 244
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->finish()V

    goto :goto_0

    .line 246
    .end local v2           #launchWith:I
    :cond_3
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 247
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 248
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    #setter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsConn:Z
    invoke-static {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$102(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    .line 249
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$200(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto :goto_0

    .line 250
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_4
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 253
    .local v3, state:I
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string v6, "wifi_hotspot20_enable"

    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsSwitchPreference;

    iput-object v4, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    .line 254
    if-ne v3, v9, :cond_5

    .line 255
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_1

    .line 256
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v8}, Lcom/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 258
    :cond_5
    if-ne v3, v8, :cond_1

    .line 259
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 263
    .end local v3           #state:I
    :cond_6
    const-string v4, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 265
    const-string v4, "AdvancedWifiSettings"

    const-string v5, "HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V
    invoke-static {v4, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$300(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    .line 267
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0902d8

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 269
    :cond_7
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 270
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    .line 271
    :cond_8
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/ConnectivityManager;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z
    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v5

    if-eq v4, v5, :cond_a

    .line 275
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    .line 276
    :cond_a
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateScanAlwaysAvailableCheck()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$600(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0
.end method
