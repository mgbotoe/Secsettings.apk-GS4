.class Lcom/android/settings/DrivingModeSettings$1;
.super Ljava/lang/Object;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DrivingModeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrivingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DrivingModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settings/DrivingModeSettings$1;->this$0:Lcom/android/settings/DrivingModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings$1;->this$0:Lcom/android/settings/DrivingModeSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z
    invoke-static {v0, v1}, Lcom/android/settings/DrivingModeSettings;->access$002(Lcom/android/settings/DrivingModeSettings;Z)Z

    .line 215
    const/4 v0, 0x0

    return v0
.end method
