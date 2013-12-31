.class Lcom/android/settings/nfc/NfcEnabler$3;
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
    .line 526
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #calls: Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    invoke-static {v0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$800(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 531
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$900(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/android/settings/nfc/NfcEnabler;->access$1000(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 537
    :cond_0
    return-void
.end method
