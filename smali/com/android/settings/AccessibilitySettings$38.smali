.class Lcom/android/settings/AccessibilitySettings$38;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$checkShortcut:[Z


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2845
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$38;->this$0:Lcom/android/settings/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/AccessibilitySettings$38;->val$checkShortcut:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 2847
    if-nez p2, :cond_0

    .line 2848
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$38;->val$checkShortcut:[Z

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    .line 2850
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2848
    goto :goto_0
.end method
