.class Lcom/android/settings/MultiWindowEnabler$1;
.super Landroid/database/ContentObserver;
.source "MultiWindowEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiWindowEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$1;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$1;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->updateSwitch()V

    .line 41
    return-void
.end method
