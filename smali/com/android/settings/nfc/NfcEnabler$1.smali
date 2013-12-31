.class Lcom/android/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, action:Ljava/lang/String;
    sget-boolean v8, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v8, :cond_0

    .line 156
    const-string v8, "NfcEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const-string v8, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    iget-object v7, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const-string v8, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v7, v6}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;I)V

    .line 161
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v7, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v7}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v7

    #calls: Lcom/android/settings/nfc/NfcEnabler;->forceGrayOut(I)V
    invoke-static {v6, v7}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;I)V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    const-string v8, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 166
    iget-object v7, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const-string v8, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/android/settings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V
    invoke-static {v7, v6}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;I)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v8, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 169
    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v7, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v7}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v7

    #calls: Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v6, v7}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;I)V

    goto :goto_0

    .line 172
    :cond_4
    const-string v8, "android.intent.action.ACTION_EF_LOCK_STATE_GET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 174
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    iget-object v8, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 177
    iget-object v8, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->uimDetectAction:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/settings/nfc/NfcEnabler;->access$500(Lcom/android/settings/nfc/NfcEnabler;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "responseType"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 181
    .local v3, iresponsetype:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "efLockUser"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, ilockUser:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "efLockRemote"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, ilockremote:I
    const-string v8, "NfcEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_EF_LOCK_STATE_GET : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-nez v3, :cond_1

    .line 188
    iget-object v8, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v8}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, isCenLocked:Z
    iget-object v8, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #calls: Lcom/android/settings/nfc/NfcEnabler;->getLockStateFromDevice()I
    invoke-static {v8}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)I

    move-result v5

    .line 191
    .local v5, val:I
    if-nez v5, :cond_8

    move v4, v6

    .line 193
    :goto_1
    if-nez v4, :cond_6

    if-eq v1, v6, :cond_6

    if-ne v2, v6, :cond_9

    .line 194
    :cond_6
    iget-object v7, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v7}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 198
    :goto_2
    iget-object v7, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v7}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 200
    if-eqz v4, :cond_a

    if-eq v1, v6, :cond_7

    if-ne v2, v6, :cond_a

    .line 201
    :cond_7
    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v6

    const v7, 0x7f0902c9

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_8
    move v4, v7

    .line 191
    goto :goto_1

    .line 196
    :cond_9
    iget-object v8, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v8}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_2

    .line 202
    :cond_a
    if-eqz v4, :cond_c

    if-ne v1, v6, :cond_b

    if-eq v2, v6, :cond_c

    .line 203
    :cond_b
    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v6

    const v7, 0x7f0902ca

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 204
    :cond_c
    if-nez v4, :cond_e

    if-eq v1, v6, :cond_d

    if-ne v2, v6, :cond_e

    .line 205
    :cond_d
    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v6

    const v7, 0x7f0902cb

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 207
    :cond_e
    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v6

    const v7, 0x7f0902cc

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0
.end method
