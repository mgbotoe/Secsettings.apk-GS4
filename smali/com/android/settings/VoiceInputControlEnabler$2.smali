.class Lcom/android/settings/VoiceInputControlEnabler$2;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VoiceInputControlEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler$2;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$2;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    #getter for: Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$2;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    #getter for: Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    return-void
.end method
