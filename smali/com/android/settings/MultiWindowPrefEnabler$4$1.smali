.class Lcom/android/settings/MultiWindowPrefEnabler$4$1;
.super Ljava/lang/Object;
.source "MultiWindowPrefEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowPrefEnabler$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MultiWindowPrefEnabler$4;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowPrefEnabler$4;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/MultiWindowPrefEnabler$4$1;->this$1:Lcom/android/settings/MultiWindowPrefEnabler$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler$4$1;->this$1:Lcom/android/settings/MultiWindowPrefEnabler$4;

    iget-object v0, v0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    #getter for: Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 146
    return-void
.end method
