.class Lcom/android/settings/motion2013/AirMotionSettings$9;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1300(Lcom/android/settings/motion2013/AirMotionSettings;)V

    .line 552
    return-void
.end method
