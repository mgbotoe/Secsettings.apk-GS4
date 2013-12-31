.class Lcom/android/settings/nfc/NfcPaymentSettings$2;
.super Ljava/lang/Object;
.source "NfcPaymentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcPaymentSettings;->showWelcome(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcPaymentSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentSettings$2;->this$0:Lcom/android/settings/nfc/NfcPaymentSettings;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentSettings$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 252
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings$2;->this$0:Lcom/android/settings/nfc/NfcPaymentSettings;

    #getter for: Lcom/android/settings/nfc/NfcPaymentSettings;->dontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcPaymentSettings;->access$000(Lcom/android/settings/nfc/NfcPaymentSettings;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings$2;->val$context:Landroid/content/Context;

    const-string v3, "prefs_payment_mode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 254
    .local v1, myPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_WELCOME_AGAIN"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #myPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
