.class Lcom/android/settings/MultiWindowPrefEnabler$3;
.super Ljava/lang/Object;
.source "MultiWindowPrefEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowPrefEnabler;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowPrefEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowPrefEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/MultiWindowPrefEnabler$3;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler$3;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    #getter for: Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    return-void
.end method
