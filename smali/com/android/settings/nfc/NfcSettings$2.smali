.class Lcom/android/settings/nfc/NfcSettings$2;
.super Landroid/database/ContentObserver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$2;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$2;->this$0:Lcom/android/settings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings$2;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #getter for: Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcSettings;->access$400(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->updatePreference(Landroid/preference/PreferenceScreen;)V

    .line 316
    return-void
.end method
