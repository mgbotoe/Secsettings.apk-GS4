.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 690
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 693
    const-string v6, "availableArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 695
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 697
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "erroredArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 699
    .local v4, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    #calls: Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v9, v6, v7, v8}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 743
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const-string v6, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 703
    const-string v6, "TetherSettings"

    const-string v7, "received pan state changed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #calls: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 705
    :cond_2
    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 706
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v6, v9}, Lcom/android/settings/TetherSettings;->access$1402(Lcom/android/settings/TetherSettings;Z)Z

    .line 707
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #calls: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 708
    :cond_3
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 709
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v6, v8}, Lcom/android/settings/TetherSettings;->access$1402(Lcom/android/settings/TetherSettings;Z)Z

    .line 710
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #calls: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 711
    :cond_4
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 712
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v7, "connected"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    #setter for: Lcom/android/settings/TetherSettings;->mUsbConnected:Z
    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->access$1502(Lcom/android/settings/TetherSettings;Z)Z

    .line 713
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #calls: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 714
    :cond_5
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 715
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1600(Lcom/android/settings/TetherSettings;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 716
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 736
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #calls: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 719
    :sswitch_0
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 720
    .local v3, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_7

    .line 721
    invoke-virtual {v3, v9}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 722
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6, v8}, Lcom/android/settings/TetherSettings;->access$1602(Lcom/android/settings/TetherSettings;Z)Z

    .line 724
    :cond_7
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v6}, Lcom/android/settings/TetherSettings;->checkBluetoothVisibility()V

    goto :goto_1

    .line 729
    .end local v3           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6, v8}, Lcom/android/settings/TetherSettings;->access$1602(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 737
    :cond_8
    const-string v6, "android.net.wifi.wifiap_tx_power_mode_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 738
    const-string v6, "android.net.wifi.wifiap_tx_power_mode_value"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 739
    .local v5, newTxPowerMode:I
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mTxPowerModeList:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mTxPowerModeList:Landroid/preference/ListPreference;
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/ListPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->mPrevTxPowerMode:I
    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->access$902(Lcom/android/settings/TetherSettings;I)I

    .line 741
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mTxPowerModeList:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 716
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
