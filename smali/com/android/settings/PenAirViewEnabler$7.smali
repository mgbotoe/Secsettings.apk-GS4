.class Lcom/android/settings/PenAirViewEnabler$7;
.super Ljava/lang/Object;
.source "PenAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewEnabler;->showAirViewDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler$7;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$7;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    .line 190
    return-void
.end method
