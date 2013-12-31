.class Lcom/android/settings/AccessibilitySettings$21;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2660
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$21;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2662
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 2663
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$21;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$1300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2664
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2665
    const/4 v0, 0x1

    .line 2667
    :cond_0
    return v0
.end method
