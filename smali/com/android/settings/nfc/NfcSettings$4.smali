.class Lcom/android/settings/nfc/NfcSettings$4;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$4;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$4;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$200(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 487
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$4;->this$0:Lcom/android/settings/nfc/NfcSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$202(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 489
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    .line 491
    return-void
.end method
