.class Lcom/android/settings/AirViewPreferenceEnabler$4;
.super Ljava/lang/Object;
.source "AirViewPreferenceEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewPreferenceEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewPreferenceEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewPreferenceEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/AirViewPreferenceEnabler$4;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$4;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->updateSwitch()V

    .line 184
    return-void
.end method