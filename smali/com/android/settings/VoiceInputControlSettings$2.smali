.class Lcom/android/settings/VoiceInputControlSettings$2;
.super Landroid/os/Handler;
.source "VoiceInputControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlSettings;
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
    .line 210
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I
    invoke-static {v0, v1}, Lcom/android/settings/VoiceInputControlSettings;->access$102(Lcom/android/settings/VoiceInputControlSettings;I)I

    .line 215
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    #calls: Lcom/android/settings/VoiceInputControlSettings;->showHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$200(Lcom/android/settings/VoiceInputControlSettings;)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    #getter for: Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$300(Lcom/android/settings/VoiceInputControlSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    #calls: Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$400(Lcom/android/settings/VoiceInputControlSettings;)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    #calls: Lcom/android/settings/VoiceInputControlSettings;->setTabletView()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$500(Lcom/android/settings/VoiceInputControlSettings;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
