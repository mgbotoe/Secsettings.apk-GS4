.class Lcom/android/settings/nfc/SBeam$1;
.super Ljava/lang/Object;
.source "SBeam.java"

# interfaces
.implements Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SBeam;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeam;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #getter for: Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$200(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #getter for: Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #getter for: Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$200(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/SBeam;->access$202(Lcom/android/settings/nfc/SBeam;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 141
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0, v1}, Lcom/android/settings/nfc/SBeam;->access$002(Lcom/android/settings/nfc/SBeam;Z)Z

    .line 143
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #getter for: Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #calls: Lcom/android/settings/nfc/SBeam;->createHelpDialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$100(Lcom/android/settings/nfc/SBeam;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #getter for: Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$200(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0, v1}, Lcom/android/settings/nfc/SBeam;->access$002(Lcom/android/settings/nfc/SBeam;Z)Z

    goto :goto_0
.end method
