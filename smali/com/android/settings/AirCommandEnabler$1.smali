.class Lcom/android/settings/AirCommandEnabler$1;
.super Landroid/database/ContentObserver;
.source "AirCommandEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirCommandEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCommandEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCommandEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler$1;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler$1;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 62
    return-void
.end method
