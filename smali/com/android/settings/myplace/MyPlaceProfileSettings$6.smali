.class Lcom/android/settings/myplace/MyPlaceProfileSettings$6;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    .line 862
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 863
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    .line 865
    .local v4, selected:I
    const-string v5, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "click ok on Select method dialog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-nez v4, :cond_0

    .line 869
    const-string v5, "MyPlaceSettings"

    const-string v6, "wifi is clicked. start wifi network picker"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5, v2, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 904
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 875
    :cond_0
    if-ne v4, v8, :cond_3

    .line 876
    const-string v5, "MyPlaceSettings"

    const-string v6, "bt is clicked. start bt device picker"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 881
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 883
    .local v3, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_2

    .line 884
    :goto_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 885
    const-string v5, "MyPlaceSettings"

    const-string v6, "Bluetooth is in TURNING_OFF state. Wait for 300ms to TURN_OFF"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-wide/16 v5, 0x12c

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, ignored:Ljava/lang/InterruptedException;
    const-string v5, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterruptedException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 892
    .end local v1           #ignored:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 893
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 897
    .end local v3           #mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v6, 0x2

    invoke-virtual {v5, v2, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 900
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 901
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 902
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0
.end method
