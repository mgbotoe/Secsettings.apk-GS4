.class Lcom/android/settings/wifi/AdvancedWifiSettings$8;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
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
    .line 1235
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/16 v6, 0x2d

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1238
    if-nez p1, :cond_1

    .line 1268
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1240
    .restart local p1
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 1241
    check-cast p1, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->WifiInternetServiceCheckBoxChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1242
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$900(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_internet_service_check_warning"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1244
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1000(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1245
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1247
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1248
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1250
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1251
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1252
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1200(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1253
    const-string v2, "AdvancedWifiSettings"

    const-string v3, "HOTSPOT20 config store error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1255
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .restart local p1
    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 1256
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1300(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1257
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1259
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1260
    .restart local v1       #msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1262
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1263
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1264
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1200(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1265
    const-string v2, "AdvancedWifiSettings"

    const-string v3, "HOTSPOT20 config store error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
