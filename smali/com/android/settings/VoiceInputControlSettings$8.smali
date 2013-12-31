.class Lcom/android/settings/VoiceInputControlSettings$8;
.super Ljava/lang/Object;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$8;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$8;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    #getter for: Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$700(Lcom/android/settings/VoiceInputControlSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 791
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$8;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/VoiceInputControlSettings;->access$702(Lcom/android/settings/VoiceInputControlSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 792
    return-void
.end method
