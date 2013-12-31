.class Lcom/android/settings/SettingsTabActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$3;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1997
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$800()I

    move-result v2

    .line 2000
    .local v2, prevWifiSummaryId:I
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2001
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2002
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2003
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    .line 2021
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$800()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 2022
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity$3;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v5}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 2024
    :cond_1
    return-void

    .line 2005
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity$3;->this$0:Lcom/android/settings/SettingsTabActivity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 2006
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2007
    invoke-static {v7}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0

    .line 2009
    :cond_3
    invoke-static {v8}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0

    .line 2012
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2013
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2014
    .local v3, state:I
    if-eq v3, v7, :cond_5

    if-nez v3, :cond_6

    .line 2015
    :cond_5
    invoke-static {v8}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0

    .line 2016
    :cond_6
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 2017
    invoke-static {v7}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0
.end method
