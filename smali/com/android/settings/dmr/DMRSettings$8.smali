.class Lcom/android/settings/dmr/DMRSettings$8;
.super Landroid/os/Handler;
.source "DMRSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dmr/DMRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMRSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/android/settings/dmr/DMRSettings$8;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1794
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: handleMessage() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1808
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Undefined handler message :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :goto_0
    return-void

    .line 1799
    :pswitch_0
    const-string v1, "Settings"

    const-string v2, "DMR Setting: HANDLER_RESET_FUNCTION_STATE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const-string v1, "Settings"

    const-string v2, "DMR Setting: HANDLER_RESET_FUNCTION_STATE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: handleMessage EXCEPTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1804
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v1, "Settings"

    const-string v2, "DMR Setting: HANDLER_RESET_ACCESS_CONTROL_STATE 1 "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$8;->this$0:Lcom/android/settings/dmr/DMRSettings;

    #getter for: Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/dmr/DMRSettings;->access$400(Lcom/android/settings/dmr/DMRSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings$8;->this$0:Lcom/android/settings/dmr/DMRSettings;

    #getter for: Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/dmr/DMRSettings;->access$400(Lcom/android/settings/dmr/DMRSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1797
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
