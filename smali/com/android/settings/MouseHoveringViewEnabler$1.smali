.class Lcom/android/settings/MouseHoveringViewEnabler$1;
.super Landroid/database/ContentObserver;
.source "MouseHoveringViewEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MouseHoveringViewEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MouseHoveringViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MouseHoveringViewEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/MouseHoveringViewEnabler$1;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/MouseHoveringViewEnabler$1;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->updateSwitch()V

    .line 89
    return-void
.end method
