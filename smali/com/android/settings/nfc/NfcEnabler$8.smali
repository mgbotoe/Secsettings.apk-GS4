.class Lcom/android/settings/nfc/NfcEnabler$8;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1038
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, isCenLocked:Z
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #calls: Lcom/android/settings/nfc/NfcEnabler;->getLockStateFromDevice()I
    invoke-static {v4}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)I

    move-result v1

    .line 1044
    .local v1, val:I
    if-nez v1, :cond_1

    move v0, v2

    .line 1046
    :goto_0
    const-string v4, "NfcEnabler"

    const-string v5, "get UIMLock status T.O. timer end "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[S]uimDetectAction ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1051
    if-eqz v0, :cond_2

    .line 1052
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1056
    :goto_1
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1058
    if-eqz v0, :cond_3

    .line 1059
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    const v3, 0x7f0902ca

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 1065
    :cond_0
    :goto_2
    const-string v2, "NfcEnabler"

    const-string v3, "[E]uimDetectAction"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void

    :cond_1
    move v0, v3

    .line 1044
    goto :goto_0

    .line 1054
    :cond_2
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1

    .line 1061
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$8;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    const v3, 0x7f0902cc

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2
.end method
