.class public Lcom/android/settings/wifi/hs20/Hs20Settings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Hs20Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;,
        Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;
    }
.end annotation


# instance fields
.field private isAutoInterworking:Z

.field private isInDialog:Z

.field private mAvailableHs:Landroid/preference/PreferenceGroup;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectableHs:Lcom/android/settings/ProgressCategory;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mContext:Landroid/content/Context;

.field mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

.field private mLastScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLastWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mNoHs:Landroid/preference/PreferenceGroup;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mScanStateListener:Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;

.field private final mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

.field private mValidApList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/hs20/Hs20AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 67
    iput-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->isAutoInterworking:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;-><init>(Lcom/android/settings/wifi/hs20/Hs20Settings;Lcom/android/settings/wifi/hs20/Hs20Settings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->isInDialog:Z

    .line 351
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/hs20/Hs20Settings;)Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/hs20/Hs20Settings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/hs20/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastScanResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/hs20/Hs20Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->updateConnectableApList()V

    return-void
.end method

.method private getIntentFilters()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.net.wifi.HS20_AP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.net.wifi.HS20_ANQP_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    return-object v0
.end method

.method private getSecuredKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "ssid"

    .prologue
    const/16 v3, 0x11

    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 342
    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setRefreshAction(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "refresh"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnectableHs:Lcom/android/settings/ProgressCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 333
    iget-boolean v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->isInDialog:Z

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanStateListener:Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;->onScanCompleted(Ljava/lang/Boolean;)V

    .line 338
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 334
    goto :goto_0

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private updateConnectableApList()V
    .locals 10

    .prologue
    .line 257
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnectableHs:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v7}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 258
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 261
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastScanResult:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 262
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastScanResult:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 263
    .local v5, result:Landroid/net/wifi/ScanResult;
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "HS20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, key:Ljava/lang/String;
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3, v7}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getSecuredKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, printkey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    invoke-virtual {v7, v3}, Landroid/net/wifi/HS20ConnectableList;->get(Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;

    move-result-object v6

    .line 267
    .local v6, tempHs20:Landroid/net/wifi/Hs20ScanResult;
    if-eqz v6, :cond_0

    .line 268
    const-string v7, "Hs20Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AP added to UI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    new-instance v8, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    iget-object v9, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/Hs20ScanResult;)V

    invoke-virtual {v7, v3, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #printkey:Ljava/lang/String;
    .end local v6           #tempHs20:Landroid/net/wifi/Hs20ScanResult;
    :cond_1
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 274
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #result:Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 275
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/hs20/Hs20AccessPoint;>;"
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    .line 280
    .local v0, accessPoint:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    iget-object v7, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->bssid:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 281
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;)V

    goto :goto_2

    .line 282
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->hessid:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 283
    const-string v7, "Hs20Settings"

    const-string v8, "updateConnectableApList SSID with HESSID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;)V

    goto :goto_2

    .line 289
    .end local v0           #accessPoint:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    .line 291
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnectableHs:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v7, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 293
    .end local v0           #accessPoint:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mNoHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    .end local v1           #accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/hs20/Hs20AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_4
    return-void

    .line 295
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mNoHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 301
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 303
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 307
    const-string v3, "Hs20Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing order:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/hs20/Hs20AccessPoint;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    .line 310
    .local v0, accessPoint:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->bssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 312
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->hessid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 313
    const-string v3, "Hs20Settings"

    const-string v4, "updateConnectableApList SSID with HESSID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 318
    .end local v0           #accessPoint:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    .end local v1           #accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/hs20/Hs20AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 321
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->startScan()V

    .line 330
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0902d6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->finish()V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->stopScan()V

    goto :goto_0
.end method


# virtual methods
.method protected handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, action:Ljava/lang/String;
    const-string v2, "Hs20Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReceivedEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    const/16 v3, 0x138a

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->sendEmptyMessage(I)Z

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->updateWifiState(I)V

    goto :goto_0

    .line 236
    :cond_2
    const-string v2, "android.net.wifi.HS20_AP_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    .line 238
    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->updateConnectableApList()V

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "android.net.wifi.HS20_ANQP_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    const/16 v3, 0x138c

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 248
    :cond_4
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 251
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    const-string v0, "Hs20Settings"

    const-string v3, "onActivityCreated"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mContext:Landroid/content/Context;

    .line 100
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    new-instance v0, Lcom/android/settings/wifi/hs20/Hs20Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/hs20/Hs20Settings$2;-><init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_hotspot20_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->isAutoInterworking:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->isInDialog:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->isInDialog:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanStateListener:Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    new-instance v1, Lcom/android/settings/wifi/hs20/Hs20Settings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/hs20/Hs20Settings$3;-><init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V

    iput-object v1, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanListner:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;

    .line 127
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/hs20/Hs20Settings;->setHasOptionsMenu(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "Hs20Settings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->addPreferencesFromResource(I)V

    .line 80
    const-string v0, "connectable_hs"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnectableHs:Lcom/android/settings/ProgressCategory;

    .line 81
    const-string v0, "no_connectable_hs"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mNoHs:Landroid/preference/PreferenceGroup;

    .line 82
    const-string v0, "available_hs"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mAvailableHs:Landroid/preference/PreferenceGroup;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mAvailableHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mConnectableHs:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 87
    new-instance v0, Lcom/android/settings/wifi/hs20/Hs20Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/hs20/Hs20Settings$1;-><init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 151
    const-string v0, "Hs20Settings"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mOptionsMenu:Landroid/view/Menu;

    .line 153
    const/4 v0, 0x1

    const v1, 0x7f090173

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    const/4 v0, 0x2

    const v1, 0x7f090317

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 163
    const-string v1, "Hs20Settings"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->startScan()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "Hs20Settings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->stopScan()V

    .line 146
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 147
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 181
    check-cast p2, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    .end local p2
    iget-object v2, p2, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 182
    .local v2, selectedBssid:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "BSSID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/android/settings/wifi/hs20/Hs20Settings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/hs20/Hs20Settings$4;-><init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiManager;->connectHs20Ap(Landroid/os/Bundle;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 197
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 198
    .local v1, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Message;

    .end local v1           #msg:Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 199
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x29

    iput v3, v1, Landroid/os/Message;->what:I

    .line 200
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "enable"

    const-string v4, "WITHCRED_ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    const-string v3, "Hs20Settings"

    const-string v4, "HOTSPOT20 config store error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->finish()V

    .line 209
    return v6
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "Hs20Settings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getIntentFilters()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastScanResult:Ljava/util/List;

    .line 137
    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->updateConnectableApList()V

    .line 139
    return-void
.end method
