.class Lcom/android/settings/dmr/DMREnabler$4;
.super Landroid/content/BroadcastReceiver;
.source "DMREnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dmr/DMREnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMREnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMREnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler$4;->this$0:Lcom/android/settings/dmr/DMREnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 426
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, action:Ljava/lang/String;
    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onReceive() with action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v1, "com.android.settings.dmr.started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler$4;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/16 v2, 0x3e9

    const/16 v3, 0x7d0

    #calls: Lcom/android/settings/dmr/DMREnabler;->handleServerStateChangedDelayed(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/dmr/DMREnabler;->access$200(Lcom/android/settings/dmr/DMREnabler;II)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string v1, "com.android.settings.dmr.stoped"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler$4;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/16 v2, 0x3ea

    #calls: Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings/dmr/DMREnabler;->access$000(Lcom/android/settings/dmr/DMREnabler;I)V

    goto :goto_0

    .line 432
    :cond_2
    const-string v1, "com.android.settings.dmr.starting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler$4;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/16 v2, 0x3eb

    #calls: Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings/dmr/DMREnabler;->access$000(Lcom/android/settings/dmr/DMREnabler;I)V

    goto :goto_0

    .line 434
    :cond_3
    const-string v1, "com.android.settings.dmr.stopping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler$4;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/16 v2, 0x3ec

    #calls: Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings/dmr/DMREnabler;->access$000(Lcom/android/settings/dmr/DMREnabler;I)V

    goto :goto_0
.end method
