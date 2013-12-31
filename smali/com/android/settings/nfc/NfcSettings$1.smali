.class Lcom/android/settings/nfc/NfcSettings$1;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 126
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$200(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$200(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #setter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$202(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$300(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$300(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #setter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$302(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 149
    :cond_1
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "bOn"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "NfcSettings"

    const-string v1, "NfcAdapter.STATE_ON, createHelpStep2Dialog() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #calls: Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$000(Lcom/android/settings/nfc/NfcSettings;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    #calls: Lcom/android/settings/nfc/NfcSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)V

    goto :goto_0
.end method
