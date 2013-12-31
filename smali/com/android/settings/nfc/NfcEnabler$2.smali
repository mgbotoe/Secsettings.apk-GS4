.class Lcom/android/settings/nfc/NfcEnabler$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 512
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 516
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #calls: Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    invoke-static {v0, v3, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$800(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 518
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$900(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #calls: Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$1000(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 524
    :cond_0
    return-void
.end method
