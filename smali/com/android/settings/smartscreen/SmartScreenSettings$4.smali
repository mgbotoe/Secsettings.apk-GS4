.class Lcom/android/settings/smartscreen/SmartScreenSettings$4;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$4;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$4;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$100(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    .line 461
    return-void
.end method
